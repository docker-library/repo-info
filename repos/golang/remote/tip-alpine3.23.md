## `golang:tip-alpine3.23`

```console
$ docker pull golang@sha256:b18bc3dbba80e3835da79b586368cc409ebe551c43dec8fff1ba6666341fd6eb
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
$ docker pull golang@sha256:6402b122c242c3304b7f92bcf28ac43350a347a524f97dd063641ad62f0e5ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108486495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2017b6c8371f17346f3dae04019a68fe0a5378cd78d27772832027a0d687bc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:42 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:56:57 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:56:57 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:56:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:57 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:00 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:00 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ecdb34de4c4fd4dea57f35137373aa7812c4709cdf28b10a69a100498499e`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 244.5 KB (244452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd35beab66f9320765c5f7a2a506372f5a6410782483671acaa1e1af5f461ae7`  
		Last Modified: Tue, 03 Nov 2026 00:57:17 GMT  
		Size: 104.4 MB (104389658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7270331e0f6129a908242fbf506601976a40dc69fe5edecb3c556149f62cd169`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:46bc7517afc35d21fe0bff9d88a636c1bf120ff84a7f0ddfcdb962210c42717b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa3ba86d9830f0c752b8bf2dcece24f6b89e70e5ffde4e152045843cb107fb9`

```dockerfile
```

-	Layers:
	-	`sha256:d59c581b0dbc1553a6c686ad8e7f545240f437a865c58aa5d1135f1444afcab1`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 177.0 KB (176963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61ec3e9cfe2f3981dc4544b29e57c686ee1bb918b5c98420fbc36efd3b497dcf`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:d304819e41fc6723d6de638aa8b5d2fd36e7feefadb6e8424e18ab88b5480c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.5 MB (104488396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c84221e03eb0496cf6a3b848eb0d3d4422aae75d51519b65f0ee9744751ff65`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:27 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:57:10 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:10 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:10 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a5ecf55a6b42aca3f9ca996a2c0754751b80cefc578869a9ea992730dd800c`  
		Last Modified: Tue, 03 Nov 2026 00:57:25 GMT  
		Size: 245.6 KB (245578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a67d7d26eb7e5961f4eb4a8108dd7d456201e3f1d89c50cf33abb4ff901e22`  
		Last Modified: Tue, 03 Nov 2026 00:57:25 GMT  
		Size: 100.7 MB (100684473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b523139a4c902b5e887e5fa879e2192e9dbf1d2e7e4301c67e20bfeb0dde2aeb`  
		Last Modified: Tue, 03 Nov 2026 00:57:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:2b800a187d8fcc61f2556dab1ed8c7c56c264befa125ca7b45a4e046c0b48d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 KB (24366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac8b58e5661a83cf13c1d635f5de64ec707147a6e24517c2503b3636f64ceb5`

```dockerfile
```

-	Layers:
	-	`sha256:a656f6c853add05ab47521d63c1bdb135a0f18ff0387f83a95d15faa06ce7f67`  
		Last Modified: Tue, 03 Nov 2026 00:57:25 GMT  
		Size: 24.4 KB (24366 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:a0ac148034a87c81fc2d76cf880acafd43fbc9cf8ccabc5cc1ecfaf16a8dfffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103867905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ababde3545e5e50f2926e66045b7002feaeaa80442eadafa202b1f78864398e6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:57:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:22 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:22 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:25 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:26 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da30f5b2fc5b9da87d71e6c0b5ca0e62db7e1028638ca7c0afe06d46233ab019`  
		Last Modified: Tue, 03 Nov 2026 00:57:42 GMT  
		Size: 244.5 KB (244520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7321bc2c634c84fcec56f141b2c3d8e988dc683cfc89c801cc80bc7a7da0`  
		Last Modified: Tue, 03 Nov 2026 00:57:43 GMT  
		Size: 100.4 MB (100356186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094a73e0b0d44f9d5a0f618f4f023f1ea28302b059a483f9fa7f3c360cca7685`  
		Last Modified: Tue, 03 Nov 2026 00:57:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e1b46935decd4eb34933c99c283965994952a8c18758165b16e2d829fa5105ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845c13ab6188b5e3cb7869e80b33e31b9a75ebe5ece8c0296f2fcfac657adf81`

```dockerfile
```

-	Layers:
	-	`sha256:ba04c85825233073110a21f1ab2ee4ce51a130815d5ef461900fb0459fb7ebcf`  
		Last Modified: Tue, 03 Nov 2026 00:57:42 GMT  
		Size: 176.3 KB (176315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c60087c91745698dd5ad7ff2e7f8ae8cba4997856ce5bed7f4ee393ef3e3b8f2`  
		Last Modified: Tue, 03 Nov 2026 00:57:42 GMT  
		Size: 24.6 KB (24581 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e53f703f3425db5c04b62f63794572df675f92012456df8cbbf90b5f6437fb26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103307192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8c6658ed9c35e8bea7796553e87e770032437d7ccf84ab97b3ac9fb7ad32a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:56:56 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:56:56 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:56:56 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:56:56 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:56:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:56:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a55bf737bb793a9eb76488855dadb9ac52bbd59ad582a82df0f745adfcfd652`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 247.0 KB (246951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c02be16c5cc8cd90f80fa09f773930298fc4772e6eecff5f27de48d2f357cf4`  
		Last Modified: Tue, 03 Nov 2026 00:57:12 GMT  
		Size: 98.9 MB (98870589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7270331e0f6129a908242fbf506601976a40dc69fe5edecb3c556149f62cd169`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:b2743e03f34dfc51b208bc0d654820607962b35dd4327402b0eed24b961f8027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0b59ace37d985dbcbbc58788fc8f91dc8037e818d90741208e3cfb4e6bd79a`

```dockerfile
```

-	Layers:
	-	`sha256:7edf5f632caf9d6eb34b01ca8ebfabcd8c0c64ee68e9315021a38a0913d18f7e`  
		Last Modified: Tue, 03 Nov 2026 00:57:14 GMT  
		Size: 176.3 KB (176345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e8c84f625de2f0acdc743d67b2835b940b3e016f1ec4e9a371f55775c8792e1`  
		Last Modified: Tue, 03 Nov 2026 00:57:15 GMT  
		Size: 24.6 KB (24601 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:7d1798f0e8e7dcd7c05a006f1d19f731a8cd80f7deee6c0cc0cce3d3d575ff41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106148415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc09af93c58cec1455c6ca05b6392ee5fdffdcdf1a958a0ac9d4cbd00e04c7f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 00:55:43 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 00:57:20 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 00:57:20 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 00:57:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:57:20 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 00:57:23 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 00:57:23 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c56c71fc81829a4535f86abb8530c9d434cf017ec184bffc037a8da3049d31c`  
		Last Modified: Tue, 03 Nov 2026 00:57:38 GMT  
		Size: 245.0 KB (245012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd75b5188259c9b268ed753f81ba2e38b1d9d992be8e9e3b374fc45933b99770`  
		Last Modified: Tue, 03 Nov 2026 00:57:32 GMT  
		Size: 102.2 MB (102225938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ff5e916bb15c1003e6b625ee8acb45e2fc90cb22d54716fc04452a79cb7e33`  
		Last Modified: Tue, 03 Nov 2026 00:57:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:a9f6b197fe2d0e11afe16576d96817ef34470c238ad7f4a4bac82813d472697d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c5db178e209a6e6c45876a9195527cf0b259da52181ec01d3da05f29a15cc39`

```dockerfile
```

-	Layers:
	-	`sha256:736485a98bbf8792894584c06a5af3fa9b0a4cff2eaf855359871874ba665a6f`  
		Last Modified: Tue, 03 Nov 2026 00:57:38 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9f065ba3b09c105765c54e1aeb963ddcded715e3b90a51a9a2e0c14a868f422`  
		Last Modified: Tue, 03 Nov 2026 00:57:38 GMT  
		Size: 24.4 KB (24435 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:2977b041eda8d886c868868eca8205ddd34a788eadf71ff0e8b7b2ffccfa0b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105156089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17f2182140d7976f58afbc8205f3c385dc5fcf739faa7151b22b2c33c7c0e2f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 01:30:20 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:28:50 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:28:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:28:50 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:33:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:33:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e091ec006538f58a84b5ad8694a7c055c054fa5943e6ee7ded52aafc322a4b`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 247.4 KB (247373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb982b356b87d80bb7f1d8c2c33f7bc1ec026469cef4eb9595fff52794f2b6d4`  
		Last Modified: Tue, 03 Nov 2026 01:30:06 GMT  
		Size: 101.1 MB (101090181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef33006be33fbbb719706bde404c8d4035fb26ecda57dbf43e5bfebda83558e`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:821dfe1423e64f77e67183f684431b4fca97cbeefbcbcb092aa2deff91c2260e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2c0c62f96d4f7655ea9236b78fad47d40fbef8c9c4414264db86a841a95964`

```dockerfile
```

-	Layers:
	-	`sha256:4ac06c9819fa2a2d9bcd8cd95e9c946f382e1cd8356a8b4ca2b19e581546e53e`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 176.4 KB (176352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19422ec8fe8d832c1ad1a450999dcc22ae348740590b6cc0496c7808095826c3`  
		Last Modified: Tue, 03 Nov 2026 01:33:29 GMT  
		Size: 24.3 KB (24341 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:bfd5432fd21b4dd3e49bc97de5c227bedb451c78fadaca27d5f9e81f30a790d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105182851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf7efac511d5c8806e1d801292ad02c71c628a904462ae7806c5422c441fe69`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 00:25:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 09:59:47 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 09:59:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 09:59:47 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 10:38:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 10:38:01 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795c8f7e3d4f2122322653c2c4514dfb6e8a66496401ea98e9976e6985e4acf0`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 244.8 KB (244847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f407f2d466bfcd495056aca7e9a0c35ac87e4089ae72db918b17348bab9a459`  
		Last Modified: Tue, 03 Nov 2026 10:03:39 GMT  
		Size: 101.4 MB (101358233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff8bf060a1e16eb68607ebef21432997a02c3250262863d40d6eb206d08bbf2`  
		Last Modified: Tue, 03 Nov 2026 10:39:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d1b1dcf1406dab2e7a8c99fadee93551f8e4e29d08450cadbed666630204f03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.9 KB (200863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bd3ea3caa4e0396819cf19c247f92af68d2f115cff983c8d1c217301a7b828`

```dockerfile
```

-	Layers:
	-	`sha256:ca2bcd921f881d1a88d06d735bfbc34d770428b2d37912968f3e2d22729f962c`  
		Last Modified: Tue, 03 Nov 2026 10:39:23 GMT  
		Size: 176.3 KB (176348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89815b81803b230630143d91486d074d285c05c54f948b9afffb62af00d663df`  
		Last Modified: Tue, 03 Nov 2026 10:39:23 GMT  
		Size: 24.5 KB (24515 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:11a21ae54b020a6a7a92c44986f8d25ea12440495d7055fae701f04e77aa3d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107011728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18eef9de8eff784d4eed12e8bd009ae3363c17c34727edbe7f7d4eff72cf7bca`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 01:02:24 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOTOOLCHAIN=local
# Tue, 03 Nov 2026 01:04:09 GMT
ENV GOPATH=/go
# Tue, 03 Nov 2026 01:04:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:04:09 GMT
COPY /target/ / # buildkit
# Tue, 03 Nov 2026 01:04:42 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 03 Nov 2026 01:04:42 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800a226a116c901dd16837d8301f8cb51393abb2c592a3d93c53d67bb64884c2`  
		Last Modified: Tue, 03 Nov 2026 01:04:52 GMT  
		Size: 245.6 KB (245581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ce80c322577cbabbedd50927ea6355481abc36458b7d6b30272314b5201096`  
		Last Modified: Tue, 03 Nov 2026 01:04:12 GMT  
		Size: 103.0 MB (103048871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fb21705d206f128ba9ee1352f46f903a3bc2035fe6913813223015cd3061bc`  
		Last Modified: Tue, 03 Nov 2026 01:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:56926f1164304cd0863fd29cca1f6a800dbc186f9ad5e3f43183b474ba83154f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 KB (200780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0d8b7338735937a63ca6f66f8d863e928e1aae2339fc23ef0a9baae6406650`

```dockerfile
```

-	Layers:
	-	`sha256:1eb511bdbd25ff10e00138d86c0b62937a28397fb383393a879401982f144a70`  
		Last Modified: Tue, 03 Nov 2026 01:04:53 GMT  
		Size: 176.3 KB (176312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ed6ad51a899571c4467eae26dafd06b5ffd5cab952b3da25287b397c055e948`  
		Last Modified: Tue, 03 Nov 2026 01:04:52 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
