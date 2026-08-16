## `golang:1-alpine3.23`

```console
$ docker pull golang@sha256:e57c41c1d5864341031181b0db34b9a537bb5773eb6428e4e5bdaea0f9135406
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

### `golang:1-alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:e7ca5c6ac92d6f71a5b9e7f1e9178a3560c05c8be005ce560e188dbda00a86f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71398106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57ed731a5e3d43457d64b67948571c6888ee4ed197a513411e8e9c9af266d50`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:03 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:34:10 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:10 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:10 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:10 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:10 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:12 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:12 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57c94ce7cf49d52576d267b94a7105fbe8eb5d1cbe9042d462a8cb8d84c0574`  
		Last Modified: Thu, 13 Aug 2026 19:34:27 GMT  
		Size: 245.1 KB (245056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa55d8c7975bdc26e118c1a6e8ee122aea1e654a365c1d6f7b48658c58be2e18`  
		Last Modified: Thu, 13 Aug 2026 19:34:24 GMT  
		Size: 67.3 MB (67308470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf265a321f31d8032e3b21ea032da3829f60e895453d911645033edcec66ca4`  
		Last Modified: Thu, 13 Aug 2026 19:34:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:28b18187d8cd2458766b4d38ec148c9d82436d6b914262028fa57591513b6340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b765f1f22653796b91ca7923ff74fd0d70437a654134e0fca84f9b2da7cb8907`

```dockerfile
```

-	Layers:
	-	`sha256:67d68001cbd2e00a2484c5d5550b5dd499ca6558cf866eac9b4533d5b165294e`  
		Last Modified: Thu, 13 Aug 2026 19:34:26 GMT  
		Size: 177.0 KB (176956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd1d597c46cc553db68c1134475d04f2bb94c79c72ccd6e0d93a9e57e202d405`  
		Last Modified: Thu, 13 Aug 2026 19:34:26 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:474d06cd7a378849a93ffb23e3aa085ae284fcbfd5f4a97861210dafb6d579ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69642612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ffc894e5f445f6943398e9381c8232e20eb5d72c2d17e458b1e3d1932106dd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:47:18 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:47:57 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:47:57 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:47:57 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:47:57 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:47:57 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:47:59 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:47:59 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc5f9e01e760a410137fa6c52d241533baa474d706485d3a3929d9be6cfe2446`  
		Last Modified: Thu, 13 Aug 2026 19:47:41 GMT  
		Size: 246.1 KB (246143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd6a993c36f888b98401ce7d1615a1ca7b65bb268a542f686dceaf8c6b30c8f`  
		Last Modified: Thu, 13 Aug 2026 19:48:08 GMT  
		Size: 65.8 MB (65843715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3b5718a315063828c883f5de665c034123eeebb8c643b3fe5c92f28f691392`  
		Last Modified: Thu, 13 Aug 2026 19:48:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:d28b6a184a72f23ab3ccfcb281d04fd0b85a92d93c77c47a5c71c076de2e68c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5373a7f72966d3d42b8447216982fdea133c4f37fb2f49ecd8c5d2f7353a93f4`

```dockerfile
```

-	Layers:
	-	`sha256:de04c0cdc3ff1258c76c9a13d8cca0d0003d2f67316b6183c191144393b28c18`  
		Last Modified: Thu, 13 Aug 2026 19:48:11 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:4787c16e8aa80a5976863023a6f7fbf58a2e329015787ad45795a079d6dc108d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.4 MB (69351032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b41ffd6257009cc6ff733f77942c8fccf18626626b6d01e6cda03eec0489904`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:56:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:57:11 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:57:11 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:57:11 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:57:11 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:57:11 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:57:13 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:57:13 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab102f2d6c45c1d5511878af110b8c38b46370bc10a8007706d61d9c06abea52`  
		Last Modified: Thu, 13 Aug 2026 19:56:55 GMT  
		Size: 245.1 KB (245130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d33eb168b57114b4010647a3b9fa78f09a5c12dfda7910e365550d281e862ef`  
		Last Modified: Thu, 13 Aug 2026 19:57:19 GMT  
		Size: 65.8 MB (65843890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4d289265e1fdd408475061e78d79fc68f608bceca7bebd95f4a0eecc77e5cc`  
		Last Modified: Thu, 13 Aug 2026 19:57:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:66a5fe3a16bd117c1421c792b4e8c588adccd49acc94da37b5a9e5cbfb8fdd42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602e00b852d6fadc279f6b642d0e6b412cffc61586af43da4b1e33ea824773f6`

```dockerfile
```

-	Layers:
	-	`sha256:7d3ce6cef0595631c89ed45ead250fa2f0dce31c5f3a685562b6edee4f9171c2`  
		Last Modified: Thu, 13 Aug 2026 19:57:27 GMT  
		Size: 176.3 KB (176326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fac97a8b5aed023aa828df228f71746685d76d61e8fc96cde577caa0ba478311`  
		Last Modified: Thu, 13 Aug 2026 19:57:27 GMT  
		Size: 24.9 KB (24913 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9bca551bf41529e12db020eb363b9e7496cd4e5d0cbb5d3c5429db1dc86e3ec4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68650344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa68451aebfc04ec78a1fb9ecfe039e3ed34de5bc5f9dd7ad5e1d89592b2c3a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:34:19 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:34:19 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:34:19 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:34:19 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:19 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:34:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:34:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54be9a7f2e97a138d2da8d7ad77986ff36b7fee9471c9d2207637670e304e372`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 247.5 KB (247497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22db0ab2cdc67a637151bb7560ea06e6cc39a231b4459d38ff34fc6471ea35b1`  
		Last Modified: Thu, 13 Aug 2026 19:34:27 GMT  
		Size: 64.2 MB (64220829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e96942188975f4caf1bbed035181af5c64b172e7d559a3f6863e996ebf6eec`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:c90a3008bb04be53ee3c539c5a5023984c492fabdb547221bd9dc93a6fb5f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202ad048c5ff060f3cb23da931e6247d947ceacaa0bd7154e24bbb8fcf8c1a26`

```dockerfile
```

-	Layers:
	-	`sha256:f8189a1897a52baae349eee8f4e650bb0d81b923d5dc7d9a13416092d3f8fe1b`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 176.4 KB (176362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fc4902400ea730216fc6e13d1548fbe152316bd407bfffccf559e306d7ee561`  
		Last Modified: Thu, 13 Aug 2026 19:34:36 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:5cad098a51279f06b12b28f1676583061abc0f2281781c69876ca4dbbc3eda23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69558945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c029d76cedda1d78a12315610e4dfa9c5ce2ee2078b81015022d2754e3208835`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:33:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:33:54 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:33:54 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:33:54 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:33:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:33:54 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:33:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:33:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff7a2b0e6b2d1dfd5e03d43423b655a554c2cfc1a795c306f8d7d8e7853b275`  
		Last Modified: Thu, 13 Aug 2026 19:34:09 GMT  
		Size: 245.6 KB (245577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009a0fff13fa32a5f6ee42bf65e9cb7a991649e1034836cd8bc0389d8248d5a8`  
		Last Modified: Thu, 13 Aug 2026 19:33:52 GMT  
		Size: 65.6 MB (65645219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024b2a0ee5a5e8af17b1638624d209338d18f60899c677134b21a00e3b4818f9`  
		Last Modified: Thu, 13 Aug 2026 19:34:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:c5c473162f1f5ddcc49e1e6ab7a79904dd513da155aa0f81a669efa5c840989a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 KB (201686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b020426a4592669bd31347bec3d5def11c27d38d4ae47098f8ada12ef22208b`

```dockerfile
```

-	Layers:
	-	`sha256:f3e369feab74fe4620192c275fe234dfb781b8072fb45dcf068ea055373b3abe`  
		Last Modified: Thu, 13 Aug 2026 19:34:09 GMT  
		Size: 176.9 KB (176915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e251941a0c6c302d9229a8c5ce6fd7298d9593cce4dd926b41d87c6d3d18b18`  
		Last Modified: Thu, 13 Aug 2026 19:34:09 GMT  
		Size: 24.8 KB (24771 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:71d16371c7c0865aa5c985291c1d12341158aa9b43bc66b282498a6fc094dd70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68959589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc740e17ab975e9a78fa9ed6eafe45408810b68591762393419cb3e4903aecd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:02:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:58:17 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:58:17 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:58:17 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:59:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:59:41 GMT
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
	-	`sha256:93dea1b66b9ab0862f63f7f6e84e84e54260cb687dc6a97b51c0c6a11c8af6d3`  
		Last Modified: Thu, 13 Aug 2026 19:59:12 GMT  
		Size: 64.9 MB (64899217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1b6357eefce86aa0ea718e7dfec7f6852c5f953e74883cf45f25a49037b424`  
		Last Modified: Thu, 13 Aug 2026 19:59:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6acae1a06abb6f1fee91578e829b76cd20b7269969987bb18270fbb7471afea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.0 KB (201037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04deaeed2b55e9cd883ac76de2c73409057969bd34ae66d944e0296af30cc556`

```dockerfile
```

-	Layers:
	-	`sha256:2c0aa0d7aaca977f94e0b0c29d15731f81329ce49e00ccb752aba3b829a6fabb`  
		Last Modified: Thu, 13 Aug 2026 19:59:59 GMT  
		Size: 176.4 KB (176355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa729a9ea632ad634a861b763fd15dd63873ac1c6b4e030da8a17999d3897fbd`  
		Last Modified: Thu, 13 Aug 2026 19:59:59 GMT  
		Size: 24.7 KB (24682 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:4862b727107086852daac9eb9f8704ed510c39c88778a95e4b0e96559886e63e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (69017064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35f18dff1cea95db0ad51bffab5876fdf8b59c4f49a5df63ee0a53c76ec22eb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:06:09 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOLANG_VERSION=1.26.6
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOTOOLCHAIN=local
# Sun, 16 Aug 2026 13:10:32 GMT
ENV GOPATH=/go
# Sun, 16 Aug 2026 13:10:32 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 16 Aug 2026 13:10:32 GMT
COPY /target/ / # buildkit
# Sun, 16 Aug 2026 13:21:57 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Sun, 16 Aug 2026 13:21:57 GMT
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
	-	`sha256:fada23dcc74335031cc183991f6dad7a6e2d29631642294a03560b8c7a02131e`  
		Last Modified: Sun, 16 Aug 2026 13:17:06 GMT  
		Size: 65.2 MB (65198183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a886212bc104120bf02e69181908d9d6a134641e1f63d4e1312a3b2c90895eb`  
		Last Modified: Sun, 16 Aug 2026 13:23:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:094d694b3083b90db4376be047d6f86573af492447434096d502bf9ca9b6a8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.2 KB (201206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e470a58bf1f171ce44ea58c2390bb0af06080ac7ad2181f28dcffe178a9acb39`

```dockerfile
```

-	Layers:
	-	`sha256:123b0af0061082245fae2808055d45569c8b36f2adf11af178c2d6413f676681`  
		Last Modified: Sun, 16 Aug 2026 13:23:04 GMT  
		Size: 176.4 KB (176351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8ef45e6f115f41342bfc53eee5fa6d886b2d6a3fb929722e649fc89c3de7d56`  
		Last Modified: Sun, 16 Aug 2026 13:23:04 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:a7f4768b53a60b5b886ebef0ed7344168476a978de5742bd580a98344f95390d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70530660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccc37060637a07cb99954adff0ee094842a8948af7c4358dfbe18a4f9402cdc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:55 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Thu, 13 Aug 2026 19:59:29 GMT
ENV GOLANG_VERSION=1.26.6
# Thu, 13 Aug 2026 19:59:29 GMT
ENV GOTOOLCHAIN=local
# Thu, 13 Aug 2026 19:59:29 GMT
ENV GOPATH=/go
# Thu, 13 Aug 2026 19:59:29 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:59:29 GMT
COPY /target/ / # buildkit
# Thu, 13 Aug 2026 19:59:32 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Thu, 13 Aug 2026 19:59:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f3b3d53cda7020ea953a95f980e347d64b60b0ae77b704cf1db57a77a04b62`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 246.1 KB (246149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb1f8b0dfbbe22ef84f2cb6e17624b40a7d50245301261dd5792762e808da02`  
		Last Modified: Thu, 13 Aug 2026 19:58:50 GMT  
		Size: 66.6 MB (66577104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e850b1bd0f27ac423d91d6bc430739ad93d0d954d54713773180de5c90b710`  
		Last Modified: Thu, 13 Aug 2026 20:00:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:399137657d66109ee10202f172bc17d22028ad48bef2415b7336011231520d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5a32276ce620aabc2b60fcfb262cad1f90a1685b9f14a1b6c1243a6ecd026f`

```dockerfile
```

-	Layers:
	-	`sha256:e8f355e1bf1618b64a615473989a36799d4ba0fe3b2fb18d69196526412080ad`  
		Last Modified: Thu, 13 Aug 2026 20:00:07 GMT  
		Size: 176.3 KB (176305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f38a50f28f041cd58c67b4b4246dbd6672c108381e290feaf5b4ac80de852817`  
		Last Modified: Thu, 13 Aug 2026 20:00:07 GMT  
		Size: 24.8 KB (24807 bytes)  
		MIME: application/vnd.in-toto+json
