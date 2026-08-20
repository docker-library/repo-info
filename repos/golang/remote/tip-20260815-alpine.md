## `golang:tip-20260815-alpine`

```console
$ docker pull golang@sha256:306e018e31b5fa69040d8884907cc9a16cfd8e4515c25026cb2ec92e53b49426
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

### `golang:tip-20260815-alpine` - linux; amd64

```console
$ docker pull golang@sha256:767df12d38dd0c693bb15cd11187dc162ce8ea8b43bab96314daab5992af12fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106280922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1512610b85265ba43b35a685e36087d00454988e9a95285f968c3b5853943f6a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:11:07 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:12:55 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:55 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:55 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:55 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:58 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:58 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937c2f4b31ed8acf372fa4a627856360fda56646e6d8b6ff91224764b68b0898`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 245.1 KB (245064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd4b108dc2887f1874e475aa93655dfb3cee66bdcaa485cfef77f44a1da802`  
		Last Modified: Wed, 19 Aug 2026 00:13:58 GMT  
		Size: 102.2 MB (102189309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96afea0a33f6f2cf640623579e6a7916f5a2f097d442a767c97d1501748c1c8c`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:8f3ac17ed79505187377759eaf2371b3b72d1fdd9fcd13f8764d0ddb5fe477be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71d9df7e37969a5da7aebced15285c775ff194638fb732dbf1f702cd11cf3dc`

```dockerfile
```

-	Layers:
	-	`sha256:18746b7a29b44240dd80e56ae0179d44fef163ffe37d70235ba29e1a50a105e9`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f167e3740d55f99a47cb493961eac4d7ae5f4b7832d3dc4528bde387bfc5dda3`  
		Last Modified: Wed, 19 Aug 2026 20:13:13 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:cd09b2173b3e26a1f8b4ddc85de87f3d897f4223fb2dfbdacc8f9b18be8c8de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102368026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e3134b2f5ff14f3a8c2d616535239d4e8ec21d13f6b8815c6c79ea2827a9c9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:13:28 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:16:07 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:16:07 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:16:07 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:16:07 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:16:10 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:16:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e638b5346e4dd9d5ded384b9a2cb2a329fb847a447d45cddb38020af22648e`  
		Last Modified: Wed, 19 Aug 2026 20:16:22 GMT  
		Size: 246.1 KB (246133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcc62bfbeb36462a50ce5b709d5263ccf49472a53306f8874fd2293a9404bc8`  
		Last Modified: Wed, 19 Aug 2026 00:13:51 GMT  
		Size: 98.6 MB (98568285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76779bc5b6b431ca63481304be14f1cc68f34236171948c47df44b4c38d957f`  
		Last Modified: Wed, 19 Aug 2026 20:16:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:37aee45c3a6deab1e0425e645aac32dc7f5eab37638b81cff745388d1a13912e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ce40843b104cb4b9b556a950ca110c6c4a8ff262f5da3f65ae30ad40e637db`

```dockerfile
```

-	Layers:
	-	`sha256:24060e92d876b6f8e0067be8afff05673ac559c4a62e23225bd233bf08202496`  
		Last Modified: Wed, 19 Aug 2026 20:16:22 GMT  
		Size: 25.0 KB (25006 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:c6920de8ea16a07fc88660ca1e7def72155726d1ef5a73784c66e22d53b060a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101753791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff40d73c2e5c657b9fe70a4eec8bb3fb3a9db645ccab185c9d405648632f9852`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:13:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:16:02 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:16:02 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:16:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:16:02 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:16:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:16:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9e738b24c3909420954a0cfb0ed4562c3c592dee795e24f45686101ba3fb9f`  
		Last Modified: Wed, 19 Aug 2026 20:16:22 GMT  
		Size: 245.1 KB (245110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fafa218b44764d9c306166742866e740ed62051825597c3c8a3bea4bd4709bb`  
		Last Modified: Wed, 19 Aug 2026 00:15:48 GMT  
		Size: 98.2 MB (98247908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854845f39f128c035ef1f4874a78eeb3a3a7a01d39b29419c07382d5a5be9618`  
		Last Modified: Wed, 19 Aug 2026 20:16:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:adb6b1083baa5484015161f2ba188627bf40f39582f76568374b929c1290f0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9e24476590b67a7c36e56ac6abf8efed70e44332d609cfb18e3fbe98bb4c5e`

```dockerfile
```

-	Layers:
	-	`sha256:df6b086544a832abb8cfaeecbff7beccaecda25496484f925918763194ea2d03`  
		Last Modified: Wed, 19 Aug 2026 20:16:21 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c36ead7690c82acd606c881477c3762c358cffacdf350d282df5795c43e16a0`  
		Last Modified: Wed, 19 Aug 2026 20:16:21 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:61214385d8067c866713749c8adedd061f1ff67dce8b799b54ba6c26b9c9fe3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101118199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba0b61eb290aa9c855a4f7840c47cc62be0e54b9c336b57d8dc120959a312af`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:10:48 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:12:24 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:12:24 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:12:24 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:12:24 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:12:30 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:12:30 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddf90eaee6da242ef1c459e2fe517f99b31abbfb24d97fda7b7b6bd6acca469`  
		Last Modified: Wed, 19 Aug 2026 20:12:45 GMT  
		Size: 247.5 KB (247502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad9b83df000c9f6c1608586eb67529963919d8f16a0c472bc1c8f6bb835fe29`  
		Last Modified: Wed, 19 Aug 2026 00:13:29 GMT  
		Size: 96.7 MB (96687502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbc9eb731e50bfdc57a62397b8b02aaee0b655bfb8bf71b9e9b2f31eaadeca8`  
		Last Modified: Wed, 19 Aug 2026 20:12:45 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:66edec3b2cf931674518261d8ebc101048076e6ad52369bdcdbcd2c256723bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d90ea7a3b2a363ac9f8fb3cf31ca3d20c98b4589b046813bb7953525921975`

```dockerfile
```

-	Layers:
	-	`sha256:86991839857571369830839ea84381e6fb90f21f479b3381cd6eb91e2b9a1484`  
		Last Modified: Wed, 19 Aug 2026 20:12:45 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33c338ea9f0aa1b3f73f37f3dd0b00a199185e692652879946c3880de1f4688d`  
		Last Modified: Wed, 19 Aug 2026 20:12:45 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; 386

```console
$ docker pull golang@sha256:a7d8ea9cfb72945102f99359a39e02ffb01a40e6d98180b7c567aa63d0383024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104249321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6de243f99b87efd7d52136f442a2a97508efe870d56efcc451f4719e2efe24`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:11:38 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:13:36 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:13:36 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:13:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:13:36 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:13:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:13:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ca3abf4b06b0ff90f58797d71c5b46e049e0908ed1c166b5e5e1fa8db3a06a`  
		Last Modified: Wed, 19 Aug 2026 20:13:54 GMT  
		Size: 245.6 KB (245590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b49515783d03dec2ef915a8f13b4f3ee4ca575a14e7cc8e02b6f494c0cf82`  
		Last Modified: Wed, 19 Aug 2026 00:14:20 GMT  
		Size: 100.3 MB (100333432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba35dd8b6a3627f16e1b028549a355ada34c66104d34fe1cfe65addc403d0e90`  
		Last Modified: Wed, 19 Aug 2026 20:13:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:3f9048455c8ea27ccebc29d422c90561606013365f8773bc5cc003d19ceb5f6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333bea7ef9d3c95fb12584955783d76d71bd4365dc89190ecee85c3c51f89330`

```dockerfile
```

-	Layers:
	-	`sha256:19c18321e5083a83af32064f86d48d0aefc127d74f64750d187c8593ff590e22`  
		Last Modified: Wed, 19 Aug 2026 20:13:54 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3108dbea3ef5eb7575f3301f667501e8efb4a2a675ff00b989470b2784f686ea`  
		Last Modified: Wed, 19 Aug 2026 20:13:54 GMT  
		Size: 25.1 KB (25056 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:d6d61d577f123364604627d1c1ae12947d709a717ff5627771a9714c813f9f13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102938377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65807115d8a5e1531e19bc80f2e3d8953fc025de3ef2ec0b84b809308f62f6b6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 18:35:32 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 23:54:25 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 23:54:25 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 23:54:25 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 23:54:25 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 23:58:27 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 23:58:27 GMT
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
	-	`sha256:6f2c0bde20aa559307571359bc3123d355d3707d58d3dcf348b04f5e47d6fad5`  
		Last Modified: Wed, 19 Aug 2026 23:55:20 GMT  
		Size: 98.9 MB (98876901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec6919cbc4097f10f74176673a66309b108c1797caf5c3a96f678a3e8ffbc97`  
		Last Modified: Wed, 19 Aug 2026 23:58:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:ef59794ff014c4747c3e9dbd2db842fb2533b77f76fb8fa62db5c46efb84a731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea40064a261182b3d5eed7cd5a9b1e268e529046e5100d6621494845cc319ef`

```dockerfile
```

-	Layers:
	-	`sha256:75dcc99d92b93f8ae9f1c4aee3147710dbf3ae35868f28e9f34821966a0fdc19`  
		Last Modified: Wed, 19 Aug 2026 23:58:43 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad8bb4d530617da37e98f96846fc492a9f3fe5766e6d17c5ce96a37b15e8ec7`  
		Last Modified: Wed, 19 Aug 2026 23:58:43 GMT  
		Size: 25.0 KB (24980 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:8329bc65c632d8c8a31bb4428bcb4f694b455fc74aa1ac849ac6d6c68756de0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103602872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680e79ccb3f82f9d0c218d05a9a4c27db0d0b0e1e4c4f213790e2dc7d798004a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Sun, 16 Aug 2026 13:03:06 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 01:38:45 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 01:38:45 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 01:38:45 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 02:20:21 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 02:20:21 GMT
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
	-	`sha256:8b66ced02a080459655fe9028bf92837cf230d038730ed43c848544aa262c9c3`  
		Last Modified: Wed, 19 Aug 2026 01:46:04 GMT  
		Size: 99.8 MB (99782858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297f7baea542cb0f1a174829815723cd73b1882f38a941d85491e8d8fa41c804`  
		Last Modified: Wed, 19 Aug 2026 02:21:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:39900dd72e1eb5e0e9dff125d6c119ed5fc1b5a2eca937ab1f7666d995fbe2c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7fc148192b57adb9fe46f86922d7a47e58b7c6f5da2a9613c687d95f745bcd`

```dockerfile
```

-	Layers:
	-	`sha256:d098dbc46c78f4e5e8c1d02ce73199f3121147a04cd8a282a5227ba5520be373`  
		Last Modified: Thu, 20 Aug 2026 02:57:17 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af5220ce2bfa74b71f03d8692041fb1b375b819d2465f036d480687d3ac26590`  
		Last Modified: Thu, 20 Aug 2026 02:57:17 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260815-alpine` - linux; s390x

```console
$ docker pull golang@sha256:432a52ac2147651fc6df8361916bedf0b9897304a07c5ecab19c427a2db25d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104903692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558aeaffb64971d83c0c5008d54c6995cae8edd95558871e033e9a28e2dd64ea`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 19 Aug 2026 20:09:07 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Wed, 19 Aug 2026 20:11:35 GMT
ENV GOTOOLCHAIN=local
# Wed, 19 Aug 2026 20:11:35 GMT
ENV GOPATH=/go
# Wed, 19 Aug 2026 20:11:35 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 20:11:35 GMT
COPY /target/ / # buildkit
# Wed, 19 Aug 2026 20:11:38 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Wed, 19 Aug 2026 20:11:38 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93ccd9ae03335755356126057274bf30b6def94d6e28512aed250032b16a8b5`  
		Last Modified: Wed, 19 Aug 2026 20:12:07 GMT  
		Size: 246.1 KB (246145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e711788918c346e1a3f433c8b9817ec45f0192b16aeb86ddced82c503184f525`  
		Last Modified: Wed, 19 Aug 2026 00:13:13 GMT  
		Size: 100.9 MB (100948068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e309a8aaa36c2570e5fbacf51d3031b4935e940a92542017cf688dbe98ca7b2c`  
		Last Modified: Wed, 19 Aug 2026 20:12:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260815-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:561263891813a5fd5e95c2cc70e14030e2abec08ee239293dc18c98c1903a6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2a5626f80689d8dfc26206cf68cfde822bf8880c05bb9b8fa285dc623f559f`

```dockerfile
```

-	Layers:
	-	`sha256:85daaf85edce38330dd011ae9e1f034bc2a5a76ce28f80f1b61bdb0b1174c8a3`  
		Last Modified: Wed, 19 Aug 2026 20:12:07 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e0bb27bc9f998766ea60b30229679c7683cb704af8619ff1052b95e17c2a6c6`  
		Last Modified: Wed, 19 Aug 2026 20:12:07 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
