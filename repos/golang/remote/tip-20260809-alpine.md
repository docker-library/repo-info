## `golang:tip-20260809-alpine`

```console
$ docker pull golang@sha256:2452da29a6cfaa33d149499d5c3ad93c1b5351561cbf370dd89fae82c5891ccf
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

### `golang:tip-20260809-alpine` - linux; amd64

```console
$ docker pull golang@sha256:6e6d545adf8924e324f00021f54b3d9ad0e1b8c2ee2328a0ebf0ec22aeae1b8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106214271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154043f1774d37b934cc5f435c9096215a4ff621d1268babb9b29d5586e312e4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:11:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 20:13:17 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:13:17 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:13:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:13:17 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:13:20 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:13:20 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c82c4a9748a2b26347f38733028b9860d3ce9aa02b0e078fe6cfdd7a84c7e3c`  
		Last Modified: Thu, 13 Aug 2026 20:13:35 GMT  
		Size: 245.1 KB (245063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ba79db5c7c8b5bee8dd5476917bcc23598ce562ecefd16aed54bc7ddb14e38`  
		Last Modified: Mon, 10 Aug 2026 23:32:52 GMT  
		Size: 102.1 MB (102122658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad062474219033315baa3a5ca5296466a29fb47a332afff20ae74e8c34eb6f4f`  
		Last Modified: Thu, 13 Aug 2026 20:13:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:af22e143fd4239b0952e75b36c1e9407183430c5a7455dd361e3d9836358317b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd3bdf849eda3885b4f56b76dac0ce8fb5e8d6eb42ecdcb087fc4a12fb7d6e5`

```dockerfile
```

-	Layers:
	-	`sha256:5a7752f1be31a7974f19ddb914aef02fc7411774ae266099104533e6f931a20e`  
		Last Modified: Thu, 13 Aug 2026 20:13:35 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9e0ee6c3f5d38f2711c11074397c773b7e7e4acbc622db7f28ce50df09714f7`  
		Last Modified: Thu, 13 Aug 2026 20:13:35 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:a8c13637d5d9471c8f79c536a26e94c1d1bed92dc3646d5520055665540e07bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102306036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98df2bccbac179ffff7f6bb94773a242b8ad0a5ba90c25f5e13a8b402af32054`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:22:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 20:25:53 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:25:53 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:25:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:25:53 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:25:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:25:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:201660d8f4f407fddcba08fc7dd63be31949246388a8f6ad0467afcc32e24972`  
		Last Modified: Thu, 13 Aug 2026 20:26:10 GMT  
		Size: 246.1 KB (246132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed754ac8186171f4c9b6fbc6d89139f97ac9f0613c1da4a3e8d2702bc3458652`  
		Last Modified: Mon, 10 Aug 2026 23:30:58 GMT  
		Size: 98.5 MB (98506297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2bfd974fbb9af289f400f6798db418723c2eb3a1c5c51f776d9e9eef23dfa72`  
		Last Modified: Thu, 13 Aug 2026 20:26:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:6b5375913b0c6588960de727ed7285818b37c7c16300ba5484e2089a2fc62bfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f171011f93a89e2a7fc6d9771c68ec31b86ec02a70df669a1ada1a57639310`

```dockerfile
```

-	Layers:
	-	`sha256:c3e84835a8722b6c5a02c4d268d2a3438cbc69af3d35bd3b40cc6e9f34f1f216`  
		Last Modified: Thu, 13 Aug 2026 20:26:09 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:b47c3b990855b1abf6add49387e6807e8a1eb9bfc53888cd509f9c09b8ce2d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101701678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad86e9aa8c8e034706b04a995ad22be8a414f6ab46bd8d9e0096f0f72a4a7b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:26:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 20:29:27 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:29:27 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:29:27 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:29:27 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:29:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:29:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060465dcc7cc7c610a20a7657b37826c64613760abf4a23f114cb09c56b26c7f`  
		Last Modified: Thu, 13 Aug 2026 20:29:46 GMT  
		Size: 245.1 KB (245122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fc34d5d8629d6029c50a31a63e1c2cb81b094a58e2d08a759a5cff36008918`  
		Last Modified: Mon, 10 Aug 2026 23:31:34 GMT  
		Size: 98.2 MB (98195783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73af799b831900c014ea194cf79433bd913d47cdc0910e63f802eda6f6c952df`  
		Last Modified: Thu, 13 Aug 2026 20:29:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d48aa021aa0d0f71fd1dc4cdcec5924dec5815bfd1b81c0e5324414fd4267c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a6e61a722e8cc7c4b40b882c9b74623fb19a25e3f2f4727cde0d267fe0913ed`

```dockerfile
```

-	Layers:
	-	`sha256:0181f337b81af2f742e8ff25e576257d7e72e12eed1cae549729c4ad17045972`  
		Last Modified: Thu, 13 Aug 2026 20:29:46 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd96990c6559c7e898de306ef509ddd984f0264fbc5c51edc96ce8ab81f728dd`  
		Last Modified: Thu, 13 Aug 2026 20:29:46 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:42bb248767647201e25e1830bd3e3edcc3a61ee24f19a9d7b47679757393230f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101054766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef39a4e79a18ab7dc145709865183b566f400d909fff888186ae040b15ce213b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:11:08 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 20:13:04 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:13:04 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:13:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:13:04 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:13:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:13:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f6d32fefcac79db7d1f51659a4e2e2554853f03bf4de2b703001cf3d4c76bc`  
		Last Modified: Thu, 13 Aug 2026 20:13:22 GMT  
		Size: 247.5 KB (247501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d818a4d1d5c30faebf580653ca52f803e6bfa975af792681a5892e0202fba`  
		Last Modified: Mon, 10 Aug 2026 23:31:08 GMT  
		Size: 96.6 MB (96624070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ba925c58f41c9c78aa2daf180e7f55842522324f365012aed3cea0ebc5176e`  
		Last Modified: Thu, 13 Aug 2026 20:13:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:c7d320a8351e30978b89f5cc65f718d160489ec8e1310102dc39c754fd2e2f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394d0be10352486ac50a4640a33038e9515715130f75babaf4016485c46051f`

```dockerfile
```

-	Layers:
	-	`sha256:c814b43f5d4c147f70c8987a562b69096a2bd95b562d9307f553b9312776d493`  
		Last Modified: Thu, 13 Aug 2026 20:13:23 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94672fb196185793412e48d503cd5669e6061c66bf05fac52b8f10f9394e2344`  
		Last Modified: Thu, 13 Aug 2026 20:13:22 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; 386

```console
$ docker pull golang@sha256:efe2854e62c0f5b8bd90c8bf1ba3a02cea0f63d62fc2124f3eb9f15da3bc7088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104178859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2528bbe182db4a63fa2b0ad2fb67f6ec7242e680e6c058cb4afe8503ec43b8d1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:33:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 20:11:53 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 20:11:53 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 20:11:53 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:11:53 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 20:14:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 20:14:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e423fa3ef7aae6aa303430b42dd576dbd2cdde666aa72de327d6cf9a0dae29`  
		Last Modified: Thu, 13 Aug 2026 19:33:50 GMT  
		Size: 245.6 KB (245595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3193c8848ea73ab15af846ebf6ea81cd7e12867309e713849b7d248d32dc3451`  
		Last Modified: Mon, 10 Aug 2026 23:29:39 GMT  
		Size: 100.3 MB (100262964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d010db75ea66f85aa81353811992db6b1603162c4892a3f1381d16fc2d14bd22`  
		Last Modified: Thu, 13 Aug 2026 20:14:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:4c36151c50acd49b43cb80c283c13cf39445eab8e1693b1f92979e123173aaac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da1b47ef10d96797e27337c42af15c7aa722082a6cb850c0159984c8a8f6581`

```dockerfile
```

-	Layers:
	-	`sha256:a0e44ecf46ca0102c5f8bc5ce997fe0cde433f974b09e3c8d517c8b6bad36b0f`  
		Last Modified: Thu, 13 Aug 2026 20:14:50 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0022d83281535f5ddc8184c9ea353bceaef04d3be790d3d8c6369a2ddb551bec`  
		Last Modified: Thu, 13 Aug 2026 20:14:50 GMT  
		Size: 25.1 KB (25055 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:49dfc818f2fc0661f173a503be2efa712bfde57c994d3ea8abdc6114619dc889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102877751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e9dc2ec536869ac388c01c35530478168b3c8ad455f8c9476a79c002f43969`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:01:30 GMT
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
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b473c25e2fc3a2c6e3a6db0e87ddd7f731e62e38bf48ce30e73e3daaf294b6`  
		Last Modified: Wed, 05 Aug 2026 16:01:50 GMT  
		Size: 247.9 KB (247921 bytes)  
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

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:0516490ceebd9f4d3377be428b0921ef15f0d22422cc0d80904ff9e4c9732a61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98c106441c750ded024146f05648d81fea88fc5c9e94403db3ce7caeba4d357`

```dockerfile
```

-	Layers:
	-	`sha256:3684be47f86a7f06bf6f75a6008c48a67192992dd6c46183b1837f6a5c762799`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faba34230ea2ac038a8e0cb890d44ceb536fb351c1d92ded48cca940b61049be`  
		Last Modified: Thu, 13 Aug 2026 22:36:02 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:51baf1b4c761efafb83c8ab122687f67d13cbb0bf83dea8ede773f29a0799635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103524021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ad8bd28ac19f38d58a6e3cb10dba494c4db657e73859f909177a96b4e85cac`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOPATH=/go
# Tue, 11 Aug 2026 02:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 02:53:31 GMT
COPY /target/ / # buildkit
# Mon, 17 Aug 2026 03:18:51 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 17 Aug 2026 03:18:52 GMT
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
	-	`sha256:816adc9907e95ba61a538b68e3405fd060c36e77845839e12392cd93ab7a3a04`  
		Last Modified: Tue, 11 Aug 2026 02:57:01 GMT  
		Size: 99.7 MB (99704008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5729562aea3187f88d5747c50f46b82bc848f346b1d2f955dc1c5d93e55155da`  
		Last Modified: Mon, 17 Aug 2026 03:20:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:333d6f5a25569eeae2a35b86f32171b7e20fb0eb3aef0177168ba6484896fd9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1363a172690345c553c435b473b29c3d0e06e17cf5bfe40ef0e2e45fe25fe625`

```dockerfile
```

-	Layers:
	-	`sha256:f358649724bd3c4d7f10e8a20ff882d1e480ca3b908a3be035a89afe24ef9835`  
		Last Modified: Mon, 17 Aug 2026 03:20:11 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6b7a6d51f516c36f9d99055cd6d0d912775c4cc6394466e72d8638c785ee164`  
		Last Modified: Mon, 17 Aug 2026 03:20:11 GMT  
		Size: 25.2 KB (25152 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; s390x

```console
$ docker pull golang@sha256:c57dce15f824b7f961014604c6049a1d770efc75a368262af2ab561364bff688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104841058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38d4ba45f453c945264517ca6a5709a951f59ca558f98a90c40996dafc6b6a1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:30:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:30:13 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:30:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:30:13 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 21:11:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 21:11:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289b5e867dee8258d2bc7ee83bccbf1005763af2a8e03ba1284bdfe16b0745c2`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2585e6fc3b735d1a705331aed1b18733b87573ef16def0f8645f8bc7b7f32dfb`  
		Last Modified: Mon, 10 Aug 2026 23:29:58 GMT  
		Size: 100.9 MB (100885433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9968e95120f143c4a5ae20c65021fa38e5f450f7f4c34cd761075c766238ed76`  
		Last Modified: Thu, 13 Aug 2026 21:13:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:a3368bf68d2490e8101d800cdbda6df2efa8439fa991e52b06edd3a10462be99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa958338ae95bfe98e916a85f493ac0ea09745e390f9fa3e884d1408bbf4083`

```dockerfile
```

-	Layers:
	-	`sha256:6b51dc85d981bee5b0ecac043d605fb94ce21b06a399c67c72a903749768f41c`  
		Last Modified: Thu, 13 Aug 2026 21:13:25 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa2d3c2e49b75364657657d2f5e710a660ac813840ee46a76892f30034647bd6`  
		Last Modified: Thu, 13 Aug 2026 21:13:25 GMT  
		Size: 24.9 KB (24925 bytes)  
		MIME: application/vnd.in-toto+json
