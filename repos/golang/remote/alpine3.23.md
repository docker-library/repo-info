## `golang:alpine3.23`

```console
$ docker pull golang@sha256:7a93747afee80359e81dbe39c8a65037b147cada0262bf86f5b96dd06842b368
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

### `golang:alpine3.23` - linux; amd64

```console
$ docker pull golang@sha256:db442faa61ef505949b9c8fe5827a63c8f695c675655319676ff1b0b5c1f2890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75321034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec16b6616362e9cbde812d24a7ac1e8a0b9bdcec5743f21ac0a99555b019a56`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:20:57 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:21:04 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:21:04 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:21:04 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:21:04 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:21:04 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:21:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:21:07 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f3aae35aa8219e57a1f05602031b86e7049c3ed426d99252f5021642d3bb33`  
		Last Modified: Tue, 10 Nov 2026 18:21:22 GMT  
		Size: 244.4 KB (244450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d129a974dd319fef9f5f496bf3a04194c14ba0fbf95635c2d5577185dd0b2f`  
		Last Modified: Tue, 10 Nov 2026 18:20:43 GMT  
		Size: 71.2 MB (71223837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358dc0dd22f7f6fae84f0d874b9f41e51efe4b132fac53d7b2b631daebbb5d8a`  
		Last Modified: Tue, 10 Nov 2026 18:21:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:2f28dbd7da287cbe99b6697f5484b4e7c2013b6b2b9faa4c5b0c8306c773e9dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22787a4478b2784effe5f4b5c45e2458a645a5e9df4b6e95e2ce39d44bfbfeb1`

```dockerfile
```

-	Layers:
	-	`sha256:2eb4622f213bbc3cdfeb2c48b4c0a4d9a705e15f11971526593a82f33c0428ec`  
		Last Modified: Tue, 10 Nov 2026 18:21:22 GMT  
		Size: 176.3 KB (176312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d414d2693afcd9c5d674185bd7e30220630c779ef068a70b69ca0b20f68c48a`  
		Last Modified: Tue, 10 Nov 2026 18:21:22 GMT  
		Size: 24.8 KB (24806 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; arm variant v6

```console
$ docker pull golang@sha256:5d7e25b474eae5204d817de94fb7101094b04be94d2f3eb02055f10022dfae43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73536375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6f2b5be0d1848342336d126bb7c84f8e5469586eef2a685d44b1e1e90f4f12`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:18:58 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:19:12 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:19:12 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:19:12 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:19:12 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:19:12 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:19:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:19:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f5cbb0bb475be02e3c2824fdc74d88587169d70d7f0c2bcf9c867b03dd9f55`  
		Last Modified: Tue, 10 Nov 2026 18:19:27 GMT  
		Size: 245.6 KB (245580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fad61b71c7506e8c4e78fc7f0cb9d54a1cbab78a9ef19d5b17ba072f7022f1e`  
		Last Modified: Tue, 10 Nov 2026 18:19:29 GMT  
		Size: 69.7 MB (69732386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce5c2deea95da48e2f0b6394333a64ac9a63c66e7086c7351a720cf542ed9ea`  
		Last Modified: Tue, 10 Nov 2026 18:19:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:99e89cff5c01bd7673e5729eefc2bbdf871dfa87975e6d8cc04400757eff3396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 KB (24698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19da596e18b3cada0e654080b670da0312c1b0814d58c37e0c19af63632520ab`

```dockerfile
```

-	Layers:
	-	`sha256:765337874cd6d038492876ef1e48774fc49106dbd50167b2c2ddb21d484daaa8`  
		Last Modified: Tue, 10 Nov 2026 18:19:27 GMT  
		Size: 24.7 KB (24698 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; arm variant v7

```console
$ docker pull golang@sha256:39394298e9b6cb745ff2abced1af0600aade072b4b77032a9577e237f45b29b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73244038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22df5278c92918e7a91e22945fa9adcd498047b493149d0554dc10395aa6c1ee`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:19:52 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:20:02 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:20:02 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:20:02 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:20:02 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:20:02 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:20:05 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:20:05 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b29041ccc94a462b521f19ec5a3fe149cbc79301039131a79e1cfe335e18a48f`  
		Last Modified: Tue, 10 Nov 2026 18:20:19 GMT  
		Size: 244.5 KB (244516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ab9cea82d17d7b101f541f4ecfbb6f5af2bde3cf6c49715c9fc54b6864466b`  
		Last Modified: Tue, 10 Nov 2026 18:20:03 GMT  
		Size: 69.7 MB (69732535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8bb3b0a16983eedfa5a48e1ad86f45731f6291770e16f6984e1681384dae206`  
		Last Modified: Tue, 10 Nov 2026 18:20:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e0ac9403f025badcd32c8a30f9764a3e377fd780a57073f9c8ae2a0460ab6dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c38f04cfb52d6c8e0871b28fe48077ffd2164fb8da24e76d75fd32ff5c26a0`

```dockerfile
```

-	Layers:
	-	`sha256:bbe7a83517a40dbfef74186df508c131c50131769b99db1954edf67491b95257`  
		Last Modified: Tue, 10 Nov 2026 18:20:19 GMT  
		Size: 175.7 KB (175682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b5a28d31c2dfc5a38c5a41a995348f84b4e094b135a8061e550619f50bbdc5b`  
		Last Modified: Tue, 10 Nov 2026 18:20:19 GMT  
		Size: 24.9 KB (24912 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:e8dc692e150d236190821ebbf1a3fa402fa016032fd2d37be579bc823121f78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72221847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daea3fd11b71a83fe24bd1856e0b73a4243a9aab2374a1d341a90a38ad731ed9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:34:13 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:34:21 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:34:21 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:34:21 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:34:21 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:34:21 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:34:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:34:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc0dde2c0b1cb9f815005858004cb46afc0b2de76b5d7a7dd4450b2cc9cc784`  
		Last Modified: Tue, 10 Nov 2026 18:34:38 GMT  
		Size: 247.0 KB (246958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2570c62d304fb94a946f8e736b532b0adcafee91acb6c9c2d10806ac87bb96bd`  
		Last Modified: Tue, 10 Nov 2026 18:19:55 GMT  
		Size: 67.8 MB (67784510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8f4e2684d5daaf80e5dbd253dc8fa1906cb29cf19a166abf9d89b436d0702b`  
		Last Modified: Tue, 10 Nov 2026 18:34:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:24ccc008d52d0b3f37c84e5fa797fb2b8cd4bcf89da24488d1171cda8a57eeac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 KB (200659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a0a90832e26b40c2c2f911e122917da71c3e17199eb68e8408fba89395bc45`

```dockerfile
```

-	Layers:
	-	`sha256:e6d01d13354668cff9650856ba75a499bdc2d68735ec15d5d6e0b7a1dfb56158`  
		Last Modified: Tue, 10 Nov 2026 18:34:38 GMT  
		Size: 175.7 KB (175718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cba08a41cc8c08c8fa4bf402def41d19d4256ff928da88179159e9ef116e963d`  
		Last Modified: Tue, 10 Nov 2026 18:34:38 GMT  
		Size: 24.9 KB (24941 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; 386

```console
$ docker pull golang@sha256:e5a3f09fd4aaf4de6d098ca5004f34fe7488dc5c75ceb8af8a1af9310971e7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73328064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5204e3edd64d9bd86a48c3f79170e1bf8cd91cc85d7b3d0c6d8e27c045a58503`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 18:20:14 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:20:22 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:20:22 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:20:22 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:20:22 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:20:22 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:20:24 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:20:24 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f4ff6bc7bfab8e84d07ef26aeed77fc944501d238cd9277e89cf81b154df05`  
		Last Modified: Tue, 10 Nov 2026 18:20:37 GMT  
		Size: 245.0 KB (245009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74abf8975a8de6101097451affb3e791d46e0600b7751c037cf3467c0973248b`  
		Last Modified: Tue, 10 Nov 2026 18:20:20 GMT  
		Size: 69.4 MB (69404318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56175d22d4e5958f7e2109d477454b87404b8d22ef8b93caf53a47bada5748ff`  
		Last Modified: Tue, 10 Nov 2026 18:20:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:e43203ff0b8787e20414862c4557795f7d279c45582d72ead3e5e5d685534fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.0 KB (201042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23f7be0c100eb0711b6a5db237a3879230ed319b4f91e50d65fec21958d2603`

```dockerfile
```

-	Layers:
	-	`sha256:b751b0948f67cb68fb8735a751d836d58559698e7b769471c293c11c6909091c`  
		Last Modified: Tue, 10 Nov 2026 18:20:37 GMT  
		Size: 176.3 KB (176271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dcbf29c6e06fb3967e7e557f25fed684dc189c52779e1c6edd076a3c96a4451`  
		Last Modified: Tue, 10 Nov 2026 18:20:37 GMT  
		Size: 24.8 KB (24771 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; ppc64le

```console
$ docker pull golang@sha256:fa20f6ffa3dbec7fe8e016298cc74acf1faf7cb39fafe7eedd7a3c466555522f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72622996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8c63fd5c5bb94c99b52070e87367202efdbbd60c186dae30e70c5320dc6860`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 00:20:11 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:18:44 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:18:44 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:18:44 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:18:44 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:18:44 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:21:15 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:21:15 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f60c7ed18fc6569f0d2a8a73cebacb0270831f67455599a17ab919d20b4b9e0`  
		Last Modified: Fri, 06 Nov 2026 00:20:43 GMT  
		Size: 247.4 KB (247369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936ff7bdd356b6321d4d066574778945eb16f3eeb57dfe78006287ea6903e635`  
		Last Modified: Tue, 10 Nov 2026 18:19:53 GMT  
		Size: 68.6 MB (68556462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efabae3b768a8eb447e97dbd85f841e32c6d59de4c2f32a4e391f99594ed46ae`  
		Last Modified: Tue, 10 Nov 2026 18:21:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:8d2d0d9607f6d44591645aabe02b00b3b639eee0c967e4df332cf9fc46fd04f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022779f4233e36f2fc898c55e28d5cc35bb363512a5f766b87214aa15b50a35e`

```dockerfile
```

-	Layers:
	-	`sha256:6c5315761eb16155f07570fea527a48b8b806902a3a670e139fd3dff2bef6de2`  
		Last Modified: Tue, 10 Nov 2026 18:21:42 GMT  
		Size: 175.7 KB (175711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68cdf6bddba0e7251eb674d4fd6923a14ec19398f3efba903d213ff0191d7c64`  
		Last Modified: Tue, 10 Nov 2026 18:21:42 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; riscv64

```console
$ docker pull golang@sha256:78ed343d504b142f165b968c98045cefb8dd70bdb09f051f1c812cf876605981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72995602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bce8385dfbcd8a0fc2a9b9a9498706e3562152057d6194986c9d4daecb33e2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 00:25:52 GMT
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
# Tue, 27 Oct 2026 00:27:08 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 27 Oct 2026 00:27:09 GMT
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
	-	`sha256:eb54614ae9ed635bfb8e27e661f01b863c8fcc98d1049b51549da2b2bf52a7a4`  
		Last Modified: Tue, 20 Oct 2026 02:50:40 GMT  
		Size: 69.2 MB (69170985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed08beff3e28243488e9f6c0ec42e4b5b5200cbb859e00f657e582bccc0d5a47`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:6e2a713e4911e4ea690240c0210df4cbdb809249aaf9432739b8f988425b07fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 KB (200562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315c59c48ab30cf51245e1373e45a33c61a78b3a273e01438f3aa12d6ad28d1c`

```dockerfile
```

-	Layers:
	-	`sha256:0ccb4dab615ebc9176270381685a22846677eb5f7f6c1055f695f178c3be96d8`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 175.7 KB (175707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b96faa0962ca9549cbdb8a6c9eda52d6435f07df89d8e01db3f491669611a5b`  
		Last Modified: Tue, 27 Oct 2026 00:28:30 GMT  
		Size: 24.9 KB (24855 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:alpine3.23` - linux; s390x

```console
$ docker pull golang@sha256:c1f7518e73b2985ff5229403f601917ab3dd4289b72f10c6e126bd43f92a2135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74321814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12bb7567a891372a180fcfa3bef601a51908db16ac55e44b7f0e47e8a680bd65`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:15:29 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 10 Nov 2026 18:18:59 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:18:59 GMT
ENV GOTOOLCHAIN=local
# Tue, 10 Nov 2026 18:18:59 GMT
ENV GOPATH=/go
# Tue, 10 Nov 2026 18:18:59 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:18:59 GMT
COPY /target/ / # buildkit
# Tue, 10 Nov 2026 18:19:07 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 10 Nov 2026 18:19:10 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad4a33aa8e342bafb585fb160c4704d3ce3df95de811c1727c73785bcfdc32a`  
		Last Modified: Thu, 05 Nov 2026 19:16:17 GMT  
		Size: 245.6 KB (245573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7de8d0ebac894dd2fa17e9f4b4e946a13dbd458a348605d2271be16c9081a6ff`  
		Last Modified: Tue, 10 Nov 2026 18:20:02 GMT  
		Size: 70.4 MB (70357736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f216f8fd16166f4161d480f01c51482919534e840e3d8b33a4bfbb8b2dde269`  
		Last Modified: Tue, 10 Nov 2026 18:20:00 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:alpine3.23` - unknown; unknown

```console
$ docker pull golang@sha256:c1d274c1cf5da36a15729bd677f8422cb29fbfda5ce7c0918794acbba362a961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 KB (200791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07327e6f095c366d750c2644ed2c7cbc82dabab23790ee71ede43dee2bf0e3d4`

```dockerfile
```

-	Layers:
	-	`sha256:3696160cab918189854be7d96ea791427b2b958aebb209b256fa9497c018007b`  
		Last Modified: Tue, 10 Nov 2026 18:20:01 GMT  
		Size: 176.2 KB (176157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4528a734a46e816f6e9ff153248730d8e514c21c5b1b54a4686ef96e6232a051`  
		Last Modified: Tue, 10 Nov 2026 18:20:01 GMT  
		Size: 24.6 KB (24634 bytes)  
		MIME: application/vnd.in-toto+json
