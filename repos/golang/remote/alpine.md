## `golang:alpine`

```console
$ docker pull golang@sha256:cf6fca6641884b8433441b2b0652976f975e1d0fdd26d177eaaf8596087f3125
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

### `golang:alpine` - linux; amd64

```console
$ docker pull golang@sha256:f86f1a6701e3dcc445fec097a42f78b758f15950ccf032c2d3e54e2754d32fdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75169503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5083306c8be18c2fccb5e778e7bb7acf3511049ef287a000c674ca196bfe0b90`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:24:59 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:06 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 01 Sep 2026 23:25:06 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:06 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:06 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:09 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12b2df95d81e0646230784c610be014bf67567dfdbf5b3365c9ec022b95ff28`  
		Last Modified: Tue, 01 Sep 2026 23:25:23 GMT  
		Size: 245.1 KB (245069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1dbfdbb5d59bdeac07b1398a9f0808b453513bf6a76eb3ffd509a284483095`  
		Last Modified: Tue, 01 Sep 2026 23:25:25 GMT  
		Size: 71.1 MB (71077884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4488ab00a85e5a17f0636bbc60cc704c29bc934f9b48ab76cd17fc6424a2252`  
		Last Modified: Tue, 01 Sep 2026 23:25:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:aa542be10eb784c295fd2a6ff096938ed6c2fc3f72762636b76356c95af0f1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cedbff9697682899c22f1345981bcc619e272700eb86923a975b76f1e571da7`

```dockerfile
```

-	Layers:
	-	`sha256:0077145ea430b68fcd70f5f6a0dc26eea01c838fa5e86ebf588d66ec3cf7d4ba`  
		Last Modified: Tue, 01 Sep 2026 23:25:23 GMT  
		Size: 178.2 KB (178172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d74770804d4f3d481f4b973f87bfbdec73f0e8dcf5049c36465bf90ebda9994`  
		Last Modified: Tue, 01 Sep 2026 23:25:23 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:463fe241bed26c304b5bf6cf576254fa61d4ef42fbb076a6a66c15c31530a130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73393685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950588549da1e38ec1b30d7c6b275de0f54a0cf5e4105d114100d07120416184`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:26:08 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 01 Sep 2026 23:26:08 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:26:08 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:26:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:26:08 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:26:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:26:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08037eeb14cab567221ca135d0bfc084e53099e9cea94e51bb4346900c4c9994`  
		Last Modified: Tue, 01 Sep 2026 23:26:22 GMT  
		Size: 246.1 KB (246139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f7e99e312594e3ac977d577523ea809adb09d77bddf9f9cf7582dc6ad0661e`  
		Last Modified: Tue, 01 Sep 2026 23:26:24 GMT  
		Size: 69.6 MB (69593938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82816114a4dc46f34bbc7837489fe80472a1b1ea03752f11559bd382234c004`  
		Last Modified: Tue, 01 Sep 2026 23:26:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:ff84a7d84f3e27c4c73b7e85bfb2201dc554397a93ae645eb5394b0de00d3f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6604403564f054b8b1cc88a543a90161fb5a45eb71f2fe4f0bfde79b5d264144`

```dockerfile
```

-	Layers:
	-	`sha256:0d4ddc5e1e95ebad71f555c940567f886c276357891dfc48ba75b10dd6f5ca41`  
		Last Modified: Tue, 01 Sep 2026 23:26:22 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:040f401478589e75de03f45914e1a9fa6485a85a236e1badd2b558dcc27fcfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 MB (73099947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9bf19ee3699535a7fb2098f415f88cd53d237f63c9573333853327cf4339f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:00 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:09 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 01 Sep 2026 23:25:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:09 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:09 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4399a0fe16dacf840fadc9ce4c62d487b0199502e4ceb432b356b3cace28a470`  
		Last Modified: Tue, 01 Sep 2026 23:25:26 GMT  
		Size: 245.1 KB (245111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c87d6cd0bfacc76bdbce7c62a92cd8c0545cfe85ace1f630659004478cd2a0a`  
		Last Modified: Tue, 01 Sep 2026 23:25:28 GMT  
		Size: 69.6 MB (69594062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9baec53bd1ae7060fb0ae600f787d211c75bdfa7f12788bc5c3c5b17abb0ae`  
		Last Modified: Tue, 01 Sep 2026 23:25:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e1652da35f99fca43f713eab80bcf8e3de3780d6fa3e9eeb9a4ddf36b40e6436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cffd422c8a921ed75f63def6b405c2db573e37a70e51b13305903ec78c486ae0`

```dockerfile
```

-	Layers:
	-	`sha256:ed4d52ffe482b091e9fca3601937e52b35c098fd6205ae650aa02543bd860519`  
		Last Modified: Tue, 01 Sep 2026 23:25:26 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6e73f827cd936e7b43e1c15fb1f2c91d150d722bb3bd84b08c51b307704db65`  
		Last Modified: Tue, 01 Sep 2026 23:25:26 GMT  
		Size: 26.2 KB (26165 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:df4c4a0eeb85873e0122c6e2eb1b436f3131576f572505c1ea61954b00fa6460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.1 MB (72083568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2732b85d186c56b080a83eac36690850aecd2efb22c54f0d96fa33969aea089`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:25:17 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:25 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 01 Sep 2026 23:25:25 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:25 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:25 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d58b4aaf30ffd01b790483d1e9d2e288621e0b56bc3b43dfc9ca8b30c3256bb`  
		Last Modified: Tue, 01 Sep 2026 23:25:42 GMT  
		Size: 247.5 KB (247506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125215c6056cfe0a165d14de8a72a3546ec1167a4468ebcd93c0f403469ef15d`  
		Last Modified: Tue, 01 Sep 2026 23:25:44 GMT  
		Size: 67.7 MB (67652866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2ad27b9e6eeaee9bc05b206bf08e4b7aa383e8b308fbcd6c36646863a772de`  
		Last Modified: Tue, 01 Sep 2026 23:25:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:19056c3dba3ee3a79db370a59f005ded3f07b2d28dc6436c7dc6be21b6d2c9a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 KB (203835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3c8e78180de8ec3f0301ba4a1cd75587eb0d32f631adbf5d06c60e2939dfb5`

```dockerfile
```

-	Layers:
	-	`sha256:24b7b1acb8827aa5fe2eb8d48f05174b2dc75049c65a8c3790fe082581113b7f`  
		Last Modified: Tue, 01 Sep 2026 23:25:42 GMT  
		Size: 177.6 KB (177626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bbaa413b58a9307af2982dcd8f1c30200f389010330f99ff844d44eb41ece94`  
		Last Modified: Tue, 01 Sep 2026 23:25:42 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; 386

```console
$ docker pull golang@sha256:7f027588048b18725f6d33a5f3a55ce53a26aab7ecf6b7d7e78742f182d55734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73192246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e255462a5ae66f21104112cd74df4129281d6f7519f204aca472d87abec116f7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 23:27:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:57 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 01 Sep 2026 23:25:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:57 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:57 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:27:37 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:27:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dba80c93cf4ada4529b11e41a0040a91de94024217ec924894f97f56857c8d2`  
		Last Modified: Tue, 01 Sep 2026 23:27:44 GMT  
		Size: 245.6 KB (245592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f40cfba955b4fb208767a32cc904e9cf28a3e0e64e1ebc859bdfe4f763816dc`  
		Last Modified: Tue, 01 Sep 2026 23:26:33 GMT  
		Size: 69.3 MB (69276355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5deeaea527cf9bee8d64281a355fa77dfa47c46147af8eaac69597560f6c1eb5`  
		Last Modified: Tue, 01 Sep 2026 23:27:44 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:0569310dd05bc7b0b3edbfdc9b3c356cdc9ca1569ee6d79c78c423e7975ee7b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca2e71c49eef1ffedc88311a77dd634e341d9842a4644caf3db6ed42e6f68a7`

```dockerfile
```

-	Layers:
	-	`sha256:10a8c4f1acfefe5d2d3842f6e12203e78cabb5c1a457477ea545a7cb7190c37d`  
		Last Modified: Tue, 01 Sep 2026 23:27:43 GMT  
		Size: 178.1 KB (178111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e08f11d5a89636ec4cd6be849330825097ae9494b7aa21c4ef7b093b642b169`  
		Last Modified: Tue, 01 Sep 2026 23:27:43 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:f56ad2f1aa3cc565acfd197b5101cea0aec32e710333aa059509be6b58712baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72484980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cade4bf75c8dc2984342f71952bfa99c2a6cb2e966b3a24555695d1ba2cfd75`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 20:09:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 00:33:47 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 00:33:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 00:33:47 GMT
COPY /target/ / # buildkit
# Wed, 02 Sep 2026 00:35:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 02 Sep 2026 00:35:58 GMT
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
	-	`sha256:0dc1383ca9979dac83a00fd2d5a8ae62102a5d700d144342a55ab6b86117926e`  
		Last Modified: Wed, 02 Sep 2026 00:34:40 GMT  
		Size: 68.4 MB (68423497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fdf7df3adc25d81a9a9f35470af2e301b6d77b770c425f4dfb25a2abd11e9d`  
		Last Modified: Wed, 02 Sep 2026 00:36:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:8bd74f6aa2d4dbd1722bc6fef475ff21e9883d22761c4d7b7cd91a63b7f75d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92eef5d31d6bda3c534521ff056fbdf15093b12c954bf9e5bc33e0d192f5353a`

```dockerfile
```

-	Layers:
	-	`sha256:b099c5cbe436a900b0aa86d3d0cdbe3caab40efb8b4f948bd0e74e5ddd2d6f57`  
		Last Modified: Wed, 02 Sep 2026 00:36:11 GMT  
		Size: 177.6 KB (177595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6438beda41017d3c870097a174514cbe190fdf0b6d4c970e9a0b4a053c260a1`  
		Last Modified: Wed, 02 Sep 2026 00:36:11 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; riscv64

```console
$ docker pull golang@sha256:d11f31f238bcbdaa91635a0e43704f157aa8a6632420c8d74d1afc7c95968203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72942634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220e8efdfa3817e82e0da03d00f5418d1656260d6a354b028dcabf95ff5c5003`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOTOOLCHAIN=local
# Wed, 02 Sep 2026 15:04:05 GMT
ENV GOPATH=/go
# Wed, 02 Sep 2026 15:04:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 15:04:05 GMT
COPY /target/ / # buildkit
# Wed, 02 Sep 2026 15:12:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 02 Sep 2026 15:12:47 GMT
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
	-	`sha256:f2541a96ffc493ef95d3b2021cc7250f84890c317940ecfe928a57b9aa793d78`  
		Last Modified: Wed, 02 Sep 2026 15:10:47 GMT  
		Size: 69.1 MB (69122621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5fa07c4ed42d77cf6dcb2e4a0447d091592ca27148f59a68446fe1d67002765`  
		Last Modified: Wed, 02 Sep 2026 15:13:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:77ab2ad4d10333c6a471b9eb707c8c9dbf3270cfb3d3297c9101dbd299b30e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b381d996afb83eab1c8197daf5f3fd5d45020e1e88e2d613570afbad3b8087`

```dockerfile
```

-	Layers:
	-	`sha256:35875e9082bb03813b514fc77ec1ac2429b9683f17f056f349c626eaf42bcd1d`  
		Last Modified: Wed, 02 Sep 2026 15:13:55 GMT  
		Size: 177.6 KB (177591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42e26c4b2451c5fc97b9879d86c3af2c8b275dfd705c2318e6921e2116a2b5c5`  
		Last Modified: Wed, 02 Sep 2026 15:13:55 GMT  
		Size: 26.1 KB (26098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine` - linux; s390x

```console
$ docker pull golang@sha256:525bd163bd787b65b06bd02d8c5be001c614d54450f5b1e7155ac0c2f353d6b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74176520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ddaca114874eaf8935a2c6852bcd40b0f34bb310ec22034aa0af506685cd8e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:08:21 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 01 Sep 2026 23:25:28 GMT
ENV GOLANG_VERSION=1.27.1
# Tue, 01 Sep 2026 23:25:28 GMT
ENV GOTOOLCHAIN=local
# Tue, 01 Sep 2026 23:25:28 GMT
ENV GOPATH=/go
# Tue, 01 Sep 2026 23:25:28 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 23:25:28 GMT
COPY /target/ / # buildkit
# Tue, 01 Sep 2026 23:25:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 01 Sep 2026 23:25:30 GMT
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
	-	`sha256:0cdf782217446d8f5c55dd5fedfa6da1094820bbf610bbdd9bc0564db4e82fd9`  
		Last Modified: Tue, 01 Sep 2026 23:25:53 GMT  
		Size: 70.2 MB (70220888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1348096ddb7dbac32fa110f51174a1f9e43bfe18e85595cca064d7fa06c4d188`  
		Last Modified: Tue, 01 Sep 2026 23:25:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine` - unknown; unknown

```console
$ docker pull golang@sha256:e45206559096764b4b04700a06e0219082ef654a684906f4b13da0dde93e4dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 KB (204044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3967f4d4c9afe96044ace987f9a3d222332d38fa3903ccf2b5d6fd8ae9fdf817`

```dockerfile
```

-	Layers:
	-	`sha256:303c1583630fb128d0cc4b63c06df8bff18eb326ac33e1026659034183ecd091`  
		Last Modified: Tue, 01 Sep 2026 23:25:52 GMT  
		Size: 178.0 KB (178017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:023d3d8997c39306e17dae3ba8d1cebf054f368f18de2b3fef24e099aeea83dc`  
		Last Modified: Tue, 01 Sep 2026 23:25:52 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
