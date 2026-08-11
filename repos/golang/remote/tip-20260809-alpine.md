## `golang:tip-20260809-alpine`

```console
$ docker pull golang@sha256:63146375c0f21b408b449c9232d8d356882491345f57d30df3dada1542b1f592
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
$ docker pull golang@sha256:255a5349c8a19b02e20d1c80e4d579b56f3d24c689d2b4ce77d0cd922fd236c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106214264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9aa660b93e30a3406d6f8eed8e9e062536ad2211386a023ffca805b26b4885d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:30:25 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:32:36 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:32:36 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:32:36 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:32:36 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:32:39 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:32:39 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7df2af491faa8a76980bd72092613f35f66b7cc00ac27e64a011f9a42cf974a`  
		Last Modified: Mon, 10 Aug 2026 23:32:54 GMT  
		Size: 245.1 KB (245056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ba79db5c7c8b5bee8dd5476917bcc23598ce562ecefd16aed54bc7ddb14e38`  
		Last Modified: Mon, 10 Aug 2026 23:32:52 GMT  
		Size: 102.1 MB (102122658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8b2d661ba8128afdd066b5c9ec124cf353ebb973678add49481bffb96b2251`  
		Last Modified: Mon, 10 Aug 2026 23:32:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:f39db5af9b8fccb89fc8edc1744c0adf13ec9e5b8c209458c4867764584e3815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5077b2b30bdb4f76ecc2ecd1b80a418003dcb6850aa44add661581798799333`

```dockerfile
```

-	Layers:
	-	`sha256:69ac0345ff22e0a6ceb15cc138bd7d7e8a978850f02d4e7d17b62ef8582a344a`  
		Last Modified: Mon, 10 Aug 2026 23:32:54 GMT  
		Size: 176.8 KB (176752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:959624a80df5a3d70c6b9c7d7065c124cd83b9ed3fc049f874a376b2a0f6581f`  
		Last Modified: Mon, 10 Aug 2026 23:32:54 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; arm variant v6

```console
$ docker pull golang@sha256:cd95698c6724fe735c2f54075ea22b9e40d3582fce4c39209482a8c12a52b7ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102306036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a488a911ad059963579f61c3395d58a7f1cdec340e30522ce8b45335b349c01`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:30:46 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:30:46 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:30:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:30:46 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:30:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:30:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1209517701bd8f2c5cedd44c84f343d0623d4e106898ecdd159be0c19468cd16`  
		Last Modified: Mon, 10 Aug 2026 23:31:01 GMT  
		Size: 246.1 KB (246131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed754ac8186171f4c9b6fbc6d89139f97ac9f0613c1da4a3e8d2702bc3458652`  
		Last Modified: Mon, 10 Aug 2026 23:30:58 GMT  
		Size: 98.5 MB (98506297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b554cbb0a0e5ae9559ddcc7f446f1691a5f6e3eb730f9d5a8ddb76e8f611c9`  
		Last Modified: Mon, 10 Aug 2026 23:31:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:9a9c0bed25231c2d522c86bfaa869879b5d15a0e33d7a4433eaf3b0f7d52aa8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 KB (25008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e38fc3d7827bb9b75b72b37d4621d98a85d898e56c93e540eaa8235b97bee96`

```dockerfile
```

-	Layers:
	-	`sha256:ac850394fa0ed0eaec3a071ff375a4ff825d771dec5eb94bc8ec4856e9bc1148`  
		Last Modified: Mon, 10 Aug 2026 23:31:01 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; arm variant v7

```console
$ docker pull golang@sha256:09a003d4730a25c518709bb1f7fb44f7db61f7b69747b52577909c77c6a441b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101701676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908afaf57bb159ff9b1f500af64b2fbf3a1025572b5fa71b46bc0cd9d55174a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:28:04 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:31:13 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:31:13 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:31:13 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:31:13 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:31:16 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:31:16 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca8fb525c948e9535ebbb0070fd800e038cb757555903a7b31b2f5bab530f4c`  
		Last Modified: Mon, 10 Aug 2026 23:31:31 GMT  
		Size: 245.1 KB (245120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fc34d5d8629d6029c50a31a63e1c2cb81b094a58e2d08a759a5cff36008918`  
		Last Modified: Mon, 10 Aug 2026 23:31:34 GMT  
		Size: 98.2 MB (98195783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e5b5950e617bb7d06dca42b294797d2ac97d9228caff25c69ed551d9084415`  
		Last Modified: Mon, 10 Aug 2026 23:31:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:6d5a2cd4eaedad95a502160e0f1c02230f831aac048cc49235a89705c048dd13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cdf0177981ee2f8d4525cbcd8037fbc28100c2b02a705382824d712874db06`

```dockerfile
```

-	Layers:
	-	`sha256:ea84dd21983c9a107d396da7329af3b8c6e266a5a910f373582193130d1914e3`  
		Last Modified: Mon, 10 Aug 2026 23:31:31 GMT  
		Size: 176.1 KB (176122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cec3bd83c5706e5b9fc88b1902ea298402250f5de2adb31661318e0b1889b68`  
		Last Modified: Mon, 10 Aug 2026 23:31:31 GMT  
		Size: 25.2 KB (25223 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; arm64 variant v8

```console
$ docker pull golang@sha256:ef9cba66520cac9e0434d90a497a67ac9d6bdc7f05e1253622678a3451bbf920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101054774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594ece7ce38f3d952ea9f5b7ba271958e556306e95d8a63ed51aded60ad933b8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:28:51 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:30:47 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:30:47 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:30:47 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:30:47 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:30:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:30:50 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f64f4af17dedd041152cb22cbd8fd8776c4f519428045368a458f6a1cf53160`  
		Last Modified: Mon, 10 Aug 2026 23:31:06 GMT  
		Size: 247.5 KB (247510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d818a4d1d5c30faebf580653ca52f803e6bfa975af792681a5892e0202fba`  
		Last Modified: Mon, 10 Aug 2026 23:31:08 GMT  
		Size: 96.6 MB (96624070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c8305aac0ecd627648a6bca459867daf7778e13badaf322a8fb4c68e382567`  
		Last Modified: Mon, 10 Aug 2026 23:31:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:98b41dec54061bbb5e435ad20e54fdba231ea8dba834bbc066689c2d0bca9789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 KB (201413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb63c19bdb886593871548a26cfc7b857324a9ec39b7df1be2b1edb90604527`

```dockerfile
```

-	Layers:
	-	`sha256:c265c9988795bca7adf64157195a705e06ade13cac4642c795f666df6f6f0b6c`  
		Last Modified: Mon, 10 Aug 2026 23:31:06 GMT  
		Size: 176.2 KB (176158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a52e247daa617d8b4d6a0f9a6c36a10a26c9166390a4f4c9d81e8684894d8910`  
		Last Modified: Mon, 10 Aug 2026 23:31:06 GMT  
		Size: 25.3 KB (25255 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; 386

```console
$ docker pull golang@sha256:2015d9c569437142ad777e6149471cca73622b138735ee5dfc1e99795ad31084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104178853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29d470722be2e1be7a313cb5edacc476a10f6e768c65954921be330bfea0c54`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:07 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:29:20 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:29:20 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:29:20 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:29:20 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:29:22 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:29:22 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e70d7822b6a5ac1827576f569ec5642d3861f55ddb68fc2943580d442e0f420`  
		Last Modified: Mon, 10 Aug 2026 23:29:36 GMT  
		Size: 245.6 KB (245590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3193c8848ea73ab15af846ebf6ea81cd7e12867309e713849b7d248d32dc3451`  
		Last Modified: Mon, 10 Aug 2026 23:29:39 GMT  
		Size: 100.3 MB (100262964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b4954205f7ac8860a311a85ce69d0cc302eddf04371186a5e4b05d3ee1093e`  
		Last Modified: Mon, 10 Aug 2026 23:29:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:7960c4de0010c8378e6d40bf5777a38e300452c7dc9c322829e43977bcb9688b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 KB (201766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e4e93a30814341f1126c1a47194aac0903bfd4a630b458492547d8264d9949`

```dockerfile
```

-	Layers:
	-	`sha256:367a5ca5f224425fe83831c04d394734f5f1fe2aae6ec82557743967425e599c`  
		Last Modified: Mon, 10 Aug 2026 23:29:36 GMT  
		Size: 176.7 KB (176711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0dafbfc430443a56e3d77e44855a5ffd8f38070bdb8ac0b4a8e2a766411a824`  
		Last Modified: Mon, 10 Aug 2026 23:29:36 GMT  
		Size: 25.1 KB (25055 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; ppc64le

```console
$ docker pull golang@sha256:4b8d88e362565f24b3f5d9946d08660493938688135dba7fe77943cfb9414f1e
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
$ docker pull golang@sha256:19933ffc038ceb34456944b40905ead07d01d34c2f5a187a1c719bfe3a3a6c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.1 KB (201131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb45ffc7f95140674ddfe026dfcfc1a1705e231f8dfcc7225be0c0eca84c9c6c`

```dockerfile
```

-	Layers:
	-	`sha256:85b16e8f4fe52b731411971bb5f177d9ae3c9c73ef311f78d594c2d8c355eb33`  
		Last Modified: Mon, 10 Aug 2026 23:43:21 GMT  
		Size: 176.2 KB (176151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6644df94589b2f6c35994d41d7210e4829509da8c78b24d0041467d5b7d184f`  
		Last Modified: Mon, 10 Aug 2026 23:43:20 GMT  
		Size: 25.0 KB (24980 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; riscv64

```console
$ docker pull golang@sha256:1f66cf0ac891884e0ff9c86295531c6ed3d65769160962999b5805a2cd8d7f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103524015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2500efa24718cf77a22109775c3d63eca4c617021789a0118f4fa4df5926ba`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 11 Aug 2026 02:10:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOTOOLCHAIN=local
# Tue, 11 Aug 2026 02:53:31 GMT
ENV GOPATH=/go
# Tue, 11 Aug 2026 02:53:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 02:53:31 GMT
COPY /target/ / # buildkit
# Tue, 11 Aug 2026 02:53:49 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Tue, 11 Aug 2026 02:53:49 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa80ba61dabb0d5df80b59b1fdcd37cb2919736e42d4d26c2483b82254de471`  
		Last Modified: Tue, 11 Aug 2026 02:56:47 GMT  
		Size: 245.5 KB (245491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816adc9907e95ba61a538b68e3405fd060c36e77845839e12392cd93ab7a3a04`  
		Last Modified: Tue, 11 Aug 2026 02:57:01 GMT  
		Size: 99.7 MB (99704008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29de4127456103c812c5ae27623467d8d7b7cda750d39a812d60d2a9a6f115b0`  
		Last Modified: Tue, 11 Aug 2026 02:56:47 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:fbdecc7eafdc2097d98b2a1d233668fa6d1f07614c1e44afa398877e078a5039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 KB (201300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:046b72085c3b95cfb2eedbc330cf5d8cedf1dc53e2a80b6b29bb159d4ac44ae9`

```dockerfile
```

-	Layers:
	-	`sha256:3955c372569c4717c720bb50290af8a0436510d7060d3247dd1684fca71b094c`  
		Last Modified: Tue, 11 Aug 2026 02:56:47 GMT  
		Size: 176.1 KB (176147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b935ac2b6281e466a18f3692da394f7fe77bcd1a5798c348e973eba1527a8b08`  
		Last Modified: Tue, 11 Aug 2026 02:56:47 GMT  
		Size: 25.2 KB (25153 bytes)  
		MIME: application/vnd.in-toto+json

### `golang:tip-20260809-alpine` - linux; s390x

```console
$ docker pull golang@sha256:9109f6ce506cb2ce8610d94f06e5fd4821db746c9075ec5dcb7462d9b79733ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104841066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b8469edf41287769f388840f9ba71ea7b5d80c8dbf4634d7cbd73d292c5a1a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:45 GMT
RUN apk add --no-cache ca-certificates # buildkit
# Mon, 10 Aug 2026 23:29:31 GMT
ENV GOTOOLCHAIN=local
# Mon, 10 Aug 2026 23:29:31 GMT
ENV GOPATH=/go
# Mon, 10 Aug 2026 23:29:31 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:29:31 GMT
COPY /target/ / # buildkit
# Mon, 10 Aug 2026 23:29:33 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 1777 "$GOPATH" # buildkit
# Mon, 10 Aug 2026 23:29:33 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec59ab5f74794c8cfecc583bfdc28db6059a667b22fcacff02204c8ccd0ce70b`  
		Last Modified: Mon, 10 Aug 2026 23:29:56 GMT  
		Size: 246.2 KB (246154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2585e6fc3b735d1a705331aed1b18733b87573ef16def0f8645f8bc7b7f32dfb`  
		Last Modified: Mon, 10 Aug 2026 23:29:58 GMT  
		Size: 100.9 MB (100885433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77bf8b4b738f170c44e8f7c1aa917723caa11633ad7771a95673806c8ecf9f1e`  
		Last Modified: Mon, 10 Aug 2026 23:29:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `golang:tip-20260809-alpine` - unknown; unknown

```console
$ docker pull golang@sha256:1e90cfd5f6a98783e433e2e44578ae8dade358e9343ceb865c3db68a68610092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 KB (201948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91006f5a35df97bf817d6f7e043882deb980d69558461892e54d8b608364bac`

```dockerfile
```

-	Layers:
	-	`sha256:49c48d1af5d2ffc26c0aba2300810a4203cd3c649cde51027ba74fcb065e3cea`  
		Last Modified: Mon, 10 Aug 2026 23:29:56 GMT  
		Size: 176.8 KB (176849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da4ce8b9de038c4f6092b67ded25bb5a6b9e5094ab4214e36801190cadfad20f`  
		Last Modified: Mon, 10 Aug 2026 23:29:56 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json
