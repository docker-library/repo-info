## `golang:tip-20260731-alpine`

```console
$ docker pull golang@sha256:7873010552246b0bdb830c4bfec386770c63d6bb10124aab07ec3c8f43a84862
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `golang:tip-20260731-alpine` - linux; amd64

```console
$ docker pull golang@sha256:422f67633830b5598bbd54f95bc3589da89f2fb157aecacada909fa817192912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106144359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc25112f5a6596279573dd63d53aa51bb75faf38fa2da3e5bc8425c252ad98b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:53:31 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:55:26 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:55:26 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:55:26 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:55:26 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:55:28 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:55:28 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8651a9f4c8c58b2285bf040227167fb941a179560db761bd0e33fca808b78d76`  
		Last Modified: Wed, 05 Aug 2026 15:55:42 GMT  
		Size: 245.1 KB (245060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92dc218be0df1f621943b2a33251205e331284a5f1a2efe83ac54f227d41676c`  
		Last Modified: Wed, 05 Aug 2026 15:55:18 GMT  
		Size: 102.1 MB (102052749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055f17a841f40e42ceb6ba5234f6898f1b0df1687f951c8c9dbcf16a575fa5ce`  
		Last Modified: Wed, 05 Aug 2026 15:55:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:d4e198095adc732be7211f50c73d7fd69b71e163b274a3227e41929fa389b3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c025657058ae43c6cb649d61134f566083be5c13e4432832ed478166190eea0`

```dockerfile
```

-	Layers:
	-	`sha256:166c07b48c715b10345c8aecbcad34da1b800202585a21602b971488bf692ec9`  
		Last Modified: Wed, 05 Aug 2026 15:55:42 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7623e538d7f873b997101523b65e46d3b4b659fcc7d80d52594f3e4d7ac8b01`  
		Last Modified: Wed, 05 Aug 2026 15:55:42 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260731-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:ca6292f7ec28e9242591082aa3f49a93945223c4e78685055b496b57c6e9116a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102241451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38cb71cc77ade9128d135a651220597e8ab5a236e9e01292cb8b25fbe659eff6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:52:01 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:55:08 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:55:08 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:55:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:55:08 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:55:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:55:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5f30f3c9c4b4abdcbd3b7f0780c5ce9bd062c609ca19eaf24991a445d8d9bd`  
		Last Modified: Wed, 05 Aug 2026 15:55:24 GMT  
		Size: 246.1 KB (246147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7fd0d2452fd46cfb4f46f4cfe93b5f3acb6f04c4751567c4c6b37f8eb9d372`  
		Last Modified: Wed, 05 Aug 2026 15:55:22 GMT  
		Size: 98.4 MB (98441695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d4a5ddef36da9928c387436be524efcaec385a069928f94576b6e1ea34272f`  
		Last Modified: Wed, 05 Aug 2026 15:55:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:140ef239aa85b22a260963b6b774d904d27f2ed5d291fe8ddd2c94085a33f7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbaff35f30534156f11b92b325c4a84266a088d85079883204ba7c7a9b1d650`

```dockerfile
```

-	Layers:
	-	`sha256:edfab35cd2ad98dc6ac0be6c442364e1d54f03bca128c9cb773cd1e422b805c2`  
		Last Modified: Wed, 05 Aug 2026 15:55:24 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260731-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:e01e0d8fc5d376e1d23941d1401009d90bfc073e462246b4c85c71799f5b9a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101636518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc41f927e6c4d7e1434837e2e80126fe34fd98bcf099ab3623fce2ae287fde84`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:54:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:57:15 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:57:15 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:57:15 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:57:15 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:57:18 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:57:18 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b3c1229011d1df0c94cd8eddb486d3ed32c4a775a0577d45886f1fa5022776`  
		Last Modified: Wed, 05 Aug 2026 15:57:34 GMT  
		Size: 245.1 KB (245124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8795e13e904689dc0ab9318643932dd285b18af802688ec1b65fe619ac97635`  
		Last Modified: Wed, 05 Aug 2026 15:56:36 GMT  
		Size: 98.1 MB (98130620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188d20f81fd462222fb25f3861794e24d69dc050656642e83f971da9f0d7da30`  
		Last Modified: Wed, 05 Aug 2026 15:57:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7e7efdd42b483a0a2995a71f8a6e5a3976c691aec27a040434446ca29db11768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ceb4a178fe53f92156dd0b089a82caaa8a916c7ca9251d65c214df74b0b2e5`

```dockerfile
```

-	Layers:
	-	`sha256:0a8a89b1c52871e7546a55b2cad4a85520cb68e365ee8d7216138116b7ce0e7d`  
		Last Modified: Wed, 05 Aug 2026 15:57:34 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0162b92db60e1a9f2ee1c60b0094aab5caf187b34a2e4e4245cd490830cb84f0`  
		Last Modified: Wed, 05 Aug 2026 15:57:34 GMT  
		Size: 25.2 KB (25222 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260731-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:9337a6d4e2be3871746b612b7b51496a64abf9d32b82ef71980c8b5da7ac570b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (101011326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9919c668bee3d357c28fe095cf2fc54638c2c5fcb9825960a5f958b5e3d9f753`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:53:07 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:55:08 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:55:08 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:55:08 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:55:08 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:55:11 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:55:11 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ce7fa7aabe1321be5db6fd9bf51d57736a73dda56fa542d6326f1070553f01`  
		Last Modified: Wed, 05 Aug 2026 15:55:26 GMT  
		Size: 247.5 KB (247499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdff13f3fedf010839e2a729c122f56b509e044d34c9941cb852f8ff20c34ecc`  
		Last Modified: Wed, 05 Aug 2026 15:54:37 GMT  
		Size: 96.6 MB (96580632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acadefd68ef0011cbb76df042cc926f1b6f8a88af17e789640d2c0752f182b4c`  
		Last Modified: Wed, 05 Aug 2026 15:55:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:73fdfa6e659fde5fbfefdfb450c9bc8be115a01618c423329798de91970fafaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de8d9f826dbf5fa225dd5e4a1cb1ec82ff71ad22c46eb61da3346e59e8725e6`

```dockerfile
```

-	Layers:
	-	`sha256:89f75b613089a16b0cf36d541d0f13af47ed6b71ad228f5e23ebd781c1accb62`  
		Last Modified: Wed, 05 Aug 2026 15:55:26 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1564b879d31a6bb57174d16fc0461b4fe88c93f6a5296392ea30c363f6963037`  
		Last Modified: Wed, 05 Aug 2026 15:55:26 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260731-alpine` - linux; 386

```console
$ docker pull golang@sha256:b0f61ea4953020ffadccc001f36445f73e45b5c0a9723f031f38b92a9289d8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104115086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9834abb621ae806f0e9e1914971b50f1792eaeeaedde607399d969eb0c1ac1`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:53:34 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:56:06 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:56:06 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:56:06 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:56:06 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:56:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:56:09 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20dba7de31e10b7defd9610ad8cbb92d839e784fc7911692cc8164ae24d609ab`  
		Last Modified: Wed, 05 Aug 2026 15:56:24 GMT  
		Size: 245.6 KB (245594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8655dcc4705ec6f39f4d42310692a1c4f0a76cb47c9b348543ca84dc02c212b3`  
		Last Modified: Wed, 05 Aug 2026 15:55:32 GMT  
		Size: 100.2 MB (100199193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b776b02c474e0a0531ad6c7154508216201c886ad060f4c8895383d3329339`  
		Last Modified: Wed, 05 Aug 2026 15:56:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:36f859541e84c995e0bc8a96e350c63599a0d20f99804434d89e69f64637227a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0b1ff09ef84610fcb5c10840484ca7cdb3310ce31748f56f80a70f11549909`

```dockerfile
```

-	Layers:
	-	`sha256:b65370a78b0aed4f2d5c423c6667d911fe96beae93e1c7b82e48fbe430571507`  
		Last Modified: Wed, 05 Aug 2026 15:56:24 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05fe143b0e560b11fe23a696022d7dd62c32f7dd7a69c282e20585f633e0720`  
		Last Modified: Wed, 05 Aug 2026 15:56:24 GMT  
		Size: 25.1 KB (25055 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260731-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:1db9e4eaa4e14b93fec9a82873ed594aaede6d8226c4f989deb838d68781f9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102806007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f8a140bd4e478b7d5ac7d749341804a7a303ea844d6aa77bbb9b76f597669b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 16:01:30 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:56:40 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:56:40 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:56:40 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:56:40 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 16:01:35 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 16:01:35 GMT
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
	-	`sha256:16a2672b142c1b932eb7d7a7ebc9a418d3f9a645350f02ae2af7b5962ead76cb`  
		Last Modified: Wed, 05 Aug 2026 15:57:39 GMT  
		Size: 98.7 MB (98744528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18af3c66dbcab2733ce8cd2a28c1336f7ec35690ca75e278136d9ff10db62fa3`  
		Last Modified: Wed, 05 Aug 2026 16:01:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:fd3aa97dd8531f9215f79adeb52b10fb195512bef57c932a3550d6fb581101e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb95005974a1b5f50e8cdff653170dfd9f81446e568ff8131efc26ab1d1d578`

```dockerfile
```

-	Layers:
	-	`sha256:285542fef89f9e449cde334284d545359733c0a57db76e8e24514556e603d4bc`  
		Last Modified: Wed, 05 Aug 2026 16:01:50 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02c90bde7afa5d7aeae64d5b5c42cd61c65ea2399a876c4775dd790b390ea5f1`  
		Last Modified: Wed, 05 Aug 2026 16:01:50 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260731-alpine` - linux; s390x

```console
$ docker pull golang@sha256:3f00ceb50e3a67282fbd7d4bfd077f74920a74912bc54b3f7b2de60815107889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104773810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3137a830f7b4e6e3877da9ca0ef7b56683028776d514c96cafbb5b377519eda8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 05 Aug 2026 15:51:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 05 Aug 2026 15:57:42 GMT
ENV GOTOOLCHAIN=local
# Wed, 05 Aug 2026 15:57:42 GMT
ENV GOPATH=/go
# Wed, 05 Aug 2026 15:57:42 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 15:57:42 GMT
COPY /target/ / # buildkit
# Wed, 05 Aug 2026 15:57:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 05 Aug 2026 15:57:50 GMT
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
	-	`sha256:58f202e3c8f8877cd40e5cac49c10b15cee7ca80212584d581876ae0baba95c6`  
		Last Modified: Wed, 05 Aug 2026 15:57:59 GMT  
		Size: 100.8 MB (100818185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe757ba31bc5c56f37a623e1f66fd386de310953c22fa609ed4d14ab23e797bb`  
		Last Modified: Wed, 05 Aug 2026 15:58:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260731-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:6c6ac7f66368816e31b23f264408dcef451ade83ce2f54aab6838ab1652c88b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf6d7ef0096553658bfd56542f233b45aaed86f8fa4eb7f7427a3cf38269248`

```dockerfile
```

-	Layers:
	-	`sha256:d261acd84a488de202b5c1ece14c0b47d9c7babd11c2262e50d2c20e5a379eda`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c78c9d2b2b8196c5ba7e0139e736a3c7df513079f1ab410eeb43f13e866d0a4`  
		Last Modified: Wed, 05 Aug 2026 15:58:43 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
