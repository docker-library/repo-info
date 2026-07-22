## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:5cecbe0e73956a40368e8c66a2c7fb2262202ca3962e76aeeabe466838929b0f
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
$ docker pull golang@sha256:45e89ff3aaa680774796509f9abef2980146be2e1ec4ffb17afb3d35a241161f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.7 MB (106742961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8be50d3e9e1ab661f270ae9018977d0440ce671d852130b49ea30736b80ab4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:40 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:33:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:40 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:40 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77adf103111b41819b2331959fbd348f20175150a7247cc3ff8f23c3165fcfa7`  
		Last Modified: Mon, 20 Jul 2026 22:33:58 GMT  
		Size: 245.1 KB (245058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996313dc711ebc6dde48ca5a92f77465a96a6a3e81dc2e76b792d182d5ec5dfb`  
		Last Modified: Mon, 20 Jul 2026 22:33:43 GMT  
		Size: 102.7 MB (102653324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e766af22ffc199e8bf5351d2ea9b9c59d120e4d766260728b7947baf64875e2`  
		Last Modified: Mon, 20 Jul 2026 22:33:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:772336b1d6431e4f30b46f39a414eab3242982ebe34ae1829f330414028681cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54d62a13406656832477d07fd4aa1023d820865ad0fc53228d72d199595731e`

```dockerfile
```

-	Layers:
	-	`sha256:03db8d5f58a5917d14dbf74ae8fe543dcbebd637bd1771b2f759f5f3c846da32`  
		Last Modified: Mon, 20 Jul 2026 22:33:58 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4226628e58e1a43aca1a17396f33cc27dc2ff6bef50083de357d141ac224a77a`  
		Last Modified: Mon, 20 Jul 2026 22:33:57 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:fb50261e539c47fcd1075b10e1ae88dfa266c65c97099f964e5de4c83029d86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102497825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e45c028afd34f86a30f0e875e662912c7b4a971604d61a923b6f5150046cd605`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:30:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:34:04 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:04 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:04 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:34:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:34:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbd4e656445866130cc9e219612bf547e7488bda3172b6d2fcd50493fd62b48`  
		Last Modified: Mon, 20 Jul 2026 22:34:19 GMT  
		Size: 246.1 KB (246134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e68a1bf9bfd0675cb91025a525421a6b28342a296853e410a96dd84f1694c`  
		Last Modified: Mon, 20 Jul 2026 22:34:10 GMT  
		Size: 98.7 MB (98698937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd48a76bc7824e24395a6908b4808ebd41cd0e3eecc8a8f20ce4684fdd56b11`  
		Last Modified: Mon, 20 Jul 2026 22:34:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:8633a62f780e40a4fd6548feab750606f93968888d0b0f515506b701218cf3a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b862aec6bee0b06c06fec42814b5ac75d455ea52522367138a5955e4a9ab3323`

```dockerfile
```

-	Layers:
	-	`sha256:6fccbad80935e06f11740df717c46db68e520a4cc5cd2048fc720bec43c56661`  
		Last Modified: Mon, 20 Jul 2026 22:34:19 GMT  
		Size: 24.4 KB (24361 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:00b2576d7bbf929bf892e26bb0b9999e6121454d1fb8c1fdbd648640c22b9cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101898029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7a8fb6bf684757ffd96ec691fa46060a0ebcf500bc2ab7b1df2dfb79791dac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:34:42 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:37:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:37:48 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:37:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:37:48 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:37:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:37:51 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7f46aa95556dad38b2270221a8beaa3ad353a4fae3b887c5d0eccc027a73ec8`  
		Last Modified: Mon, 20 Jul 2026 22:38:06 GMT  
		Size: 245.1 KB (245138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3cf11081442ca41c8c94a12c322db133db9da472490dbb51ee2f88c175ca53`  
		Last Modified: Mon, 20 Jul 2026 22:35:58 GMT  
		Size: 98.4 MB (98390879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dcbd25483c4e3ee6fccd75312872f3674cb570defb80a6389f0f5ba3c61452`  
		Last Modified: Mon, 20 Jul 2026 22:38:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:98288a606cfca8b236b4a6683a286349b1fc61f83b8f8f8e72caa85b675152b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bcbd1e21f9141b31e595600571dfe80e9056105de020009554a016e143a5e31`

```dockerfile
```

-	Layers:
	-	`sha256:f998a1d9121ce4fe8a1d58d1312667eb66d184acaa88314606b24a2fde1ca836`  
		Last Modified: Mon, 20 Jul 2026 22:38:06 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:882131f3d3587a7dddf4c4e35597a4c42eb1344695748adff5e837a36a75c1ba`  
		Last Modified: Mon, 20 Jul 2026 22:38:06 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:4886e8d308b9a19b3c3487ec4507db9c2337e1310eda717be526de784e79f72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101300869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9910e100b50e45243d35740f16069400023daa91ac56e0058e195c2764adce`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:33:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:33:13 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:33:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:33:13 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:33:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:33:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d03e835c876044bc00aa9c81da57cc2ececdfddb435cde40137262ec1c00a0`  
		Last Modified: Mon, 20 Jul 2026 22:33:31 GMT  
		Size: 247.5 KB (247502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a531370fa7ce0b91717a7494de070627772fae8c89a31a138f623b83fb14c3f`  
		Last Modified: Mon, 20 Jul 2026 22:33:19 GMT  
		Size: 96.9 MB (96871349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aceef53b87d5aba99a1adb0e10c80381d28c4d2c5f9b7c92e43caf11153f1f2b`  
		Last Modified: Mon, 20 Jul 2026 22:33:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:ae839bfe49143669634ed2ef015286d3c278a7195c51d6d7109484cbab6571d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23dd0bb24a1123690c3107f3d8c67a4720467c6e398ad19c8d11989113e4538`

```dockerfile
```

-	Layers:
	-	`sha256:cb293cad51ef11d75a904ae4c83321717d6df1d4e6da3ba53a9eeb1a18216a72`  
		Last Modified: Mon, 20 Jul 2026 22:33:31 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f145140b2eb1ce8d75b44edd04acbf078228a4bd59a669c053658235fdd572dc`  
		Last Modified: Mon, 20 Jul 2026 22:33:31 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:32d5e436a3df2a1dc4192164c8705cd120fd17bc86ae56bddf9e60bedb857e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104363819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1cee12c3c828617b6ced0c0c0baa74558c6bc840ec4dbf653620d4d926ae659`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:34:23 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:23 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:23 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:23 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:34:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:34:25 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e2a704c79195d3085343282415ae8d24d917724347725a9c8c83a92738a897`  
		Last Modified: Mon, 20 Jul 2026 22:34:40 GMT  
		Size: 245.6 KB (245584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d0808d45d845a665453ee563edaf4321797e8bebbff828b9a8fe359d36560f`  
		Last Modified: Mon, 20 Jul 2026 22:34:16 GMT  
		Size: 100.5 MB (100450088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d191aee61f7cab3515fc3d6be002533e3900edfd46e4928d1b074f3b547c88f`  
		Last Modified: Mon, 20 Jul 2026 22:34:40 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:1234aae04c817348e60e9165e0b13302abfaa422535645513d3d0935f6b0d401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b395f2bc896bcb4e206abdb7c9575885535edcabea7dde0b79b5978eca5ce4f`

```dockerfile
```

-	Layers:
	-	`sha256:bb9516e649b08870c83053c51240198d9c63542e09cadc5f9d680e24824d9bc9`  
		Last Modified: Mon, 20 Jul 2026 22:34:40 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b87fe88d57922209baf454c9bfaceaca634f9fe61362c75511c499140a7169`  
		Last Modified: Mon, 20 Jul 2026 22:34:40 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:fca0a01617b620d2f03288efd061e798e503a022ac1c39e113471078a679ca6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103103608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820d0a3ead8c8fe5841e6f2e5e79260425606b075951765a0eadbdbf313a031e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:39:56 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:34:22 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:34:22 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:34:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:34:22 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:40:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:40:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4a3e8920bde90f33ea31195c17c785ddf25c07bd919d6ebd9a870087811e3e`  
		Last Modified: Mon, 20 Jul 2026 22:40:22 GMT  
		Size: 247.9 KB (247913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17a0421053a5709df860da09f4bd3b9d442169c5231e73c4aa0684c63bd57e9`  
		Last Modified: Mon, 20 Jul 2026 22:35:31 GMT  
		Size: 99.0 MB (99043239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835297c060edd5e202c4a82adcfdb75b4a9e056311f683b6b98f436439f79cc3`  
		Last Modified: Mon, 20 Jul 2026 22:40:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:c5812500df7a81acaf3bab85d6a8e4105649edaa4e732d49d3d19dff6dcc454b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 KB (199850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ebf52ccc3c69353271b417a09908a2e17e224a9ac6076dc3c908383f303e4c`

```dockerfile
```

-	Layers:
	-	`sha256:0fea076fa21296c75c957bfb7bdb6122d83590885f76f0c73ec50abbc394db16`  
		Last Modified: Mon, 20 Jul 2026 22:40:22 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3a700799d00f4124a64b6ebdf451a26d6a3497eb72b98e5716575b06930d8e5`  
		Last Modified: Mon, 20 Jul 2026 22:40:22 GMT  
		Size: 24.3 KB (24337 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:f7f9a8a90c59bcd22e1888ac891c922f9dc6fffa9523ba2db02f8562d22a8b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103819873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6095ef33251a2bea0f781d05b862e1585ba013b221a9516aff1d2dba651f66f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 21 Jul 2026 20:58:33 GMT
ENV GOTOOLCHAIN=local
# Tue, 21 Jul 2026 20:58:33 GMT
ENV GOPATH=/go
# Tue, 21 Jul 2026 20:58:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 20:58:33 GMT
COPY /target/ / # buildkit
# Tue, 21 Jul 2026 22:32:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 21 Jul 2026 22:32:59 GMT
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
	-	`sha256:be2e77c03a59e50a8d5710adc7e547a0252e30cba58dfcf9130f6c6880681239`  
		Last Modified: Tue, 21 Jul 2026 21:05:40 GMT  
		Size: 100.0 MB (100001008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3053e319d1b6eecfd1a969da698c95a93ce3737b60c44f2e414dc5519bad9818`  
		Last Modified: Tue, 21 Jul 2026 22:34:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:895bf43ecac439eb364c26b020b727085a958950db1902cec50acee454daad7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf1a93561cd1e95b8efa6c514b372c931d6b3161db594a9de07de1d89e6fc8d`

```dockerfile
```

-	Layers:
	-	`sha256:de6c09a82813ccdce4e1d7bbe129ff41efe67c912f50081d1660001506626385`  
		Last Modified: Tue, 21 Jul 2026 22:34:17 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3909f03ee73c246dabeceefb435678bf9cb529734bfa8b5d99aeea07a5e0ee16`  
		Last Modified: Tue, 21 Jul 2026 22:34:17 GMT  
		Size: 24.5 KB (24514 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:8bdb051fafd1114346ba4751cfb3281128c5cda302d1f924d2a4c00d65af678e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105070841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83577fbaf3b0a54ba4611765b9486de115fde0dad687ba69bfe93cdfc84e6b91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:35:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 20 Jul 2026 22:35:08 GMT
ENV GOTOOLCHAIN=local
# Mon, 20 Jul 2026 22:35:08 GMT
ENV GOPATH=/go
# Mon, 20 Jul 2026 22:35:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:35:08 GMT
COPY /target/ / # buildkit
# Mon, 20 Jul 2026 22:35:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 20 Jul 2026 22:35:14 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c6530cd00eb0b7c634305970175b857715e9f53987637960d592631c45edcf`  
		Last Modified: Mon, 20 Jul 2026 22:36:00 GMT  
		Size: 246.2 KB (246153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80917ab9f5dd2699aeeac6d177e78fe0f73c25e06b88f3586f9b3e010b46f3a`  
		Last Modified: Mon, 20 Jul 2026 22:36:03 GMT  
		Size: 101.1 MB (101117281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0673da4fff35e280b03ab4ca72c62d384fce3062ee1d1bdab8f44038f3b30e`  
		Last Modified: Mon, 20 Jul 2026 22:35:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:61a58f0a79050d115a0afa3fc4aa2bf789d55d631631d205a5530a8d6de941f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aeb5e975db2660e5e6213996c1e545573ff041db521a1358d170ab83fe9ca1`

```dockerfile
```

-	Layers:
	-	`sha256:a0a22f0029e3987763233b66bd1e2b82702a1dcece0747f7391700ab60776dc3`  
		Last Modified: Mon, 20 Jul 2026 22:36:00 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d839b9c6e707fbb19410356f0d93f3a5c6e03bf2c498248246fd0af386d4c7`  
		Last Modified: Mon, 20 Jul 2026 22:35:59 GMT  
		Size: 24.3 KB (24295 bytes)  
		MIME: application/vnd.in-toto+json
