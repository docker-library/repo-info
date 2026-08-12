## `caddy:builder`

```console
$ docker pull caddy@sha256:2620ea2bb3ba2119a51dee02753f2e16e7f0a33dca5466e240e2d32f1df90a5b
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `caddy:builder` - linux; amd64

```console
$ docker pull caddy@sha256:a7963edd45496bb8962e91e75891937081113f08f34d148f04684c4e83243aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79714606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0688745aeed77f3231cc1767934729a766c35551fe47124a016e916eecf1c5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:37 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:44 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:44 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:44 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:44 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:46 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:12:15 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:12:16 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:12:16 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:12:16 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:12:16 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:12:16 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:12:16 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:12:16 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb326bc0efa9ff309c916827f5657f7c3ea9412159ddc640fd492436c5684613`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 245.1 KB (245065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea3d467f844b8e6fffc2d7793807a1ec9e3a0582655418c1c17013372a3a910`  
		Last Modified: Tue, 07 Jul 2026 22:12:02 GMT  
		Size: 67.3 MB (67288392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87c970de4824d13a2c90eeb4914276b7f577d520b7a89db4630167e47fcda62`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49163b42dce693589fbdc287f4a16149e212fba95d2b7a2f57ff3e072b23fe0`  
		Last Modified: Tue, 07 Jul 2026 23:12:24 GMT  
		Size: 6.5 MB (6489630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6890c9bb0396fef90d26607986a910e650b85a7338ddd221c02b80eb3c439aa`  
		Last Modified: Tue, 07 Jul 2026 23:12:24 GMT  
		Size: 1.8 MB (1846507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7838f16aaba1a0c49aa56a13f9e2740920f9a6bffc31a4e6d1df4305072d9e0a`  
		Last Modified: Tue, 07 Jul 2026 23:12:24 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:1c493a50c17121a90d243125fb46deee22708e36143323517539e0ae674999f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 KB (284013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a083791b6346afc208c2bd8d5c1b7c1fa1d6b2e0e2f7b0ca90257fbaa43fb2`

```dockerfile
```

-	Layers:
	-	`sha256:d2fab74d5820da34168e9278b9c0483290afdd36f36cbf40fae356f3b4c61998`  
		Last Modified: Tue, 07 Jul 2026 23:12:24 GMT  
		Size: 263.9 KB (263884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25186e320ec6bfc98b72219940f04f63c8095aa6cc7bd56d60e422489d8e6813`  
		Last Modified: Tue, 07 Jul 2026 23:12:24 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm variant v6

```console
$ docker pull caddy@sha256:4034bcd2dcd898362696c7c22d22723f8611de10c019565ad29c4137148c44fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77762631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d075378f76231b4359d082ba210e414bd3b6fe1e5186f139160dd4a2bf14af1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:37 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:37 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:37 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:39 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:09:11 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:09:12 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:09:12 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:09:12 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:09:12 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:09:12 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:09:12 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:09:12 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4841d5ca5cf2b1e38a3ac33b8cd8c6b5f3aae3cc494e9f48f00491b7396ceb9`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 246.2 KB (246157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003f4ea07f7de8a847f56c7629b6e0b13e0de4150729c6eab1d61123660df36f`  
		Last Modified: Tue, 07 Jul 2026 22:11:31 GMT  
		Size: 65.8 MB (65811684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25636db4e1671dc33e72dd188136f911368694836bd748a72e9150af7aded82b`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fe9939c04cdc3057fa60894911558baa0de35e6eecfa65f53d0ca8d409c7c4`  
		Last Modified: Tue, 07 Jul 2026 23:09:17 GMT  
		Size: 6.4 MB (6406603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3582da3c578a4fe0a457e4b27d703244fbdf29547897e2dbc79992bf7da1c588`  
		Last Modified: Tue, 07 Jul 2026 23:09:17 GMT  
		Size: 1.7 MB (1745000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f8bde50b29c0e7a34df838a9a05ea7f98431a3551853a2fcc3a9a9e0fd2067`  
		Last Modified: Tue, 07 Jul 2026 23:09:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:25be77d38054266a5637be4b87d528be411fdac80f631138d2422aca3ed1b422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.0 KB (20039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17aec3024582628af999683498e7141ded141432b8bc24ca6cb522e27fc6b117`

```dockerfile
```

-	Layers:
	-	`sha256:49360ff8554cdcfa4f7f8286f7b66e2db72d6cc4cdd629afcd3c16a16b1d3cc8`  
		Last Modified: Tue, 07 Jul 2026 23:09:17 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm variant v7

```console
$ docker pull caddy@sha256:dd3044f0d895870cd4b399a48508f67f0aea5f87460e896d75e637b034f10cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76917790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a476603725318032c426e1549b29747582942972a51cdaa6677fb78989c11578`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:11:50 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:01 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:01 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:15:36 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:15:37 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:15:37 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:15:37 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:15:37 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:15:37 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:15:37 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:15:37 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9554119cca3a78f0cbd2208844d848840039378658907549730921e1bd4a360e`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 245.1 KB (245139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d9454c8d863c76d3a284f97c400d521e643fafb60e60664dbeea8c2a1719dd`  
		Last Modified: Tue, 07 Jul 2026 22:12:00 GMT  
		Size: 65.8 MB (65811677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b610de1d05b7d4391a592df2e757decb81c69b5faef373da23fea2caf8cfb6`  
		Last Modified: Tue, 07 Jul 2026 22:12:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e74e515a27e6a6563b100d3c73c90ccf655d0398ed761a822868947a10de349`  
		Last Modified: Tue, 07 Jul 2026 23:15:45 GMT  
		Size: 5.9 MB (5859768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63729e5834a83d78f1c8f9da5ceab470120be4b56c5f37aa90cb720d807cc7c`  
		Last Modified: Tue, 07 Jul 2026 23:15:45 GMT  
		Size: 1.7 MB (1738762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b88eb35cd3eca3684309607a9cf9ee06db732b71a0223f128c62fa467dfb60`  
		Last Modified: Tue, 07 Jul 2026 23:15:45 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:1c7befae2dc4eba5af2bdff3477574fb5aa37561ea28d6730cf2554b5ab9b8f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.5 KB (286530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3705a753a8d03725ad1e3191a8400d23f81b864506f003eb0968d0c9f1593d75`

```dockerfile
```

-	Layers:
	-	`sha256:90586d1991f49ea7d35c836523093861cc927040f421359d3b9211d22abb3f1d`  
		Last Modified: Tue, 07 Jul 2026 23:15:44 GMT  
		Size: 266.3 KB (266276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab2cc599746d23f663f1f35ae07f6103feba7101930e1d864b55ff086f6b684f`  
		Last Modified: Tue, 07 Jul 2026 23:15:45 GMT  
		Size: 20.3 KB (20254 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:df4a7385b09fa8fe11df616a1b021ca41d8f2c9790467e90d7ce1a9553a998d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76898051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221e9395d76836647248dd971fbb03b2a06d7a30e183c44cd7d91f95df8a92fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 22:12:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:11 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:11 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:11 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:11 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:12:14 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:12:14 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:12:07 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:12:08 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:12:08 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:12:08 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:12:08 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:12:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:12:08 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:12:08 GMT
WORKDIR /usr/bin
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf4e9506b0cd90f2a35302b25dce6e92a631fcc0a5fcdf15ca0561fcb6d48627`  
		Last Modified: Tue, 07 Jul 2026 22:12:27 GMT  
		Size: 247.5 KB (247499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d5c89bdd324edeb5721c09064e2659473bba39ae9d84fae53c9cc0181cf15`  
		Last Modified: Tue, 07 Jul 2026 22:11:56 GMT  
		Size: 64.2 MB (64177241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3572bfb7dd8765799af6a8e8b6793477958af8c067e710fba2f409ad2113b843`  
		Last Modified: Tue, 07 Jul 2026 22:12:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3831471a37abaa921402b34bf354740b14633e14a26b694960156bafb738221`  
		Last Modified: Tue, 07 Jul 2026 23:12:15 GMT  
		Size: 6.6 MB (6574477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca26beef0d40069e742eb383cf178d56f4c29ce1cf5477e0d8c52657aeedd40b`  
		Last Modified: Tue, 07 Jul 2026 23:12:15 GMT  
		Size: 1.7 MB (1716381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac09eee2a8397b6bb019ac815a4287b81adfc73394f6c8f295f74e7735bc36f`  
		Last Modified: Tue, 07 Jul 2026 23:12:15 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:de64509797a9a1d179c7a59f2441a6b16060914087e21987cef182cd0af088e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.6 KB (283634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cb97dd39f0a69b9a268585b8eef5757d8b96dd1a2f3f4bcd14c124a7336596`

```dockerfile
```

-	Layers:
	-	`sha256:f9dfc84e3607d5e3fbf033678ae6bd83b2fdcab9ca3229f95bcd81948653f1bb`  
		Last Modified: Tue, 07 Jul 2026 23:12:15 GMT  
		Size: 263.3 KB (263338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58602dc3695810c2cbe6bff31276de7e960f65d29bdeb27b81c4e5fb3172e76a`  
		Last Modified: Tue, 07 Jul 2026 23:12:15 GMT  
		Size: 20.3 KB (20296 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; ppc64le

```console
$ docker pull caddy@sha256:923b28e9c3955506b87810373b5c03208b4ea809a297f5dba39a698cb30b9972
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77535528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c0a8d3207888be22163c5290175dddf9f55fad5a7d59b238e1a085fe9f9155`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:12:59 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:12:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:12:59 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:15:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:15:11 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:20:29 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:20:30 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:20:30 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:20:30 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:20:30 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:20:30 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:20:30 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:20:30 GMT
WORKDIR /usr/bin
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
	-	`sha256:ef44659a171c971760f09e18e2fc71c988ee9946f68aac010d8a6276065cb298`  
		Last Modified: Tue, 07 Jul 2026 22:14:21 GMT  
		Size: 64.9 MB (64863129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837a88f92efe9877f23e6c12528d62e7ccdb9b8fa95a610a27ff13c8eae13062`  
		Last Modified: Tue, 07 Jul 2026 22:15:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99bb8ae79aca501340202e2b3f72351df752fdc0578e61eef0484c5af88bee90`  
		Last Modified: Tue, 07 Jul 2026 23:20:58 GMT  
		Size: 6.9 MB (6905607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf6c6c5ca74bbefdb18b6165830bdfbd16d8fe28fc1f08160f2aadfe4f6285f3`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 1.7 MB (1705994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9252b4ad4ee677ba1dc8228525c0d934b324dfd72744a9876becbd1fd38c2d2`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:05b26b2ccab7d10e5ecba3b6a9c84954b039bb032a0ef8d8f176ade7cfc8aa17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 KB (283506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67e70976a6d5485ce8e45559738c876987895d4f0c881cc9c6f987bbdcd826cc`

```dockerfile
```

-	Layers:
	-	`sha256:d29994ecd02100babe7fb3f0eac2ee720dcbee3847f6e545fc3a969acd67eb5a`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 263.3 KB (263307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c7b1857eaf4c7962d88a57531276db30126f0bb31ddd291463ccaeb0eb3578e`  
		Last Modified: Tue, 07 Jul 2026 23:20:57 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; riscv64

```console
$ docker pull caddy@sha256:01a8f667e554a0e97968aad09dc01345eb95a5fa6be81951e5ca6d34d5fe9f9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77380861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dcb0e95ee4978e6d4b801a479e8db632f9e8c810f278178ced8236e7f0a364`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 14:05:16 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOTOOLCHAIN=local
# Wed, 08 Jul 2026 20:35:16 GMT
ENV GOPATH=/go
# Wed, 08 Jul 2026 20:35:16 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 20:35:16 GMT
COPY /target/ / # buildkit
# Wed, 08 Jul 2026 20:46:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 08 Jul 2026 20:46:30 GMT
WORKDIR /go
# Thu, 09 Jul 2026 13:57:26 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Thu, 09 Jul 2026 13:57:27 GMT
ENV XCADDY_VERSION=v0.4.5
# Thu, 09 Jul 2026 13:57:27 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 09 Jul 2026 13:57:27 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Thu, 09 Jul 2026 13:57:27 GMT
ENV XCADDY_SETCAP=1
# Thu, 09 Jul 2026 13:57:27 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Thu, 09 Jul 2026 13:57:28 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Thu, 09 Jul 2026 13:57:28 GMT
WORKDIR /usr/bin
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
	-	`sha256:11ba61866bff16c6d67dd671f0c2945d522b517e8a4429596c829088207b394e`  
		Last Modified: Wed, 08 Jul 2026 20:41:58 GMT  
		Size: 65.2 MB (65163350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c5e36bd441e281c048a60c9d5c8f0cb94a07a80df27a9fdaf1078658646bd1`  
		Last Modified: Wed, 08 Jul 2026 20:47:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be596e0c3572ec084f2d40c3140ef9aa3dbc08ab368891ab867c280275d60afc`  
		Last Modified: Thu, 09 Jul 2026 13:58:48 GMT  
		Size: 6.7 MB (6674005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75190c6dfcc5df8dcb13973971df0bf13a93a0f33f6a1eff2cd821a86e4dc6b5`  
		Last Modified: Thu, 09 Jul 2026 13:58:47 GMT  
		Size: 1.7 MB (1724208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed0c93df464a68a404656cbe38e7b166c34fb19d681c345c9a4059a7d0b3f78`  
		Last Modified: Thu, 09 Jul 2026 13:58:47 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:320aed7c9ebbcd7fe986c7b294e3d379e8713b8c2c910b6161da42eddc27d68e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 KB (283502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8868cd37491e015dbbb8df59ce304bc1febdea85ddb0bdc303f70d823f551f7c`

```dockerfile
```

-	Layers:
	-	`sha256:ffa1e4eb56d343ddad0bc067877e38cb883ce4790bd5d3e679ac917004efa2a3`  
		Last Modified: Thu, 09 Jul 2026 13:58:46 GMT  
		Size: 263.3 KB (263303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5874ad3cd74d1c14306f950ab09918463869ccdb0abdccc7b38823ebf3bb6ee`  
		Last Modified: Thu, 09 Jul 2026 13:58:46 GMT  
		Size: 20.2 KB (20199 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - linux; s390x

```console
$ docker pull caddy@sha256:4aec8d7eee3e3ba18d36762bf41500876d1fe7e7f5a0e244981885c53d228036
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.0 MB (79045434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed74804fd4d399b1b433da049428f443acfa25b19f2ce485efe853fc7f5be97`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 20:41:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOLANG_VERSION=1.26.5
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOTOOLCHAIN=local
# Tue, 07 Jul 2026 22:11:26 GMT
ENV GOPATH=/go
# Tue, 07 Jul 2026 22:11:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 22:11:26 GMT
COPY /target/ / # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 07 Jul 2026 22:11:28 GMT
WORKDIR /go
# Tue, 07 Jul 2026 23:14:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	git 	libcap # buildkit
# Tue, 07 Jul 2026 23:14:20 GMT
ENV XCADDY_VERSION=v0.4.5
# Tue, 07 Jul 2026 23:14:20 GMT
ENV CADDY_VERSION=v2.11.4
# Tue, 07 Jul 2026 23:14:20 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 07 Jul 2026 23:14:20 GMT
ENV XCADDY_SETCAP=1
# Tue, 07 Jul 2026 23:14:20 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='edea47d552fd9ac0a533386a72acaa95733ce734f347c11e5513469b5dc0eec0a62a6e21cfa93a83ab00b2dad72e0ee0b9bdf267a9654235f70d4c934739a15b' ;; 		armhf)   binArch='armv6'; checksum='29e4b7c484c0045d192fc8e7721c41988c1b8fc529343499ebb2acf94fba60f6e6c25c0944f7fb778ae25d5f8ccca452fc31d0338d6630d9b5219d5f9210ea44' ;; 		armv7)   binArch='armv7'; checksum='7e115fe60be169ffccff6884f1ab8fbe754d117c39618b02aedab9c857f0dcdc3cc6949f76b6a799cd617b509021bb086a4b2c5fb6c74d409d09429ff591a616' ;; 		aarch64) binArch='arm64'; checksum='2933968a6e759a0406dc864000960fe0e605db9f0fe0662ce245897eaa5b529e322d1b14c2b98463a95e13f1dfd85432541b41f459a237daedb8c68a8f6a5bb1' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='10e5f7e7dc885b278ebf4c5a97df4bde85a96fbc529890263f42af0445790a18669f44e318be1ac7639a283499e679ce9dabd8fe248478095d514bc2b72e6cd1' ;; 		riscv64) binArch='riscv64'; checksum='4b108ef51ee3fd567f13cba3d3e2c89f86894e27b2ae5585e9ee20346b17f71a3bdcb968b25cb6d88a9a9671ef73cf82a1c0060e273d9b2e0c0c680369c83280' ;; 		s390x)   binArch='s390x'; checksum='f2e18d550dc12cb06bedda46c47404a2fbfdfb12363483daf41f5c52736a8ad22c72d7c32edb08aac7a18a1f1faee19aa787ac72b7515f07daf77329f4efbc3f' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/xcaddy.tar.gz "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/xcaddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/xcaddy.tar.gz -C /usr/bin xcaddy; 	rm -f /tmp/xcaddy.tar.gz; 	chmod +x /usr/bin/xcaddy; # buildkit
# Tue, 07 Jul 2026 23:14:20 GMT
COPY caddy-builder.sh /usr/bin/caddy-builder # buildkit
# Tue, 07 Jul 2026 23:14:20 GMT
WORKDIR /usr/bin
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
	-	`sha256:f02a0b92c64bea7b8e82336e0a7f2afcc7dad25aedbcab036aeb985d0f3e2228`  
		Last Modified: Tue, 07 Jul 2026 22:11:51 GMT  
		Size: 66.5 MB (66528843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d0e6a39272a6e8258b921992f6a9600bbea6bd650620f7ab098d55cd81feb2`  
		Last Modified: Tue, 07 Jul 2026 22:11:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf59c9f0d3040bf913d4fcd889f5736730273cfdbe23e15c2b49594eb9469e1`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 6.8 MB (6779735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53557377bdc0028b550264b2f0105ad5edfecbba3f74bc0ecf65b1745cdcd249`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 1.8 MB (1782856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d0218166ed4080cc574976400478fa8ad7cd2ac2bb1083bdc1b03ba352c730`  
		Last Modified: Tue, 07 Jul 2026 23:14:31 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:builder` - unknown; unknown

```console
$ docker pull caddy@sha256:a14e8487ae3896356e92691d15d9bf6ce73acbbdf38bb5f04570a60b38e0cd22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 KB (283362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1519f855454b660a4dca3d2bd568e67e10743c468797c0eb34c78d34410158`

```dockerfile
```

-	Layers:
	-	`sha256:cfbceaa2df4620a4f6e8a1830ec163a9cff2a49d749163b7cd46e25124a2e2c5`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 263.2 KB (263233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c85cab3aa8a79f1125991b3a55c7406c6c0a3b2137d136903104f8df922e059`  
		Last Modified: Tue, 07 Jul 2026 23:14:32 GMT  
		Size: 20.1 KB (20129 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:builder` - windows version 10.0.26100.33296; amd64

```console
$ docker pull caddy@sha256:655b66c2aeff2f323e60a31e170d44fb0b152d345bd7d89329ad1cfa0d48c170
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2564581459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94778e8615392f808190afe42fb42c9e5e595b04c4e28dafdaf16b6c32e6b471`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:46:47 GMT
ENV GIT_VERSION=2.48.1
# Wed, 12 Aug 2026 17:46:47 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 12 Aug 2026 17:46:48 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 12 Aug 2026 17:46:48 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 12 Aug 2026 17:47:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:47:04 GMT
ENV GOPATH=C:\go
# Wed, 12 Aug 2026 17:47:09 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 17:47:09 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 12 Aug 2026 17:48:43 GMT
RUN $url = 'https://dl.google.com/go/go1.26.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '97e6b2a833b6d89f9ff17d25419ac0a7e3b482a044e9ab18cdef834bd834fd38'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:48:45 GMT
WORKDIR C:\go
# Wed, 12 Aug 2026 18:24:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:24:06 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 12 Aug 2026 18:24:06 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 12 Aug 2026 18:24:07 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 12 Aug 2026 18:24:39 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 12 Aug 2026 18:24:40 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bf9629e3b114b952c8857ccb303d4df4a5bcdeb86edb8a93fcb5278560c99d`  
		Last Modified: Wed, 12 Aug 2026 17:37:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3279166f4740fba68c0d3fbd71e211fd10718a0ed428eec76919a569fd576bbd`  
		Last Modified: Wed, 12 Aug 2026 17:49:01 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d60c4f424122acf9006682de2a82d759f010db1503c044bab5fe224c77372`  
		Last Modified: Wed, 12 Aug 2026 17:49:00 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620ee4523bb03266a0790de51f3cdfedfd229eb2e180d64ab0872ad737bd5072`  
		Last Modified: Wed, 12 Aug 2026 17:49:00 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c0251ceecc40c0a2af46bbe2820f6319155cd7797014c5cf88e9f55b12b320`  
		Last Modified: Wed, 12 Aug 2026 17:48:59 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f85d8e591eb3b83a558827d8296f7d6e268127e5d4795611337aebee5d4760`  
		Last Modified: Wed, 12 Aug 2026 17:49:05 GMT  
		Size: 51.2 MB (51221036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84507f87ceebe8ea253746e80a3d7c14aceb6bec5ea8458ded23774bec5dfb38`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07d5f6b3fd1fbec2d29fc24bfd5d0d74f55aa4b4f03585b9f652a3b0f94d9d0`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 351.1 KB (351083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb808facf29d139e652776bc63a91e5dc194526a67b2707eb0acafb8732c6cb7`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ac86dc66b9749ee4d169f4cbc67ebefbff5a595b78e7b8de75ac9c88c7744`  
		Last Modified: Wed, 12 Aug 2026 17:49:09 GMT  
		Size: 69.9 MB (69911894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716670c0e50cf885e48a8edcea0f005477ad98effb9ee47ed31c3ba6a2e7c028`  
		Last Modified: Wed, 12 Aug 2026 17:48:58 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253cde753cf62abe130d469a988b4a22c9fd464c3f9fdbb2189b2cdc555dd4e0`  
		Last Modified: Wed, 12 Aug 2026 18:24:45 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a729a538c9830312479783ae2531cf9f9fee2de9462a284e884d29fa263160`  
		Last Modified: Wed, 12 Aug 2026 18:24:44 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161ca8dedf7cfbeacdae1ce7c13d66bb93469be41e44a0ecff5e7574b8c749f`  
		Last Modified: Wed, 12 Aug 2026 18:24:44 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d810399212019ff9d4c7430d03bdbc210b49a96db025a4322c6079869a8327d`  
		Last Modified: Wed, 12 Aug 2026 18:24:44 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d160fd322be54e11bcf86bddfbfb8e3407d7cf442db637d20cd92b8d98e0293`  
		Last Modified: Wed, 12 Aug 2026 18:24:45 GMT  
		Size: 2.3 MB (2295142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c942ce8a095bca31ea6d4f220e172c3d976a55c3137313611a407ea7023ab204`  
		Last Modified: Wed, 12 Aug 2026 18:24:44 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:builder` - windows version 10.0.20348.5499; amd64

```console
$ docker pull caddy@sha256:c442dca431b6fb035894e5d8ff2039b9a679212d25094717208a35ca07ed118f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2307721141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6079a0bdbfc6c5cbeb326d93887f816eee520e68ae969bf64c3e5dc7f08c335f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:24:32 GMT
ENV GIT_VERSION=2.48.1
# Wed, 12 Aug 2026 18:24:33 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Wed, 12 Aug 2026 18:24:33 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Wed, 12 Aug 2026 18:24:33 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Wed, 12 Aug 2026 18:24:46 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:24:47 GMT
ENV GOPATH=C:\go
# Wed, 12 Aug 2026 18:24:51 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Aug 2026 18:24:52 GMT
ENV GOLANG_VERSION=1.26.5
# Wed, 12 Aug 2026 18:26:10 GMT
RUN $url = 'https://dl.google.com/go/go1.26.5.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '97e6b2a833b6d89f9ff17d25419ac0a7e3b482a044e9ab18cdef834bd834fd38'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 18:26:10 GMT
WORKDIR C:\go
# Wed, 12 Aug 2026 19:18:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 19:18:39 GMT
ENV XCADDY_VERSION=v0.4.5
# Wed, 12 Aug 2026 19:18:39 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 12 Aug 2026 19:18:40 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 12 Aug 2026 19:19:02 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.5/xcaddy_0.4.5_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('652857d019f3e1772b154b33f2479d8f17f4b10818802363737d35601c4cd51dc9a9ba0b3c64cdada9fe6bdcebb4395d0561b2ca302ae1219b288758c01911c1')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 12 Aug 2026 19:19:03 GMT
WORKDIR C:\
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd161e481f0c5e7537aa95c6789122ee31dcd6ce57e3c0f949c47a9e1dddb43`  
		Last Modified: Wed, 12 Aug 2026 17:38:25 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:131e1897c708d7fea568ffba023840f4334c4ce192105e08d6fa5783052412af`  
		Last Modified: Wed, 12 Aug 2026 18:26:22 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d79a52658529f680802e21ca66f059de3636c8594f56edfd1e9316329571df`  
		Last Modified: Wed, 12 Aug 2026 18:26:20 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2049d3d8207fa4ef40ad1d1abb2122374344bac201500dbcd463fea46da9fd`  
		Last Modified: Wed, 12 Aug 2026 18:26:20 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd46303f2de889f91e161b716425fe5aa9678caf102cb6d528313eef731eddcb`  
		Last Modified: Wed, 12 Aug 2026 18:26:20 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5805723ba4ae5fd7c71ef149ca3aa2dee080154e1eb5f0412692a2a50c651f6f`  
		Last Modified: Wed, 12 Aug 2026 18:26:25 GMT  
		Size: 51.2 MB (51202849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e74f367539678fecffef32bd39f63f91225573bee93221986057ab0aa8ee573`  
		Last Modified: Wed, 12 Aug 2026 18:26:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135b0340d5e57493904831ffd0baabf3915271878f750335a1061ec649d23dea`  
		Last Modified: Wed, 12 Aug 2026 18:26:18 GMT  
		Size: 328.4 KB (328380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbbde3505aedcb46573da08c8d043d9ee8592964e2335fa765d60d373545e43`  
		Last Modified: Wed, 12 Aug 2026 18:26:18 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e950a795a091ebf9c150a8fc27b693476ddfc270763856980a63ff6ace35536b`  
		Last Modified: Wed, 12 Aug 2026 18:26:28 GMT  
		Size: 69.9 MB (69898988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca6e2a97567d8b50c3063e0e774219f13aebcb01c4fd4cc73186b133207df1b`  
		Last Modified: Wed, 12 Aug 2026 18:26:18 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0dcbcfee3d1aa9d6edf971f290493ef67729e120db4f2f8fc6735c974f2004e`  
		Last Modified: Wed, 12 Aug 2026 19:19:12 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4552772e1d1b0a1718335a2afec908f1fc945010070d7e0a2464160d46b83d8`  
		Last Modified: Wed, 12 Aug 2026 19:19:10 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d95819b0f51348c8a87c8815e37aaecb585c0a1c0c1479fc6fefbc3c08deb1`  
		Last Modified: Wed, 12 Aug 2026 19:19:10 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d8ef2eff5315d3b9d04cb4d67fe5379b1f4d8a53ae6e62eb8eb32b5286e861`  
		Last Modified: Wed, 12 Aug 2026 19:19:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2890c5a4dd4328467dfb75e0355e1c9ab2afc1bc5ec540cd2779cca43c9512d4`  
		Last Modified: Wed, 12 Aug 2026 19:19:11 GMT  
		Size: 2.3 MB (2276287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bbda425e23574f4da083dc7796820b0fd5d8ad9c03e3d162f11a1f24ea9f73`  
		Last Modified: Wed, 12 Aug 2026 19:19:11 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
