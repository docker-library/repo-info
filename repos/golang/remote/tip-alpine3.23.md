## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:e32606cb3e8e3d4df210c6211c70ffb97803cd888b0a16d746dceff7156b7d52
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
$ docker pull golang@sha256:ad903a93897eb46fd4e8afcc5cd879154052b1a50ffc3cf35134e494a8966e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106278935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71ce05fb1703d2ea15f1a8aa22aa8f45c24a39e44d76a9caf6ef71a21992355`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:11:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:13:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:13:09 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:13:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:13:09 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:13:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:13:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e651a3bc5886b7fe29d0c735f045a248abe5a4f2afacd0558c8d2182419a25c9`  
		Last Modified: Wed, 19 Aug 2026 20:13:25 GMT  
		Size: 245.0 KB (245047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25795916e3f0823f7f425ddbce5136149b572573409571cd84db953547a539ee`  
		Last Modified: Wed, 19 Aug 2026 20:13:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:38a3909fe7a6682db3bc5b7c70401c2c59625ea1c42d1efa6b85de41181693ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae3dc4bf7398e13e28e8492e098ffe71eae7857bfe115c225a846cc05b43b01`

```dockerfile
```

-	Layers:
	-	`sha256:79900e3c01c50d405e157730118528dca7a014d6c4c1d1decef0fd19ee404d63`  
		Last Modified: Wed, 19 Aug 2026 20:13:25 GMT  
		Size: 176.1 KB (176126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf31532d87f7f5efb434f18f18136c105214aee9648bd48edfe58d2343cfc138`  
		Last Modified: Wed, 19 Aug 2026 20:13:25 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:8f34a500a0b9cc1d62ababede19bb0f546fcaf1c113cfb063018f6f91e3ccc13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102367185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db674dd618e9b8f591a3bb1f6ccbc572200824a26bddee20a90d1d0ae352006`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:13:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:15:56 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:15:56 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:15:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:15:56 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:15:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:15:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f712c04a53e75e85231fa9ac29caf51b6d0224715591b8a32165f8b0101b670a`  
		Last Modified: Wed, 19 Aug 2026 20:16:11 GMT  
		Size: 246.1 KB (246147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcc62bfbeb36462a50ce5b709d5263ccf49472a53306f8874fd2293a9404bc8`  
		Last Modified: Wed, 19 Aug 2026 00:13:51 GMT  
		Size: 98.6 MB (98568285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31cdedb6fc7df073b79d44a98214d00596692e737ff6cc3d07eb5223b7e92b0`  
		Last Modified: Wed, 19 Aug 2026 20:16:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:29e68935e2975ac3f198f93dddc5bd1fdfca6e072d7a27056e02e02131d6799b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed66768eb008c04192fad5264644581eae3e3cf05282dc8a77ccbcf00deabef`

```dockerfile
```

-	Layers:
	-	`sha256:d36f45eb62cbc2f180e3db2ccbe87b433827f254db0fa31708e3748f68c039f9`  
		Last Modified: Wed, 19 Aug 2026 20:16:11 GMT  
		Size: 24.4 KB (24362 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:a1e52ee517e7358b094fa1587732ee2f64f2dcbc14098608dec4a2e3ec69c17f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101755059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e17b1b7683b5fece22f55a2fdf3cef0f4cbc3e2c4017bf8af93f7b0b89883c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:13:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:16:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:16:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:16:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:16:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:16:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:16:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67af62e80bc1bf251f3fea0dfe17b014780c64ae6915781e6181b5bd0a5be5d3`  
		Last Modified: Wed, 19 Aug 2026 20:16:20 GMT  
		Size: 245.1 KB (245139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f5ae658b4c15e07baf2436341a9090b34358ee36e89228ba4417a4a0820ecc`  
		Last Modified: Wed, 19 Aug 2026 20:16:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:9b5ebd4bf0d7f984de3549a4b0350af2cc01e4936dba58d0788f22edf67efc30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5cc42adda62346cbbdc45bfdf191d913d58b6caeb09313a9d8e04dc84bfff2`

```dockerfile
```

-	Layers:
	-	`sha256:31219fdfa91c8588d1b01832b4cff6daf6319401d484145233e1709d1e9cb211`  
		Last Modified: Wed, 19 Aug 2026 20:16:20 GMT  
		Size: 175.5 KB (175480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1811ee0dc6fe833dc18d742840aebf9c9a704a58d1072ef2f76fdb112a810a21`  
		Last Modified: Wed, 19 Aug 2026 20:16:20 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:703fb2d9de6fbbd97f764f1dea45620fc68811d37436484b15ffdaed64538b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101117016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5e711607d5c704d74c88f24654f2125439dda65769730651ee6305447fc984`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:11:22 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:12:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:54 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:54 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:57 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb58fc9982b7e38061e49d953bd02a67191c25a426949089ba06231066ada8ac`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 247.5 KB (247496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96afea0a33f6f2cf640623579e6a7916f5a2f097d442a767c97d1501748c1c8c`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:f4d1b0bf36aa61e25aa2f0c9cefda1eeb31af3220085202bb93a70dbfe749282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 KB (200109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482ab5bb8cad97fda5b81c3b1f5e813b95522e1769d5a082d510a25114b80335`

```dockerfile
```

-	Layers:
	-	`sha256:f262e6cf827729b598ef69646805df26a6e1e9244ac6ebe86739df809ba3f0cd`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 175.5 KB (175508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96d0bee49080eea6753c6bd6ebfbd38d8df18cb75c82fa3076c23d12728461ed`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:86fba1af89621ad83eb693804dbb01a6f3624168e6227c19833d742ccca3b06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104247163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649efcc79f7a844a8e19a4311da97b3f4c99099c1056f35f25e30e38a81f32c9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:12:15 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:14:07 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:14:07 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:14:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:14:07 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:14:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:14:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676b111b0c7f1c1749f940af88254018bfaf815a450cae17d169d5edfb548aa4`  
		Last Modified: Wed, 19 Aug 2026 20:14:25 GMT  
		Size: 245.6 KB (245584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5bd92986b66b046e754ab12d3da6745a6aba68a498699c09cc9f6ba1773141`  
		Last Modified: Wed, 19 Aug 2026 20:14:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:01f2de471c6b202d61f72ec64f0ec58883a4745910b13eaa583955d543734992
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 KB (200530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd7e8fb5344d63534b4995a2f921015abc86d4c64a8715896e63c1798a0df45`

```dockerfile
```

-	Layers:
	-	`sha256:ac4803ba717866f1710f08c2cefaad0dcc1b5a561e851c9bdc26fb7820105254`  
		Last Modified: Wed, 19 Aug 2026 20:14:25 GMT  
		Size: 176.1 KB (176095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b4ab11cb5341eb9324414d687dac8ea8520005c2c54dec3c07a29daa58af9d`  
		Last Modified: Wed, 19 Aug 2026 20:14:25 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:e9238dada0f22b5132b17ba095b7ea9c3adfdb2c86d2f5a345a55758b5a6ca21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102876644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca402c9e2b5932f3365ca83d350c2bf409e729592ba00e0acd533027ab4ddf2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:02:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:42:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:42:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:42:31 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:42:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:42:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3fdebc3880a6ca4e4240e4a44735908e5c9b29d5f1a04a87c1a5871366741a`  
		Last Modified: Wed, 05 Aug 2026 16:03:09 GMT  
		Size: 247.9 KB (247915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d95ff9656836b4d4f9ed4e91f0626382d9c4c4ab41dde220889f5b92f87744`  
		Last Modified: Mon, 10 Aug 2026 23:43:24 GMT  
		Size: 98.8 MB (98816272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75338da31ac7324fcd0e828455976c5a1aeeb973843e17ed1b3e9397ba302170`  
		Last Modified: Mon, 10 Aug 2026 23:43:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:09377616ff181d3e7595ce9ab6b4b8175221c2a5de8df51c57ff82a3fd73a804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43756bdba00242bd94f0cc83ae79a47feddf72b38866be5319957b1afb70bf43`

```dockerfile
```

-	Layers:
	-	`sha256:09f39a295475cca51c072dfe62c77ca3fa99f303f36b607788037748807de0f4`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 175.5 KB (175513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27da214d3fcd4a9e14174b5c887afa824f8e94537181814dda414b18b45ed780`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 24.5 KB (24509 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:ffc71513d476e19daa76343f32b42e02269a6fa194ee16bce9b3f9259c2088de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103601739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58c1ea43a8d8a802b7ab919c9bc696f09038bae0230176cc87eef98c4c406bf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 01:38:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 01:38:45 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 02:55:26 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 02:55:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763e37d0b14f752701961821911203ad5187201b24aff2865f93072c9c427a4c`  
		Last Modified: Sun, 16 Aug 2026 13:08:36 GMT  
		Size: 245.5 KB (245482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b66ced02a080459655fe9028bf92837cf230d038730ed43c848544aa262c9c3`  
		Last Modified: Wed, 19 Aug 2026 01:46:04 GMT  
		Size: 99.8 MB (99782858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8040fac80ba8cade6d19fa3ec396dee7829e4440540b7d398c0504279f0c30c0`  
		Last Modified: Wed, 19 Aug 2026 02:56:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4184d7284bbbb2e2c88454d97bdf56234fdffe2206440a9f2973c304e250251c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 KB (200020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd5ae5e5ed2fa9c1c38d7f3dea28a2e17b0b2e80fcd84c618bf5a182976e8ee`

```dockerfile
```

-	Layers:
	-	`sha256:b7b9db4e9b7fa4370795403af18ec57e7ddf4c774d2a1dfdade4518c5121bd82`  
		Last Modified: Wed, 19 Aug 2026 02:56:43 GMT  
		Size: 175.5 KB (175509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dfc56d5b6d38fa5ad552cda95dc28ed864fe9346ddfe7e9bf1b2fcfc1bfc015`  
		Last Modified: Wed, 19 Aug 2026 02:56:43 GMT  
		Size: 24.5 KB (24511 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:cc2c6996d9c253aa9f58558bf677f0a744d9ce34fa71f26f050eb85a70b1386a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104901628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bade2a3cf78cd879f6c9a37f87ce95bb22afaa260f0507f4c33086278f8c84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:11:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:11:35 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:11:35 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:11:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:11:35 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:13:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:13:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5feef4e6deedd4d81862e300d17b75409003b1cb19297a56e7a3237cda2c8329`  
		Last Modified: Wed, 19 Aug 2026 20:13:49 GMT  
		Size: 246.2 KB (246153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e711788918c346e1a3f433c8b9817ec45f0192b16aeb86ddced82c503184f525`  
		Last Modified: Wed, 19 Aug 2026 00:13:13 GMT  
		Size: 100.9 MB (100948068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dac0cac96606d04737fd55181787f4188624eef264ec891aa0b0411b1cda3fd`  
		Last Modified: Wed, 19 Aug 2026 20:13:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:af8ede95466c79c2a72137fefbbf9b252493a6b9b5a7de6539b3ef98f65f874a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b03fe44d92c3594cb5b56cfdd4c55942ac84342b0450c72148336ffe995ffc4`

```dockerfile
```

-	Layers:
	-	`sha256:c842e22f4bf9b7c97dca12b64d54ccf14c4b35dd9fa1ec50893de2b0eb535c8b`  
		Last Modified: Wed, 19 Aug 2026 20:13:49 GMT  
		Size: 176.2 KB (176223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ded866edb4650faf5b37773a44704911854eb767e2144270601b9b15b94cd73`  
		Last Modified: Wed, 19 Aug 2026 20:13:49 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
