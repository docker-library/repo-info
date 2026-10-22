## `golang:alpine3.24`

```console
$ docker pull golang@sha256:d530cf60723abf1ffae0cd16bb546b379ec0550d2f3815e5b16ed69dbc00fba4
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

### `golang:alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:bff16a94c0b4b6d9642581e2a3aa81beb3edb940b2f5a3aac1d22c6a68cb7747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75248133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f96555233b6c3b36fd9b525e8d2abcfe6226c74b499bcc6702b49e0ff3fe3c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:58:02 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 22:58:09 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 22:58:09 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:58:09 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 22:58:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c012d78a862fe59ae6789c91f982ea68a882c9c44bbde97013914458dcdd9c4c`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 244.5 KB (244471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e0bb27ae78502103ed383ed33346f88a83943fb7bd93977850d5890ee8fb3b`  
		Last Modified: Tue, 20 Oct 2026 02:42:46 GMT  
		Size: 71.2 MB (71150395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e3100880d834be60a9562375f4c5018b2cb26d64591bd0060aa3a80b935f43`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:5ca474ee48e64316d5fd243c8887571466ebf7a9691d479914f769fe4baa87fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.6 KB (203554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3f67fbb7125ec5d0de0eba6a47c4829921c26e8b12651d69e87da8ef57daa4`

```dockerfile
```

-	Layers:
	-	`sha256:9441d2fe9df64b44a8cfe0b1eff163d4c8e2451558227345e4bdf3ca25df41eb`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 177.5 KB (177528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56ecb18fdc3f25c48c49880cb582f6f9c74268dda4b16e000055bc409891b20b`  
		Last Modified: Wed, 21 Oct 2026 22:58:25 GMT  
		Size: 26.0 KB (26026 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:52efed73b4accb3fe90c2d53e297c917c578f80c995da88a4f0770d65cf49de1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73459881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8dace3a45ca826001333d9e18551e6b89e997ac625c5799e2b2be1373bc93c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:36 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:29:45 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:29:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:29:45 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057399039eb243e7808b91993ba9f63d3e0da431e05f5bbb72f37e5dd6b080c8`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 245.6 KB (245575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ceebe23a2437e4f10eca55adfacd488c82ac6aa8e96dacaebe20785979cba`  
		Last Modified: Tue, 20 Oct 2026 02:42:15 GMT  
		Size: 69.7 MB (69655857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4270a94f0219df984116129a409fe43c3d2d9c5996177b591aca31e1f3615398`  
		Last Modified: Wed, 21 Oct 2026 23:29:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:e7b0e6ad45dea1e65956da2b070fdc5ed16de5b0ad85ae83ee7a9449e6be7ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfe297b4c00f12b8bddba21519e382b12d3a8b1f9ea3fe66ac0bbe9de722e59`

```dockerfile
```

-	Layers:
	-	`sha256:985a3f1b94f26f7e437af5e9a06e9b1228c3e5f87afa3b4e3aacaf8c809098e7`  
		Last Modified: Wed, 21 Oct 2026 23:30:00 GMT  
		Size: 25.9 KB (25950 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:9958accf016d93be918d548fe603bafec3d2359870cdf7402940c4e1727cffad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73167140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ca5b45cca21c802fe37fdbaa4b58b2f6e1a7c64360396bf2545568d3fa066a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:49 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:33:59 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:33:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:33:59 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:34:02 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ea789e2969e7e9134f029905c7800eb29baab37b23bce0b5c7b8842814015e`  
		Last Modified: Wed, 21 Oct 2026 23:30:58 GMT  
		Size: 244.5 KB (244518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae9b35601617bc051bb43546b04b850ce4f1eac0f66a3a5d94eff209388a0b2`  
		Last Modified: Tue, 20 Oct 2026 02:43:07 GMT  
		Size: 69.7 MB (69655805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d4e0aad963a6de3ba7f2ac6cad5cd64943f102880db12296ba798d90e05b19`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:1ba3a7129e8fd3873d4c0072c2156e64fc1035a04e88e7a2ab466c0bbd4fb7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.1 KB (203094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d0c7a0aa19126feb19db25dd29cf8297321c0227a22c335a2d4cc94b8a636d`

```dockerfile
```

-	Layers:
	-	`sha256:643efbae694edd5f60cece2d8eea9ad5c4aadfa5bd256f58ac6d104a115c8b20`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 176.9 KB (176930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43200382ec5c6c80bffc3c414b559c3658a7424f1b4ae64c931e3950945d2275`  
		Last Modified: Wed, 21 Oct 2026 23:34:16 GMT  
		Size: 26.2 KB (26164 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ee0dcdc452cb73890363fbef65fc333aeb0da7c24ba52f2c6428a37b0e7f4f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72157298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32c794743db45d5ec67da0b89119d53c9099575981217015c7996ea43d2b25a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:20:54 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:20:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:54 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:20:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdc05aad5cf439d58eff6bbe6e136d87af146e3b7442a5c64928da3ae1b86a3`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 246.9 KB (246920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e7dba5c30798b9d70d746d9fb1606b744e5c3baa8015b51dad60cea99c045b`  
		Last Modified: Tue, 20 Oct 2026 02:42:50 GMT  
		Size: 67.7 MB (67719732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070112d392529aede516cb12dd04bbbf175fcab48c54121d76e09a5043ce92a1`  
		Last Modified: Wed, 21 Oct 2026 23:21:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:626e41b9325b0a17d226965abe746986ee901c75ccacb062d6f0c48688c4a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 KB (203190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d677b886398a952a2583bcf665ca0b853f21211108f0758e8b409a29a5a827b`

```dockerfile
```

-	Layers:
	-	`sha256:36a935616aa18e35cec394fac995d64c8467be59ca74ba96a5bbccbb04c1a151`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 177.0 KB (176982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ea6f5cff28d1bb24c6c2d65bc13961bad2d2b074ca0156e6413117daea5f8d8`  
		Last Modified: Wed, 21 Oct 2026 23:21:11 GMT  
		Size: 26.2 KB (26208 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:7eadb9cbb0aab2649418025b8472a770195e9a94921309519896514de85bba7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73265024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43405772d97f752dd13b8b889a5cd94bcb976d32bf756d228d38cf6265f74c11`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 21 Oct 2026 23:21:03 GMT
ENV GOLANG_VERSION=1.27.3
# Wed, 21 Oct 2026 23:21:03 GMT
ENV GOTOOLCHAIN=local
# Wed, 21 Oct 2026 23:21:03 GMT
ENV GOPATH=/go
# Wed, 21 Oct 2026 23:21:03 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:21:03 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:21:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:21:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05db602621016d4bc0f287bb920fd2525c6b119e6115cc02acbcb8a375e7bc5`  
		Last Modified: Wed, 21 Oct 2026 23:21:18 GMT  
		Size: 245.0 KB (245002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905ceead4e5e99c109d9a50239d7fdcd8575f6d62e0036142c62bc81584c8449`  
		Last Modified: Tue, 20 Oct 2026 02:42:52 GMT  
		Size: 69.3 MB (69340868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e3309193e52895924cfc3a833a132099ff151b6bdd8ca13d3a9c108aae15fe`  
		Last Modified: Wed, 21 Oct 2026 23:21:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:d6d582ba04ef2f05f353d417dedcdcc3edfc6a7c2f3af80e85447778a39c0898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c741fda053c84ce63ac2238415b082eedc169b7d77623b7714275522295909d6`

```dockerfile
```

-	Layers:
	-	`sha256:ed470e0d23e3cc94c1951104dafea79b8d4519e8655247d5cf7df8a49dee2c56`  
		Last Modified: Wed, 21 Oct 2026 23:21:18 GMT  
		Size: 177.5 KB (177467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b20ba8358f51fd47dfca9649570cf0dca3c2e8c8d2e6030113bf73e4e45f08f`  
		Last Modified: Wed, 21 Oct 2026 23:21:18 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:e6ac4677e818e2ca8601b8bcf6fdc8d19f9eba45f8a95acf7c12b056d5f41b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72560084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9e12348f3130adf6ed61f6b3f27517d0b07574b29045595983673768c386d4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 08 Oct 2026 17:13:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:36 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:36 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:43:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:43:37 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ead3e5d134162dee7a14bb813a5ed676c80b3a1dd5e7adcd490a8d837da3cc`  
		Last Modified: Thu, 08 Oct 2026 17:13:49 GMT  
		Size: 250.3 KB (250278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e99280a61a753e565d841200e74a9ffba4717a286b10e4a5b0e0f4148164d619`  
		Last Modified: Tue, 20 Oct 2026 02:42:42 GMT  
		Size: 68.5 MB (68492171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93836b5774e96155b60c3b65c2f6d830538d61203683c6012b8b71caed9f226`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:b24e733ef8c3233ab197a198f10606d49b2135f56432e3ef81395fcba3d8e9cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 KB (204986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7dc41617572d6918b6ad6cbbcc64a503550fe7c7d7eff5237636848bafe89d`

```dockerfile
```

-	Layers:
	-	`sha256:bb592760a26d6cffa940f89c3f92f8c92c245388fa588e41c0ad6cc3561284a6`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 178.9 KB (178888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66f1c05f5f326d0dbb42016f5a64d85e8850167baf7508d5eb092047dd92cb7e`  
		Last Modified: Tue, 20 Oct 2026 02:44:02 GMT  
		Size: 26.1 KB (26098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:4ba4943d0a1847ca7b5b7c26c66dc0688ed8beb93a2bf86a9717a4d54380bd70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72994466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141dceeba476feabd8321ae6bcce7348327290edc7e93814948ee6f05a1da891`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 10:07:47 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:43:35 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:43:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:43:35 GMT
COPY /target/ / # buildkit
# Tue, 20 Oct 2026 02:53:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 20 Oct 2026 02:53:35 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a135b7b43241d26c11095e22f4cc1d03310757eeb6427701f0919cbc20898f4`  
		Last Modified: Mon, 21 Sep 2026 10:10:21 GMT  
		Size: 248.0 KB (247952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d210471bbbad4155d5d9d7a03dedf3bea72046f85d8dd4431b4da5f1892521`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:efadc30f209182ff9ae4c3cd94ef12c275f64fdefed02f27f15970d9bc50b563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 KB (204983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90bea85fcd93cecfe4712d1a22f46be2e35634b78aeb82cc61c09332a0bf69ca`

```dockerfile
```

-	Layers:
	-	`sha256:31974581f01fb9216ecc364c86d8ac0536f6f40394b184c362034d71b3d72d8f`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 178.9 KB (178884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7a577c580912f23e1a52af4f5387fe4ed7652e198aff2f73d75ef0c1710971`  
		Last Modified: Tue, 20 Oct 2026 02:54:56 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:4b9fd87ec6c3fb9a4175aa000f26c409b794e564fc7e04082a91dab866ab93df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74247079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b2bb5049553d5e55511194b7f84b5496fd78d3df0bcfa3ffacfa5f13cb9ec0`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:41:23 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOTOOLCHAIN=local
# Tue, 20 Oct 2026 02:41:05 GMT
ENV GOPATH=/go
# Tue, 20 Oct 2026 02:41:05 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Oct 2026 02:41:05 GMT
COPY /target/ / # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 21 Oct 2026 23:41:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394b72af52beb97b1ac0b1a98b13629b3b0aee2321f877e115a82124b80d7793`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 245.6 KB (245571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c0523718a973c87af9229ebd329dd6cf4e5d8ba37906c1e4c9083f5bb46d84`  
		Last Modified: Tue, 20 Oct 2026 02:41:29 GMT  
		Size: 70.3 MB (70281640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096905f6e50b9f46f97862a2a89bf93646cfd1326c57bfde369c1e8b28b45e43`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:abda44d6559ffc98edd674dda5fd3be13ce375be7d20cc10da1c40ee8b6423bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.4 KB (203400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179dd5cc4431b259d5adf952ce8a88c10949d2778f4ff8ccd02f3f0340727b6f`

```dockerfile
```

-	Layers:
	-	`sha256:41e865c203608244a47391942b0ab7cb11d04d0080d3e8d4a52b3e11112c84b7`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 177.4 KB (177373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0f79d249d79e3988d2e77108c14006b28312ad070d8fc3cd3289d880a2fcd1f`  
		Last Modified: Wed, 21 Oct 2026 23:41:45 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
