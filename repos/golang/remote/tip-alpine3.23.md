## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:57b74071cfd8572dd19b6a64734201d184a2b12bdca5822792863a0142798531
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
$ docker pull golang@sha256:9e703ffcd02bfb555dd7c1c4745887bd1f43790c4bb087fe734e0d8827c61734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109539407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f91db5a5c61e9c4904d6d2fb48f4bf7161b34ab6c88ecdbcaff5f2507643347`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:37:40 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:37:40 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:37:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:37:40 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:37:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:37:43 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74cb7cc282cf6ae9faea61194172847db096356b02aa4685a774836533f1ab5`  
		Last Modified: Mon, 05 Oct 2026 21:37:57 GMT  
		Size: 247.5 KB (247522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aef570f6c400a5ab9e47632258880e95d4a2988a96cc4642ddfe60394775421`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 105.4 MB (105443220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198a61279c2584e79f6c985cdd393da1942469f7d2a8a7fa8bc64ee0f7ada2a4`  
		Last Modified: Mon, 05 Oct 2026 21:37:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:4ea2fcbeaf6da24e6da487f7192bf38bdcad0c58f43e694e9c04b61d90d444ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de45b5162070227dc9da48af027284c4bcad8701fa1038c5fe9dd48ff526987`

```dockerfile
```

-	Layers:
	-	`sha256:8127bbc9b8c726a753dd4a11a460903c208902b9be5fff2e70f830415fa88296`  
		Last Modified: Mon, 05 Oct 2026 21:37:57 GMT  
		Size: 178.9 KB (178900 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26f9bd07a6c28d15ce4f10ad827c1895e6390ae234e14e12d3b8f9e8c1af6037`  
		Last Modified: Mon, 05 Oct 2026 21:37:57 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:623ea2d96002bec718a512d64017d447b295a56d60a9a9c940566ead736dba2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105375572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7d72d58a8341281df091bebad4799fd63d76ca9e1cf2764d2357cc4e24738d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:32:10 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:33:55 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:33:55 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:33:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:33:55 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:33:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:33:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade0bc7ef287a5958bbd6cbf72849c77bbe368151eb19931033a002bf4d01bea`  
		Last Modified: Mon, 05 Oct 2026 21:34:12 GMT  
		Size: 248.5 KB (248465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4642b8b56bd46ed35dc6afe7265ebe8a37cfb0661ad32a5b87b86f8b11b4d9`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 101.6 MB (101572023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a5186841138f8850fcbd535092fd0659191c77ad11e3ae0f20354f390130b4`  
		Last Modified: Mon, 05 Oct 2026 21:34:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:67c91c032ab5f1a1185700c4c3bbb38a7d39749d49d4fa0a868364e1034aff64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a191425ea7986c5289e676cd6c1864a2d763a85780d6793ef2d1b9cf21cd54c`

```dockerfile
```

-	Layers:
	-	`sha256:a95f7828bb8b58a60c39955f03ec0646aeec3750a7ad429a728c8980c55e2ff0`  
		Last Modified: Mon, 05 Oct 2026 21:34:12 GMT  
		Size: 24.4 KB (24365 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:63f3653fd2a17910c49b4070ea56d0a5aafcedf62540c9d93514fa851dc6ad6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104767979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda2618c1c8cb75355d0b560f09c60cfa9dad97d2476fa1db1332af5fc3ee3b0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:56:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:56:16 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:56:16 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:56:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:56:16 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:58:31 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:58:31 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2b95462ea42c2357a2b77d6c7bbfd1a3f7116b2988eb1cf485e347bc363617`  
		Last Modified: Mon, 05 Oct 2026 21:58:37 GMT  
		Size: 247.6 KB (247555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515c1333ab75ca71603a5b7e1af77704bd20991eb69d5a691790833b0012028b`  
		Last Modified: Mon, 05 Oct 2026 21:56:37 GMT  
		Size: 101.3 MB (101257353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7f895e645406cadfd7c463092d8e21dff0f9c4090ebcaa1f550397d626bfa5`  
		Last Modified: Mon, 05 Oct 2026 21:58:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:dfcf4848be3276f78f84bd60ba99bfa5a9ee005886efb72de0880a87723dcbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1c6129b87eae055ba571060f7b552cd8d0f5821027713671a6c1128eefdeec`

```dockerfile
```

-	Layers:
	-	`sha256:09b6014f91c816c40089362964b2c37b312942804a185e1f6ee552048f89ed2d`  
		Last Modified: Mon, 05 Oct 2026 21:58:37 GMT  
		Size: 178.3 KB (178252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cae3d968396f1912931eba222325a03f53862688648dbc50e9bacff881db44f3`  
		Last Modified: Mon, 05 Oct 2026 21:58:37 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:8566e5e61672aa41858b2dc9de4045761c39d20ad79fb0029b0b33cbe8c1102b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104181996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4159967656bc67b32918b3d513f252f45940c86c8514a5d24bb4578ac9485f5a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:42:19 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:43:33 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:43:33 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:43:33 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:43:33 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:43:36 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:43:36 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e33aef88e87fed8ae377fb27d528ec682e0a092f9dd16700b91177dfc1b4594`  
		Last Modified: Mon, 05 Oct 2026 21:43:52 GMT  
		Size: 249.9 KB (249852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1197fd4c40c6856ef324b69c19b8599e9e15c840333cf3f9c4b76fe452d8781e`  
		Last Modified: Mon, 05 Oct 2026 21:43:48 GMT  
		Size: 99.7 MB (99745930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfba88edaf714aaff2249b4dd427f99158bb2a423f36dc3dc2768b8bfeaabca6`  
		Last Modified: Mon, 05 Oct 2026 21:43:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b880ee79d29d740f023af0ba6a0b68370612f0c25baa39a6fc35b7b147af0237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 KB (202883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0830e0e87fb5a266d48edacbf9072069495ff31078c7b5692d44fbfd50a25c55`

```dockerfile
```

-	Layers:
	-	`sha256:fe7a97eff1aa3044e43ebc9ffaec26530b26ae05e23353ea751d67c0f7535b15`  
		Last Modified: Mon, 05 Oct 2026 21:43:52 GMT  
		Size: 178.3 KB (178282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5a8d7cbb72eacd757dd294d7720e0ff109383dfd79225af34bd30e678e9ab4f`  
		Last Modified: Mon, 05 Oct 2026 21:43:51 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:4838424e75fdc64a6c7d0a217aa9c57632534381d1727595626bdc3aad26fde2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107105470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f11fb807859063607601764f1e1e35fa230df5ad46cd5f0eac080b91ac7017`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:52:26 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:51:48 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:51:48 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:51:48 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:51:48 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:54:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:54:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f745e4accbc2c4d3ef116a69f0ab2005628551fef3e649dbe0f78573496c8da8`  
		Last Modified: Mon, 05 Oct 2026 21:54:08 GMT  
		Size: 248.1 KB (248063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97df23ba1563255fea525e9b90d953a3fc91bbf096740e750085812721554aeb`  
		Last Modified: Mon, 05 Oct 2026 21:52:01 GMT  
		Size: 103.2 MB (103182138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c59ffa1c1d4cd5a3e5e5f97b6cd6474b73777c65875a427c4174cc3a0b5831`  
		Last Modified: Mon, 05 Oct 2026 21:54:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:06a781348f7fcd185d519d67d93c4f7bf493a5167aa0f3a242de994808301c65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.3 KB (203303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72063f0438c5bb0a09b2e68e16eee412677735cfac2f6b75f620561d6bd0ccb4`

```dockerfile
```

-	Layers:
	-	`sha256:5b38ce3a06e44580428ac6c92408b2a0c231274180190de4c4d822e6a4d2537e`  
		Last Modified: Mon, 05 Oct 2026 21:54:08 GMT  
		Size: 178.9 KB (178867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:178e439250081fdaa9ba2e5305666520a5851d705295d7c065152865250c1fc4`  
		Last Modified: Mon, 05 Oct 2026 21:54:08 GMT  
		Size: 24.4 KB (24436 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:f6ca8cdb57149a7379c551031bb07054e2f090f98c6080570ed7f0843c94bddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105777612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec17086a35021b9d1f4c2df413ebea3f9efb0fd196ffb17be500804260c9d2c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 29 Sep 2026 18:15:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 29 Sep 2026 18:10:06 GMT
ENV GOPATH=/go
# Tue, 29 Sep 2026 18:10:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 18:10:06 GMT
COPY /target/ / # buildkit
# Tue, 29 Sep 2026 18:16:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 29 Sep 2026 18:16:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0318952b0f6a3c4ea01d092638de09fd007228a140ac47a7b7d4c7c7818f0854`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 250.2 KB (250250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9dfcea9dbd54abdf4735c588b655a34ab5b353623c6254a20d02eaf7a19455`  
		Last Modified: Tue, 29 Sep 2026 18:12:17 GMT  
		Size: 101.7 MB (101712437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bde68cb0005bcb83d68c7d2b6422433f7adb2c740b878cf635316b13b6fb52`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:71ce1fd6524d5e020d0ef3968047d9cd89257e5a6b6fdba0f04104802e71d50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c3289cdaaa95f0314ce78951dcaff1ef3a75498242f25458a943d6582f7619`

```dockerfile
```

-	Layers:
	-	`sha256:ef08f2303990887e5cd3285fd5b3f30e91725ab11a7f399d9e1d81928e868a68`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 178.3 KB (178289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce6933e83839c1537b0c62afd135f8e3a3ad466ac02387cd4b67e9816907c153`  
		Last Modified: Tue, 29 Sep 2026 18:16:20 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:d09a1ffd7238916d8ad628c8144e26ce01b0bd02d353c5f58755aaa2186f7323
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106036092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d267e94e1689a6db6cd09792c5f150407725a4c7718f46bca41e9914dc41ac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 09:45:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOTOOLCHAIN=local
# Thu, 01 Oct 2026 19:33:40 GMT
ENV GOPATH=/go
# Thu, 01 Oct 2026 19:33:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:33:40 GMT
COPY /target/ / # buildkit
# Thu, 01 Oct 2026 20:52:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 01 Oct 2026 20:52:02 GMT
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
	-	`sha256:3f952667ce7d4fa0b42af84acc0ebd694f60fabe2a8c17c0b63b181ed368fef8`  
		Last Modified: Thu, 01 Oct 2026 19:41:07 GMT  
		Size: 102.2 MB (102211657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f8dbb7467b3147e1bd905cf4614acc463414f4d9c1f9ef06da0892517d8ece`  
		Last Modified: Thu, 01 Oct 2026 20:53:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:daabc5ed40a11c95bb7078e4c94023be8c9401b81b8d1d11255e323c799f7964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 KB (202800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6f1c3e44e727638f3bed5193f910a76cfc9e42564bc6abbeda19746ba1a5ef`

```dockerfile
```

-	Layers:
	-	`sha256:17e348a7f63b7b016d1d591fa71d4410212c702fc0cfd21856b629064cbef8fd`  
		Last Modified: Thu, 01 Oct 2026 20:53:35 GMT  
		Size: 178.3 KB (178285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0060c2aa1a297ce3a123f5fd77686c81999904c085d549a3fff3180d31ec3a4`  
		Last Modified: Thu, 01 Oct 2026 20:53:34 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:215ea4e330d0311a779eb46e278cf3aec8e4e6da53e85e0798e36b5338e9f8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (107965337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a84942ee433d88056484172dddaf754db38e96b5253c26e4a23538c73eb54d2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 05 Oct 2026 21:36:27 GMT
ENV GOTOOLCHAIN=local
# Mon, 05 Oct 2026 21:36:27 GMT
ENV GOPATH=/go
# Mon, 05 Oct 2026 21:36:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:36:27 GMT
COPY /target/ / # buildkit
# Mon, 05 Oct 2026 21:36:29 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 05 Oct 2026 21:36:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ed1086cb8f6ec0f418e561887e7f88fc0a22384d7c2a10fe9132c6378ef367`  
		Last Modified: Mon, 05 Oct 2026 21:36:53 GMT  
		Size: 248.6 KB (248579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4224d60fdd825abdcc86346793af4d4ea3e1c06771a495a1aada2b7e57593ead`  
		Last Modified: Mon, 05 Oct 2026 21:36:55 GMT  
		Size: 104.0 MB (104003346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6073dd7c41d0f952a2271dc7bf0b386692a536eba5382fdb085b1ce51a14389c`  
		Last Modified: Mon, 05 Oct 2026 21:36:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:51e2979480471d0efdb3191e835e8d0b7d8712a269a2d08bd3776e1fdc809a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3c03141bbc047351992b1587d4d6c3f34a8632ad4bf1fcf9aa0c92594d72c0`

```dockerfile
```

-	Layers:
	-	`sha256:cd35f72df8c38ba743b5458d6234d4b2513fd941207399c394abcccbf3f1cae3`  
		Last Modified: Mon, 05 Oct 2026 21:36:53 GMT  
		Size: 179.0 KB (178997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b864a2fb5b0a1f043ef14522e7ae783b040198fd74ac4be5fdd69a6cf8eb24`  
		Last Modified: Mon, 05 Oct 2026 21:36:53 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json
