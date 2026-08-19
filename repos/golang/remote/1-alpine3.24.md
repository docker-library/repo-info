## `golang:1-alpine3.24`

```console
$ docker pull golang@sha256:28d89ee9cc0ff9fec75c82ca201e6bf7fdf9a679d4b7b24dfa04f2bb766bb468
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

### `golang:1-alpine3.24` - linux; amd64

```console
$ docker pull golang@sha256:bf9573d7c1d2b09992e4f893ea1ef30842854846bdb8ae390468f95ea6b09062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71399822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3affe72aa94b7a91f1e8956bca33ddf67bcbf9f02d61af1490142ee99b8c80`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:48:46 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:48:54 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:48:54 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:48:54 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:48:54 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:48:54 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:48:56 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:48:56 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbf4aee6bbb3850b92fe52557e4774388d45230d056794e085784549c4cb310`  
		Last Modified: Wed, 19 Aug 2026 17:49:10 GMT  
		Size: 245.1 KB (245062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f862ff06300a1a1a02de873a4916a50a5ab95003e0368047090a584dc363cb`  
		Last Modified: Wed, 19 Aug 2026 17:31:55 GMT  
		Size: 67.3 MB (67308211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7eaed125041904dca6ecbf1ab431ce09a35eebbc8eae9c43c4265a44c8e4a1f`  
		Last Modified: Wed, 19 Aug 2026 17:49:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:d5d7072e8d6339b2ae0be353e180318f39d04d1ac6f48bdf85c78049e78eae2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 KB (204199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844204b6a58dc014b5117d0f310a64dc975ed05d3106959b81b63626806340da`

```dockerfile
```

-	Layers:
	-	`sha256:1972b55ec2a7e622d81493848b6671bf1c2d480ae65cd1d0da5834f65e3b4232`  
		Last Modified: Wed, 19 Aug 2026 17:49:10 GMT  
		Size: 178.2 KB (178172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7867e410bcdf51793a4f6c8032494aedb2fe7fdc1790f2790e01044a68cb60ec`  
		Last Modified: Wed, 19 Aug 2026 17:49:10 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; arm variant v6

```console
$ docker pull golang@sha256:f3461a1dae4ac88cf63878e34c2eb82433e3b1763b12ffa556ff2d8091b794ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69643348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8533a7e7e04acf65b8bfcd192a4a634b514c55bbd773067cb450d3dd3fde9514`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:49:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:50:07 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:50:07 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:50:07 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:50:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:50:07 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:50:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:50:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb595f84f50fa05fca483be12275f70eb78cdf5164fdb63681b68fa714aae69`  
		Last Modified: Wed, 19 Aug 2026 17:50:22 GMT  
		Size: 246.1 KB (246136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699d5b3855957cb7eef07c76a72cea919221aeba411d386a9cf1511eb19afff7`  
		Last Modified: Wed, 19 Aug 2026 17:50:24 GMT  
		Size: 65.8 MB (65843603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfdc00464f9178b0371f0a8367adf912116ad09d996635d64f8c77e2b66f0ec`  
		Last Modified: Wed, 19 Aug 2026 17:50:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:41c132941781ea3cc4b54d393ff1d561c77befb99920983412151611050ef2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 KB (25949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbcbd73d8cfadf378935ca2099b8bb095d6ee3b102fd0271d50239cee2cccc23`

```dockerfile
```

-	Layers:
	-	`sha256:d74200507eb35c7f25e1a1644be3c1f95e4a18665ba43603fcc2c35a20b2183c`  
		Last Modified: Wed, 19 Aug 2026 17:50:22 GMT  
		Size: 25.9 KB (25949 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; arm variant v7

```console
$ docker pull golang@sha256:f86fd0726e84242cb2a0c3a134c2ac32d2ef7a84a8cc289c09a4549c69830d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69349874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e591aaaa9fdc7ce987088fc99083d53dce3fa2c6af05cf604695968d9c94a8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:50:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:50:38 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:50:38 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:50:38 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:50:38 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:50:38 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:50:41 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:50:41 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5f3eeae70f4faa0171ad4cfefc241eb100f9abcfede1cc5b0aaf53cf8a90df`  
		Last Modified: Wed, 19 Aug 2026 17:50:55 GMT  
		Size: 245.1 KB (245114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63db3652ddb4dc5e193831bd445cd140444ac80ea4d0902af61eab9e4bc1b2a1`  
		Last Modified: Wed, 19 Aug 2026 17:50:25 GMT  
		Size: 65.8 MB (65843987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a440a75879dda338b8c47ea8700d09a6710454c07da57be55fdfa0c568bebf50`  
		Last Modified: Wed, 19 Aug 2026 17:50:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:6097b22f56e3d1f6dff86f22a5d0b09e11f81500dc42c5c7785c49d799244476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec1ca80936d2a43199c40f67ac6ffb81fe54995d20d2d454980e8ce69b228f6`

```dockerfile
```

-	Layers:
	-	`sha256:b1bd868f95bc141d6fae809e6fd47c3b0566f3915b4eb35d8ea363610d4d9f50`  
		Last Modified: Wed, 19 Aug 2026 17:50:56 GMT  
		Size: 177.6 KB (177574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02d4a8eb4774165f39a7f15ca28fcf8ad80947d17b8b8e3a05abeef822b798dc`  
		Last Modified: Wed, 19 Aug 2026 17:50:55 GMT  
		Size: 26.2 KB (26165 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:c9bc58ef02c419539a6bab6f970844ece1dd9953baf409264f2fa429378e12a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68651739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f46040b67c4929d5622d90a2de34764a178944eccee7c70693d000c63147753`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:48:35 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:48:43 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:48:43 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:48:43 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:48:43 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:48:43 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:48:45 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:48:45 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83eee93fdfcddae7998dc02b28fd8d40b2083abc1159d01f1f7ced7a51fea54`  
		Last Modified: Wed, 19 Aug 2026 17:48:59 GMT  
		Size: 247.5 KB (247501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c655cc1f43ce5f189d82e57023ce1d05912f7cd5b6ae76647b40778ddad95934`  
		Last Modified: Wed, 19 Aug 2026 17:49:01 GMT  
		Size: 64.2 MB (64221042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78ccfa5db40ffb32321163d89777ad360a9bcc1143929ff7c3d34572698a2f8`  
		Last Modified: Wed, 19 Aug 2026 17:48:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:503e2d99094806a8116bb708d06b0d31a5762683e604c7f64b870783c736aa47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 KB (203835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314d512de7eec44a5ba213ab68960bca5f4159d3367f2c824e0de9a025011ad8`

```dockerfile
```

-	Layers:
	-	`sha256:286d91600938e2791b23103ad930b0c22bfdc146856bf38f9dd0f2148fe7596e`  
		Last Modified: Wed, 19 Aug 2026 17:48:59 GMT  
		Size: 177.6 KB (177626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4dd5e71a4c533a7fa646dca3017e7ef6f81b7eccb37f73a685b261241221f17`  
		Last Modified: Wed, 19 Aug 2026 17:48:59 GMT  
		Size: 26.2 KB (26209 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; 386

```console
$ docker pull golang@sha256:d656bd06b9db79780ad28d861becc432575da895458eee151e9e961409a05568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69561164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641201055804dfeae5fb9c7dcfea40fbede7e7fc5365ba46ceaaa415affc3038`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 17:50:54 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:51:02 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:51:02 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:51:02 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:51:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:51:02 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:51:04 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:51:04 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dfc5adf88b405b90d689ed9ca4885806f8e7801fc8f0e02eabd30fd6ed6f79`  
		Last Modified: Wed, 19 Aug 2026 17:51:19 GMT  
		Size: 245.6 KB (245596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7edb134c4733796b33fe93db5bd18feec5a7887055d9b63cb6574616ff6f319c`  
		Last Modified: Wed, 19 Aug 2026 17:51:19 GMT  
		Size: 65.6 MB (65645269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f867e4526b881ef7921bba4411a146f50e364c7080837cad26d4c05184384013`  
		Last Modified: Wed, 19 Aug 2026 17:51:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:a5ef7f143a3a514dc8b46a9e323eb1dc74559c5810c5c50c7d01910b1accf582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 KB (204082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8190e1cee80830f1a57ec32f7182c52a5456165314ec709cd5cf79427d6c7e5`

```dockerfile
```

-	Layers:
	-	`sha256:2c71c376ff0a4f386f64eac14648b888fe9c2cfaf678a2f944adfd280614a674`  
		Last Modified: Wed, 19 Aug 2026 17:51:18 GMT  
		Size: 178.1 KB (178111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00024a2cc34d03d8eb8b7aec408359740e080e8f4464be5dab008e95e0e5fb43`  
		Last Modified: Wed, 19 Aug 2026 17:51:18 GMT  
		Size: 26.0 KB (25971 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; ppc64le

```console
$ docker pull golang@sha256:4a7c8666c159978cae3f2ae2c0370084f23ba158ef6bc6309f8e53d208f9a4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68960846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bb69d3d6c7ae1117447ed6311c53b9b7cfad3dcda741e3e90b14a65611a32a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:30:50 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:30:50 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:30:50 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:35:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:35:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb707e334f9b253ea850be8dd7959cec06c4792387691b47b15cdd8682d4a5`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 247.9 KB (247919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958cbddf16dc304cf67db1893c84df3cec9a471d13eb9488ff01b809730c913e`  
		Last Modified: Wed, 19 Aug 2026 18:35:14 GMT  
		Size: 64.9 MB (64899368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acf70cdb9b55987193bb5af8c4b4e67eb0ab0e86e48c2b513ae23da3d6e4f77`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:8cf1bd10b3e2049e36235a417e59962e2dcdb2429cdfcb18d3d55e70fd4a3a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42bfd32284378ad9389891151e006f3e90b03c47ecbc22b94f5d1793cf5fc278`

```dockerfile
```

-	Layers:
	-	`sha256:584392edb2d6ca4a2ef06ea76a315e88e7c1b660fa65082e074d1cbd386ac417`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 177.6 KB (177595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:358b1cd18ce69a6b129b7f2b30293ac8eaded010a848e312766ef2ea331a20a5`  
		Last Modified: Wed, 19 Aug 2026 18:36:06 GMT  
		Size: 26.1 KB (26098 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; riscv64

```console
$ docker pull golang@sha256:035496d1db5294c7a7af274541765c39d7dd2266affd74c3a8445aab43355db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (69018435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42a1e5bc0886562f9b5b071d7a2ef0831db0a58436f75fae9ab1740989091572`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 18:03:01 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 18:03:01 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 18:03:01 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 18:11:46 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 18:11:46 GMT
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
	-	`sha256:114477b4c88c5490f91752364554f5f31a9f64dabdb50e05a57ae70bd462e4b6`  
		Last Modified: Wed, 19 Aug 2026 18:09:47 GMT  
		Size: 65.2 MB (65198421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bedd70a0e146e44555e2a1d444e3c85f8b90f577e3e1fb1b785e6d080984bc`  
		Last Modified: Wed, 19 Aug 2026 18:12:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:d05f59dbb6012d008de4b071e6dc49103fec77844d1035593aa4c4d543db1ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 KB (203690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44280c6999628b82d86062a3ee65f75dc7cc55af0ad5437ee3538a3be82155bd`

```dockerfile
```

-	Layers:
	-	`sha256:abd715495e29d65ef8f2456a1757e3f9401e1c4b88c551a974c1066a45b0a47c`  
		Last Modified: Wed, 19 Aug 2026 18:12:53 GMT  
		Size: 177.6 KB (177591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edd9db45ed18b9752c7ea36a77e7688f79519232838c5743f84c010330b864ee`  
		Last Modified: Wed, 19 Aug 2026 18:12:52 GMT  
		Size: 26.1 KB (26099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:1-alpine3.24` - linux; s390x

```console
$ docker pull golang@sha256:b9c6baecafb952150d417f0fe06d4c9701b44c9a1a692821ad2eb07db515ddfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70533054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448a2f9db1ffd6a3a66e40965a423ce33ac62a1f236c627330dd428e30c479d8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 17:58:30 GMT
ENV GOLANG_VERSION=1.26.7
# Wed, 19 Aug 2026 17:58:30 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 17:58:30 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 17:58:30 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:58:30 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 17:58:43 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 17:58:46 GMT
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
	-	`sha256:f9999a3a9ba6617eb455e6eb7f1aca503ccd1478207314507c31d67e324b401c`  
		Last Modified: Wed, 19 Aug 2026 18:00:14 GMT  
		Size: 66.6 MB (66577429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a175bef6084afffa6e703b7735c21d95570fd974cd0f884b85d77708208dc95`  
		Last Modified: Wed, 19 Aug 2026 18:00:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:1-alpine3.24` - unknown; unknown

```console
$ docker pull golang@sha256:c82ae54152b247f14a4b12f730dfe45d96b481f1b6dbbb2c440528942d31305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.5 KB (203548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:429c7071a4bfe7e20137d08f8a37d066352d9cad30a7a72d111fbd1a77b7a086`

```dockerfile
```

-	Layers:
	-	`sha256:8ece5452a62ea7c3876f738ac54d97fc2674abc3b107a158c7d1cb24c36f013e`  
		Last Modified: Wed, 19 Aug 2026 18:00:04 GMT  
		Size: 177.5 KB (177521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02072ee6a595bc2c3233352c6ec83e5d392791ac100b8428e775921bd0d9bf8c`  
		Last Modified: Wed, 19 Aug 2026 18:00:03 GMT  
		Size: 26.0 KB (26027 bytes)  
		MIME: application/vnd.in-toto+json
