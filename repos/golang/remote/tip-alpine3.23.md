## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:40da7a7b0a3cbffcf4cf0bbfa6c7a0d097d4e8de15ed369a49b4389c9b87dbb6
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
$ docker pull golang@sha256:302d0a090e8f6767f38b7ca3f701cb01d3e5dcce6acf314c31f8ebe8a53a6fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109539400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce9f5b0ffe8d00354987075c1abf6055e2fdf5715aa3b1556f85aa99add9be6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:03:50 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:05:03 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:05:03 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:05:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:05:03 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:05:06 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:05:06 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7780c0648d11f6cfe7e3e6625d4df228ee57b875b969cbbb89b837e4cc7a492`  
		Last Modified: Thu, 08 Oct 2026 18:05:20 GMT  
		Size: 247.5 KB (247516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7967cc9640ee10ef87875b2c666f4fe51cac52eecb7aef3c36576d7f96ff876d`  
		Last Modified: Thu, 08 Oct 2026 18:05:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a7a66a4bf37ace2d23f8a9ed44200bceba1b83f3c6bb0517322780f78cff8c70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8f09d16a355368651447c1fa9637f24834ba8d0016d9549fde7e6a90fb55f8`

```dockerfile
```

-	Layers:
	-	`sha256:d7122ad6be42ac81349e3d4ff6f7fc54967aa214697c8c623615fa1f7dd0a3b0`  
		Last Modified: Thu, 08 Oct 2026 18:05:20 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e57d0e2b4f55bf1692f1a81c1ae0eb00328de5dff2063b854301c8f37a07a8b6`  
		Last Modified: Thu, 08 Oct 2026 18:05:20 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:f867c8f56d9e8c0201b91e82cc53970f592bcd253a093d48387ede6c96e28dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105375573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb04e08a451e0a8669d6a7f501b330eba1f87d04fc0702d57d0bf8024a5fae9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:01:13 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:03:01 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:03:01 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:03:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:03:01 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:03:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:03:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f88afc5038fd34e6e3b7408e0e1ae491b6bd37d607970b6e59bf03ad3b5c9c1`  
		Last Modified: Thu, 08 Oct 2026 18:03:17 GMT  
		Size: 248.5 KB (248465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4642b8b56bd46ed35dc6afe7265ebe8a37cfb0661ad32a5b87b86f8b11b4d9`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 101.6 MB (101572023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca46ffecfe8ce3413ec26407f9c239840241d419aeeb4fd89962c706abcd8f20`  
		Last Modified: Thu, 08 Oct 2026 18:03:17 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:661a99139ca11cf2b7290a61716699cee326f16d9a5fd91ebcdbfb67a8b3952c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8800ed2f744edfe4db26c19147b7f23be8f8ef310975b8e434f0dfe608097715`

```dockerfile
```

-	Layers:
	-	`sha256:a7b3a9ef0c4fec301cb41219729343d13bb28521b2954929426f23188f378d24`  
		Last Modified: Thu, 08 Oct 2026 18:03:17 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:73d806f16c3f482a24a33b2f63c4192a7a90ef02b1af71ec434b8c172046283d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104767983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccfe06a86aec87b6516284bd47769e2a2ef4a108ba1ad0288ba38b5b329dbbf`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:03:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:05:27 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:05:27 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:05:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:05:27 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:05:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:05:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a709f83ada63a778080f0b76b1c897f914a44d59c70b253f590f2df06556c5`  
		Last Modified: Thu, 08 Oct 2026 18:05:46 GMT  
		Size: 247.6 KB (247559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f468045c6aba8106c24a032638ee8766e46c30b06c0644a4a9df6ef1124cda`  
		Last Modified: Thu, 08 Oct 2026 18:05:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:381cee707a8f698607b9fc51e5c7ec4b6beb8563231677712006ab490044d5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b833ce27cc6f4cded2b2d1b0d3aad0506cc7a4eb578a76b854fbf06003f00b9`

```dockerfile
```

-	Layers:
	-	`sha256:61b2504c3c0bcbc94a3e9bd8118bd08b0ee650396e1a731762ef0ee1da29687d`  
		Last Modified: Thu, 08 Oct 2026 18:05:47 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8711d3642e4c9cbbabd23387adcf94c70b00f01f9675988a8e49786ba5d2747d`  
		Last Modified: Thu, 08 Oct 2026 18:05:47 GMT  
		Size: 24.6 KB (24580 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:456cb84c9bd3b0f9c126c3c0d1ac24bff65b4fde2c83cc938267883b393acbf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104181986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce305d5f460c15e6cd4850e573b7c78d23442a06cb66f52095bf88ddaceb01cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:05:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:06:46 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:06:46 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:06:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:06:46 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:06:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:06:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43699711635a672e477a29d8be4d82e937501e64d2c1e876fadb9822cae8fd3a`  
		Last Modified: Thu, 08 Oct 2026 18:07:05 GMT  
		Size: 249.8 KB (249843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e68a266e911e3414e62e24f343b146f5182a53b0ec7884a163eaf42cb8720c`  
		Last Modified: Thu, 08 Oct 2026 18:07:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d5391aea53d783c51376a392fca8cafd02f4b03490a2348769125dbf741baeaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3de393e4d8717b6e9196792925abbe96341a2c3845e51e01ac69341bd38465f`

```dockerfile
```

-	Layers:
	-	`sha256:aa7c3a3324bedaeb1c2f18066d75e0b6b464ade2f6780fdf9c7d1378bacda340`  
		Last Modified: Thu, 08 Oct 2026 18:07:05 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77b9873e8af394f4748847eb0e5f0c900139a21753859c1b801c59ce0ea6d468`  
		Last Modified: Thu, 08 Oct 2026 18:07:05 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:aaf9bf73fe96db212f56f72cbf964b7edc9005573531f78e41f35d85b91e583d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107105459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eb346488ea3d0e269af13d77bcf7eccfd95c08936397fb81c606e7755e248cd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 18:04:42 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:04:04 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:04:04 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:04:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:04:04 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:06:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:06:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37bd6d36bf64a853351b613f7ad445cf80649183d8d84966d59487e6701871b`  
		Last Modified: Thu, 08 Oct 2026 18:06:30 GMT  
		Size: 248.1 KB (248053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2d279745cb7a767edcdb3811969277bd09ea55d1fff29f356776690e219eb9`  
		Last Modified: Thu, 08 Oct 2026 18:06:30 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a17fa069e387fcf5504650fee32b095a1fef5ed2615e24ea0141caaaa8560205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f2e58acb6736102d68f489a0440720aaf64058b27554943f1a6656835980bc`

```dockerfile
```

-	Layers:
	-	`sha256:a7be598c48fb3106e965deb40a96b6419e8101a73a83b176d929fb6f34f9c343`  
		Last Modified: Thu, 08 Oct 2026 18:06:30 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9498c32085cf4ea7545854d29dfa98fa5070e7df680854aa59ae789f0b9abf74`  
		Last Modified: Thu, 08 Oct 2026 18:06:30 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:baa6556f6f73729a69284b592295e304cd30aeef9025bc19b9627bdd669d89d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106026902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52b160d7a8b0dd4f7d23c0a5b9ae627405781df7f476a152b6f030b73c0184d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:15 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:03:57 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:03:57 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:03:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:03:57 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:08:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:08:26 GMT
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
	-	`sha256:78a38b7e603d87210e83d472af3f9689d93ce5d229c01fadbc15ca279744bf2d`  
		Last Modified: Mon, 05 Oct 2026 22:51:44 GMT  
		Size: 102.0 MB (101961717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5baf45f0625686f21eddda4f62c9e4282d2a1d6d91b5130fb17c080c00f3ae`  
		Last Modified: Thu, 08 Oct 2026 18:08:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4ae30a35eb0103be878bfa5d59446e8e995de3583644c7e84c49d2c364f931c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41440794151fa58809cd191172a57b224543b097e45917d86a0aee1e381443a7`

```dockerfile
```

-	Layers:
	-	`sha256:a1461db6492b9b6474a2eefb1152fe7e3ee59ed1dbb8fbc22bc5d3ef3d60afed`  
		Last Modified: Thu, 08 Oct 2026 18:08:53 GMT  
		Size: 178.3 KB (178289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b536522c50fc136f7f0b0c679296bc3f90f584950399b6d6374a450a67eab0f8`  
		Last Modified: Thu, 08 Oct 2026 18:08:53 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:0ff1131630a4502f8e15bc1434beeb964ead154015bfb799ac5888ae85e265a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106200111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86dd1aaf3477816b1cd0ff732b041a5ca8260ea4872fa7fb888f80ea5a6e816`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 06 Oct 2026 01:33:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 06 Oct 2026 01:33:21 GMT
ENV GOPATH=/go
# Tue, 06 Oct 2026 01:33:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:33:21 GMT
COPY /target/ / # buildkit
# Tue, 06 Oct 2026 02:11:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 06 Oct 2026 02:11:50 GMT
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
	-	`sha256:d4e0ea0adf3388720ab6ca6cae55e8e0e08c82932811f55332637522351fd62d`  
		Last Modified: Tue, 06 Oct 2026 01:37:14 GMT  
		Size: 102.4 MB (102375676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8e2867c97bd7f081f9531aa971381bbf891f2865891e24e9c3c5d6506a63eb`  
		Last Modified: Tue, 06 Oct 2026 02:13:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:1d33ef6f995eb7dd972119877210671c1de705ca2e12e0a263a63e8b998e7c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deba631038a92a58a28d242c2490dfca86c3251b754852230e7eed0dbaaaabc3`

```dockerfile
```

-	Layers:
	-	`sha256:40865081c6421e8944bcf04fe6214922a800655327333daf28201e90123435a6`  
		Last Modified: Tue, 06 Oct 2026 02:13:21 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ef3bb06dbd990ea32dcc22794cdcab4f050812d39d142b01c6e2ce61bb443c`  
		Last Modified: Tue, 06 Oct 2026 02:13:21 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:2b57542d4372428f5bb67818bd85c7a6f3281d232a2b3d76fc92c30c18120a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107965337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027042c5d25963fd033f7d46ff551d814b3116584071930828bc88cc874d3bf2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:11:33 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 08 Oct 2026 18:06:46 GMT
ENV GOTOOLCHAIN=local
# Thu, 08 Oct 2026 18:06:46 GMT
ENV GOPATH=/go
# Thu, 08 Oct 2026 18:06:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 18:06:46 GMT
COPY /target/ / # buildkit
# Thu, 08 Oct 2026 18:06:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 08 Oct 2026 18:07:02 GMT
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
	-	`sha256:4224d60fdd825abdcc86346793af4d4ea3e1c06771a495a1aada2b7e57593ead`  
		Last Modified: Mon, 05 Oct 2026 21:36:55 GMT  
		Size: 104.0 MB (104003346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a0652516b125d478d8b2c9feca3212c5d80aa9990be693e1fcb280597457cf`  
		Last Modified: Thu, 08 Oct 2026 18:08:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b554b8ff2eee5a7b1292e5fe39ee13dce7e9dd811591bebc05ccf3e83c5cb570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010b6376ae71f516afe6918d1a908448eead2d7f6c49ea5ab41d4fae39b1c039`

```dockerfile
```

-	Layers:
	-	`sha256:ac12c308932c617410fda56d7f18f0c0b92315eae817a3ce40f8533820efc102`  
		Last Modified: Thu, 08 Oct 2026 18:08:25 GMT  
		Size: 179.0 KB (178997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:901e1605a56346ee8ddc48ef56179439a2a9feabcc26716daa9e2ac82c7fac43`  
		Last Modified: Thu, 08 Oct 2026 18:08:25 GMT  
		Size: 24.3 KB (24295 bytes)  
		MIME: application/vnd.in-toto+json
