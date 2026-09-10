<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:2`](#nats2)
-	[`nats:2-alpine`](#nats2-alpine)
-	[`nats:2-alpine3.22`](#nats2-alpine322)
-	[`nats:2-linux`](#nats2-linux)
-	[`nats:2-nanoserver`](#nats2-nanoserver)
-	[`nats:2-nanoserver-ltsc2022`](#nats2-nanoserver-ltsc2022)
-	[`nats:2-scratch`](#nats2-scratch)
-	[`nats:2-windowsservercore`](#nats2-windowsservercore)
-	[`nats:2-windowsservercore-ltsc2022`](#nats2-windowsservercore-ltsc2022)
-	[`nats:2.12`](#nats212)
-	[`nats:2.12-alpine`](#nats212-alpine)
-	[`nats:2.12-alpine3.22`](#nats212-alpine322)
-	[`nats:2.12-linux`](#nats212-linux)
-	[`nats:2.12-nanoserver`](#nats212-nanoserver)
-	[`nats:2.12-nanoserver-ltsc2022`](#nats212-nanoserver-ltsc2022)
-	[`nats:2.12-scratch`](#nats212-scratch)
-	[`nats:2.12-windowsservercore`](#nats212-windowsservercore)
-	[`nats:2.12-windowsservercore-ltsc2022`](#nats212-windowsservercore-ltsc2022)
-	[`nats:2.12.15`](#nats21215)
-	[`nats:2.12.15-alpine`](#nats21215-alpine)
-	[`nats:2.12.15-alpine3.22`](#nats21215-alpine322)
-	[`nats:2.12.15-linux`](#nats21215-linux)
-	[`nats:2.12.15-nanoserver`](#nats21215-nanoserver)
-	[`nats:2.12.15-nanoserver-ltsc2022`](#nats21215-nanoserver-ltsc2022)
-	[`nats:2.12.15-scratch`](#nats21215-scratch)
-	[`nats:2.12.15-windowsservercore`](#nats21215-windowsservercore)
-	[`nats:2.12.15-windowsservercore-ltsc2022`](#nats21215-windowsservercore-ltsc2022)
-	[`nats:2.14`](#nats214)
-	[`nats:2.14-alpine`](#nats214-alpine)
-	[`nats:2.14-alpine3.22`](#nats214-alpine322)
-	[`nats:2.14-linux`](#nats214-linux)
-	[`nats:2.14-nanoserver`](#nats214-nanoserver)
-	[`nats:2.14-nanoserver-ltsc2022`](#nats214-nanoserver-ltsc2022)
-	[`nats:2.14-scratch`](#nats214-scratch)
-	[`nats:2.14-windowsservercore`](#nats214-windowsservercore)
-	[`nats:2.14-windowsservercore-ltsc2022`](#nats214-windowsservercore-ltsc2022)
-	[`nats:2.14.6`](#nats2146)
-	[`nats:2.14.6-alpine`](#nats2146-alpine)
-	[`nats:2.14.6-alpine3.22`](#nats2146-alpine322)
-	[`nats:2.14.6-linux`](#nats2146-linux)
-	[`nats:2.14.6-nanoserver`](#nats2146-nanoserver)
-	[`nats:2.14.6-nanoserver-ltsc2022`](#nats2146-nanoserver-ltsc2022)
-	[`nats:2.14.6-scratch`](#nats2146-scratch)
-	[`nats:2.14.6-windowsservercore`](#nats2146-windowsservercore)
-	[`nats:2.14.6-windowsservercore-ltsc2022`](#nats2146-windowsservercore-ltsc2022)
-	[`nats:alpine`](#natsalpine)
-	[`nats:alpine3.22`](#natsalpine322)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:nanoserver-ltsc2022`](#natsnanoserver-ltsc2022)
-	[`nats:scratch`](#natsscratch)
-	[`nats:windowsservercore`](#natswindowsservercore)
-	[`nats:windowsservercore-ltsc2022`](#natswindowsservercore-ltsc2022)

## `nats:2`

```console
$ docker pull nats@sha256:c50b0a773c6c8d033cad54f7c53cb97fd6e09b3bfc1accda7cd4fa94e19e9ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:2` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2-alpine` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2-linux` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2-scratch` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12`

```console
$ docker pull nats@sha256:0764f1952d72e92e35ad8b152da0f9652a49cb1186b6445fdd45131d81ad6d7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12` - linux; amd64

```console
$ docker pull nats@sha256:df46ea780c940a8c2a2b0e83fa62a9939104eb323047cd03f3d7f8f2139bd706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566fb7b965b87fffc52ddd878d8d7cdcfbd6445dc3d1f28fd10a7daff6116732`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:16 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:371340d3f6f60501a9689c2d0e94e94ff183ea90598301f5d46c9cbbad3166f9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.7 MB (6685589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab1f952c71baad7dec6d69d4866ece03cb2d44077d152b320791cf7981c14b`  
		Last Modified: Wed, 12 Aug 2026 17:26:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:7ec47f40565cbea1243e9995a6909690edbd7cd53d0aae2278c7cf7d8f5f6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f5e97c70450f6ebd9e614c598caca3bc2e7f5d7d9739a1cb5f788305ba283`

```dockerfile
```

-	Layers:
	-	`sha256:c9ff23d5a8dd18477f46273276a5f2e809236c3cca548b20fd4e172b7700009d`  
		Last Modified: Wed, 12 Aug 2026 17:26:20 GMT  
		Size: 8.7 KB (8667 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm variant v6

```console
$ docker pull nats@sha256:c6bd56168220fdb7091f2779fc8d4d1384fd63737ff68746c0375d3fe3426f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b536f9442ba7f311fb440a4a721affad27002e3c9406a015d931eeaf94769764`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:08 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:08 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f981a2a4730272936e9279c7d594b67dd2c74835c71445a8a57ca675f58403ab`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.4 MB (6425878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcfaa422b25b31686caa1173e783bb9296db510427f0eaca9b550c28a7d421`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:30326ff1d2b0fcaf6cda1e827f6206a4307b54a58b123e02b3de8981ea7db0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c9eeb305ce0a73f09aacc6376771b7df979376f59b0e39c39668fe613909d6`

```dockerfile
```

-	Layers:
	-	`sha256:a52c57120896f0040cf73c914b476ddfbf730e0626815a74dca635475b13ffd7`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm variant v7

```console
$ docker pull nats@sha256:1660b523824341e98a5fd4ce15b81ade1463fc0b63d5cda2b2de1a8bf56e2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b2b1e619b6bd3c7a8a0f5fccbc52b9a60edee1694199a23f67d9eea905fae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:47 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:45047b2317bfad685c0878c92f69b4a29f1ff7da7feeb44bc5584076475c7ef9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.4 MB (6414955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7fd15140a5121cdf7ba31a1d8a2d772213580edc19c722d2611199a783035`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:a0891955b4c82957462ab2d199e57aed0013547f08bc4060729b41b6dd5cbc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389381b73381f63396e4e2a9ff96478101a9b679291fec10d26df5f981fac93a`

```dockerfile
```

-	Layers:
	-	`sha256:9564d93498cace4f32e62d9b0a573de19a79f4449553b3e01fa690aee48def18`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:98592a56e0411d781e39aaf3821bab9268882beb169c9049f38afee965bdee42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6081899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0f586b4ab7d35db5764aa5b62fadb6df003f095fef91222ca8258efe9a972`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:11 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:018e4fc40fbd0426812af10168d2ecaeef8bc4e3617c1947758e4bb921e0201f`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.1 MB (6081390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d03f2d04fe7930bb3f4fc4c4151ea1147eb85f6aa1f0eb0e5a9e526cf02df6`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:e912697eaa2de4c95f9c787f536d02ee564b6bca28914201bdd4eaf08086b317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa42f57204e79766c86d6c022add37dd04d1686baabd70ccce9de73fbceead`

```dockerfile
```

-	Layers:
	-	`sha256:1ac01ddbf604307cebe42ef9bb480f3870e8f5ce261d2b1e33600aa1a9a53f33`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; ppc64le

```console
$ docker pull nats@sha256:05d9e3340738335846fb20ea9112f117d3ad895420cd2072cb8065901f5d359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6142223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff52d6d8a6cc174650ff1fb7bb1f6702d04e6dcffbe7c006dfce8a4cd1acc61`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f4756f4fa9daae00cc3f3d2fa7d75bfc36e6dc7481194afacb0f2e284bf15bf6`  
		Last Modified: Wed, 12 Aug 2026 15:59:27 GMT  
		Size: 6.1 MB (6141713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:a448bb01dccf8bfa30b1eb86ce8ce92e1ab6de7a1b3f3bfb0748bace62c63458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb04851be7abe7d7f26948e72b35448f2a03706340cb3344c7fcb16d9ff69f8`

```dockerfile
```

-	Layers:
	-	`sha256:d4dd7efd4fa1c95cfffb2437fa6940825fed374ebec9014440d76d3575181a34`  
		Last Modified: Wed, 12 Aug 2026 17:25:02 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; s390x

```console
$ docker pull nats@sha256:b49e1f553ead4387c3d459b2749defdfc0ab810126ac8d812163e638bf2a7d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c7d642b8b06e2c5e968e6e20e9f297cdee018c32c8da135c631369e01edf3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d13fbb3bf80132e46071e761ab339a2ad0ce1b929983f59c1280049c06e83f02`  
		Last Modified: Wed, 12 Aug 2026 15:59:28 GMT  
		Size: 6.5 MB (6536116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8aa79d4a519ae7eed567666f15e9107be223e6cef18983557ae8343900d2b`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:2462daf6048956687f78a9981a6c30a1e27f46b82bda8b9d4f68d2626767e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec238227066b776070c7766ed2c1014eb651a01acb0ad7998d01d10b797b08`

```dockerfile
```

-	Layers:
	-	`sha256:e47c1c66e88e08faca605002b10c26e26e38ddb135b3cb8ef13e86d9d4dda132`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:519eb6640fc50f1f89fb61e439b43154e992225e25c91db7477952a148fcf95c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131521427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be33bae46d0e23c7f4d5b3fdc2436c66a9c667de5b8234e0413d858a194f4f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:19 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:53959e756620e379eb33126252a21744ff9c0bfd8cb27505789f55c455cee5b5 in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94664065212777d133e0eeddf6708c4f56d2246d79a69d5939305adbd2c092bd`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26533e466f944e6ccda1cfa8920302cd59b591eba622c9e81fd8aa85dc76ef58`  
		Last Modified: Wed, 09 Sep 2026 23:19:26 GMT  
		Size: 6.9 MB (6878009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b1f3ae54861de5bb4a76bb8abb5c6698b8055e6f11eccfa6530c553fffe00`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393639919a541acfec66c28af387680e583660fb14ef8d224926dfda3ac60fcd`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a6b57af3ffbea5ee61d7b355af96dc12bc45e574e6a6b4b91b1d0e6f26c46`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120fbd4f45242e40f2a9d0b53b92189ce33bdb5b487364ee3012186678f9623`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-alpine`

```console
$ docker pull nats@sha256:b270f5e2428354c0335612694d7dd2fb588148e567a5757fdff325ef9c9332e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12-alpine` - linux; amd64

```console
$ docker pull nats@sha256:e01e9f09c03f60a8ded4785444ec4c5b2fd18a773b8b874daeefeff559119316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10885307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f6ccc9fd034c76ac3cee7faed6c5fdb874fd333f477b91f52b4052f6669ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eb99f85997befa44e474b78441f1157abc1003fbb2e81120d8f5ddb8bd54e7`  
		Last Modified: Wed, 12 Aug 2026 17:23:41 GMT  
		Size: 7.1 MB (7096741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ff0bd79ffd6fd431f455b3c641c82c20ce704cbc7c63566ab189cb8408bf71`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df6c36ce2cfddd56fe15bb3b52c286d52ed54974273b8fff74be3dc6d199331`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd7b6b9d268b4f710ebfa82c87dc953c7483fde8345ab0ff74f19764617a96a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15840eae984099c1855eb12e05bbac71f58f02c14d60dcf67ee0a2be9d29960`

```dockerfile
```

-	Layers:
	-	`sha256:a2493cff6e6153d1620f84c697ae05d30c0d6069a662e8e799911a7f0e10ca33`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:57d7a7f14ecfa3123b45aac3079d675fd18c76ff51fc705e1e21481207003a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffcfda912b117dc08cb3f2b45e72f8707dd97c969085fbc6b4e815f924f50e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c205cf35481873ea7f69ae706d7395dab34115545209a014b46e6c6f20a0ef5`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 6.8 MB (6836256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb4692f086d26ffb2da428fb767e0bd78f9166cf36310bf09f7560d2300a8b0`  
		Last Modified: Wed, 12 Aug 2026 17:23:00 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5660227130f96f237d17037f1dad8d8a12ec89c1272d7172bd884d03505ce1`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0cfd9893545b0ecff3b4d69e5a33539c339db782bf602da45512ac01b2692d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d41321c2e67ea5d28102fa5958b9a6cf496f348cfe71940e878c5b51e31ed6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9d1112453a1edb2fcf43fc7b1ddb2d6fb6b918a03cf44014678c327d59c342`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:76275db569c898706b2d5346013c48ad22ef0a0be3ce8c6c7691b149fdcb1e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10035351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d9a94d8e6eb71e68bd3fa6cc95fafd153f772d736effd3311c65778a178191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88706ca7ac1083caeeaec677085b142c6f6b055b22cb6e646776fa343a6bf6cd`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 6.8 MB (6824766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73e305da04d72702957353835c13aabead16a5be167692e802af687309c1138`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d9ea53f7e7eb51afdb4a96170d52f3295f4395e98f8dd509dcfd519f80c10a`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:b9d49c901dea16aa291f7a527611d42161235e41e78b3a4b9170f47046e4e59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704f8169abe2a9d44a4d37dbd10cb1f0d237c8f95c5a31fec1f1195077a3ea94`

```dockerfile
```

-	Layers:
	-	`sha256:72fe7ec18c98e2fe029f49e342fa9efcc6ff22e44a1faa15431d88660a190c9c`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a1f26b77b1175e6e22afee44b8787f750c2e13fc81056c266fbe4417caf22b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10613250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3050faf8121e66a65fda010f7fa3d3d280a81c5c9e5e01fa2da4d2fa87ff7b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dcae21a34102dae106f9d1bf4cddffe03c17bd3a3503baabd5843c8a4f8eb`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 6.5 MB (6491790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbfe1a029de18fdd0180654928359bc52605145240b5ee138f7ef480d25828c`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4704ec518f8321ec8bed1441319875910c9249a60c205e22dcbacc482aca82ad`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2a45b3fd78c3e6af1a67a5c3b340425fd93c67b7af69b28a2a7c04e3ca33db0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e6f60e6c051917fbe3607898e61ef0b349f749f9f825e98f7d3a93ad946ff`

```dockerfile
```

-	Layers:
	-	`sha256:37b207ebb3b1497bdfc5a07a35d9bd9213e799306facb6bfaf45f85e74e703e9`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:22e97194e81bebd1554f8b3536aad3e5db0953c7dc78c4079fb7dac7267ba269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10273956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60091e4ab52766576be4871f876d53745e3f85ec5535e8560925b2a0831b8602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:12 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a25a8d54fe269677fdd2df9d660da824c01edc381c6180201ad98232b38f01`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 6.6 MB (6553753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23771fb78b8da9691369e7cab13e36fdacb3c1a488f78169721e86c715e407c7`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d573f2e3f78069cb2e119c06a6737aed21abd6c9ec19a3da236a5a5a2c93091`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4896f1d0c2433607b39af28449ec4bf6483bfb7485dae172eb4e48e01f415da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399621b5bc70050a01d520e7f80a4d2ba149bcaf9c2d5b49c42630f28e4571c1`

```dockerfile
```

-	Layers:
	-	`sha256:195dd0f13e52697ab04522d5c1cf1ff8fc0316a9f9ebbca4acdf3cb079552f9d`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; s390x

```console
$ docker pull nats@sha256:fc0caee094699cd82ee45d08d747dde23620fd3d382efa45c563703808fd68f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10584726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946c723dc16882dd933791e6d7e397957a30e3dcdb65743a472e7880cd620c27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d598f36c3d28775d406cf04eee01b633495619115ac827c2a81605e77ad900`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 6.9 MB (6946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f064181b5a3a018ba3dad374d291009e7724a82762f77456aaf4292af6b73c`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f19bd21465c20e9efeb2577c94a6495a1687315ef8df9d770b08064d31829d`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1fc1ee658d3da884b65742fca1629a0f80c034fdd3618608f7e01f29ec5c4c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9bb38ce78e8ac7618d656d636227b3c6566eb3bf5c46890b40ed0f149bedf`

```dockerfile
```

-	Layers:
	-	`sha256:79b0b7e4026a7b8cc9db4a8b2c6288ed4e9ddbd9da92b7269c528b292aebd127`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-alpine3.22`

```console
$ docker pull nats@sha256:b270f5e2428354c0335612694d7dd2fb588148e567a5757fdff325ef9c9332e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:e01e9f09c03f60a8ded4785444ec4c5b2fd18a773b8b874daeefeff559119316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10885307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f6ccc9fd034c76ac3cee7faed6c5fdb874fd333f477b91f52b4052f6669ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eb99f85997befa44e474b78441f1157abc1003fbb2e81120d8f5ddb8bd54e7`  
		Last Modified: Wed, 12 Aug 2026 17:23:41 GMT  
		Size: 7.1 MB (7096741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ff0bd79ffd6fd431f455b3c641c82c20ce704cbc7c63566ab189cb8408bf71`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df6c36ce2cfddd56fe15bb3b52c286d52ed54974273b8fff74be3dc6d199331`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd7b6b9d268b4f710ebfa82c87dc953c7483fde8345ab0ff74f19764617a96a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15840eae984099c1855eb12e05bbac71f58f02c14d60dcf67ee0a2be9d29960`

```dockerfile
```

-	Layers:
	-	`sha256:a2493cff6e6153d1620f84c697ae05d30c0d6069a662e8e799911a7f0e10ca33`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:57d7a7f14ecfa3123b45aac3079d675fd18c76ff51fc705e1e21481207003a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffcfda912b117dc08cb3f2b45e72f8707dd97c969085fbc6b4e815f924f50e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c205cf35481873ea7f69ae706d7395dab34115545209a014b46e6c6f20a0ef5`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 6.8 MB (6836256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb4692f086d26ffb2da428fb767e0bd78f9166cf36310bf09f7560d2300a8b0`  
		Last Modified: Wed, 12 Aug 2026 17:23:00 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5660227130f96f237d17037f1dad8d8a12ec89c1272d7172bd884d03505ce1`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0cfd9893545b0ecff3b4d69e5a33539c339db782bf602da45512ac01b2692d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d41321c2e67ea5d28102fa5958b9a6cf496f348cfe71940e878c5b51e31ed6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9d1112453a1edb2fcf43fc7b1ddb2d6fb6b918a03cf44014678c327d59c342`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:76275db569c898706b2d5346013c48ad22ef0a0be3ce8c6c7691b149fdcb1e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10035351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d9a94d8e6eb71e68bd3fa6cc95fafd153f772d736effd3311c65778a178191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88706ca7ac1083caeeaec677085b142c6f6b055b22cb6e646776fa343a6bf6cd`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 6.8 MB (6824766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73e305da04d72702957353835c13aabead16a5be167692e802af687309c1138`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d9ea53f7e7eb51afdb4a96170d52f3295f4395e98f8dd509dcfd519f80c10a`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b9d49c901dea16aa291f7a527611d42161235e41e78b3a4b9170f47046e4e59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704f8169abe2a9d44a4d37dbd10cb1f0d237c8f95c5a31fec1f1195077a3ea94`

```dockerfile
```

-	Layers:
	-	`sha256:72fe7ec18c98e2fe029f49e342fa9efcc6ff22e44a1faa15431d88660a190c9c`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a1f26b77b1175e6e22afee44b8787f750c2e13fc81056c266fbe4417caf22b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10613250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3050faf8121e66a65fda010f7fa3d3d280a81c5c9e5e01fa2da4d2fa87ff7b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dcae21a34102dae106f9d1bf4cddffe03c17bd3a3503baabd5843c8a4f8eb`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 6.5 MB (6491790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbfe1a029de18fdd0180654928359bc52605145240b5ee138f7ef480d25828c`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4704ec518f8321ec8bed1441319875910c9249a60c205e22dcbacc482aca82ad`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2a45b3fd78c3e6af1a67a5c3b340425fd93c67b7af69b28a2a7c04e3ca33db0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e6f60e6c051917fbe3607898e61ef0b349f749f9f825e98f7d3a93ad946ff`

```dockerfile
```

-	Layers:
	-	`sha256:37b207ebb3b1497bdfc5a07a35d9bd9213e799306facb6bfaf45f85e74e703e9`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:22e97194e81bebd1554f8b3536aad3e5db0953c7dc78c4079fb7dac7267ba269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10273956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60091e4ab52766576be4871f876d53745e3f85ec5535e8560925b2a0831b8602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:12 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a25a8d54fe269677fdd2df9d660da824c01edc381c6180201ad98232b38f01`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 6.6 MB (6553753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23771fb78b8da9691369e7cab13e36fdacb3c1a488f78169721e86c715e407c7`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d573f2e3f78069cb2e119c06a6737aed21abd6c9ec19a3da236a5a5a2c93091`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4896f1d0c2433607b39af28449ec4bf6483bfb7485dae172eb4e48e01f415da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399621b5bc70050a01d520e7f80a4d2ba149bcaf9c2d5b49c42630f28e4571c1`

```dockerfile
```

-	Layers:
	-	`sha256:195dd0f13e52697ab04522d5c1cf1ff8fc0316a9f9ebbca4acdf3cb079552f9d`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:fc0caee094699cd82ee45d08d747dde23620fd3d382efa45c563703808fd68f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10584726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946c723dc16882dd933791e6d7e397957a30e3dcdb65743a472e7880cd620c27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d598f36c3d28775d406cf04eee01b633495619115ac827c2a81605e77ad900`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 6.9 MB (6946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f064181b5a3a018ba3dad374d291009e7724a82762f77456aaf4292af6b73c`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f19bd21465c20e9efeb2577c94a6495a1687315ef8df9d770b08064d31829d`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1fc1ee658d3da884b65742fca1629a0f80c034fdd3618608f7e01f29ec5c4c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9bb38ce78e8ac7618d656d636227b3c6566eb3bf5c46890b40ed0f149bedf`

```dockerfile
```

-	Layers:
	-	`sha256:79b0b7e4026a7b8cc9db4a8b2c6288ed4e9ddbd9da92b7269c528b292aebd127`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-linux`

```console
$ docker pull nats@sha256:3829f47bc82b32a1abbccda0910d37cc627775609ed695c2dde120cb48e0c109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12-linux` - linux; amd64

```console
$ docker pull nats@sha256:df46ea780c940a8c2a2b0e83fa62a9939104eb323047cd03f3d7f8f2139bd706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566fb7b965b87fffc52ddd878d8d7cdcfbd6445dc3d1f28fd10a7daff6116732`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:16 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:371340d3f6f60501a9689c2d0e94e94ff183ea90598301f5d46c9cbbad3166f9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.7 MB (6685589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab1f952c71baad7dec6d69d4866ece03cb2d44077d152b320791cf7981c14b`  
		Last Modified: Wed, 12 Aug 2026 17:26:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:7ec47f40565cbea1243e9995a6909690edbd7cd53d0aae2278c7cf7d8f5f6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f5e97c70450f6ebd9e614c598caca3bc2e7f5d7d9739a1cb5f788305ba283`

```dockerfile
```

-	Layers:
	-	`sha256:c9ff23d5a8dd18477f46273276a5f2e809236c3cca548b20fd4e172b7700009d`  
		Last Modified: Wed, 12 Aug 2026 17:26:20 GMT  
		Size: 8.7 KB (8667 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:c6bd56168220fdb7091f2779fc8d4d1384fd63737ff68746c0375d3fe3426f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b536f9442ba7f311fb440a4a721affad27002e3c9406a015d931eeaf94769764`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:08 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:08 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f981a2a4730272936e9279c7d594b67dd2c74835c71445a8a57ca675f58403ab`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.4 MB (6425878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcfaa422b25b31686caa1173e783bb9296db510427f0eaca9b550c28a7d421`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:30326ff1d2b0fcaf6cda1e827f6206a4307b54a58b123e02b3de8981ea7db0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c9eeb305ce0a73f09aacc6376771b7df979376f59b0e39c39668fe613909d6`

```dockerfile
```

-	Layers:
	-	`sha256:a52c57120896f0040cf73c914b476ddfbf730e0626815a74dca635475b13ffd7`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:1660b523824341e98a5fd4ce15b81ade1463fc0b63d5cda2b2de1a8bf56e2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b2b1e619b6bd3c7a8a0f5fccbc52b9a60edee1694199a23f67d9eea905fae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:47 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:45047b2317bfad685c0878c92f69b4a29f1ff7da7feeb44bc5584076475c7ef9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.4 MB (6414955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7fd15140a5121cdf7ba31a1d8a2d772213580edc19c722d2611199a783035`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a0891955b4c82957462ab2d199e57aed0013547f08bc4060729b41b6dd5cbc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389381b73381f63396e4e2a9ff96478101a9b679291fec10d26df5f981fac93a`

```dockerfile
```

-	Layers:
	-	`sha256:9564d93498cace4f32e62d9b0a573de19a79f4449553b3e01fa690aee48def18`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:98592a56e0411d781e39aaf3821bab9268882beb169c9049f38afee965bdee42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6081899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0f586b4ab7d35db5764aa5b62fadb6df003f095fef91222ca8258efe9a972`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:11 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:018e4fc40fbd0426812af10168d2ecaeef8bc4e3617c1947758e4bb921e0201f`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.1 MB (6081390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d03f2d04fe7930bb3f4fc4c4151ea1147eb85f6aa1f0eb0e5a9e526cf02df6`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e912697eaa2de4c95f9c787f536d02ee564b6bca28914201bdd4eaf08086b317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa42f57204e79766c86d6c022add37dd04d1686baabd70ccce9de73fbceead`

```dockerfile
```

-	Layers:
	-	`sha256:1ac01ddbf604307cebe42ef9bb480f3870e8f5ce261d2b1e33600aa1a9a53f33`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:05d9e3340738335846fb20ea9112f117d3ad895420cd2072cb8065901f5d359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6142223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff52d6d8a6cc174650ff1fb7bb1f6702d04e6dcffbe7c006dfce8a4cd1acc61`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f4756f4fa9daae00cc3f3d2fa7d75bfc36e6dc7481194afacb0f2e284bf15bf6`  
		Last Modified: Wed, 12 Aug 2026 15:59:27 GMT  
		Size: 6.1 MB (6141713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a448bb01dccf8bfa30b1eb86ce8ce92e1ab6de7a1b3f3bfb0748bace62c63458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb04851be7abe7d7f26948e72b35448f2a03706340cb3344c7fcb16d9ff69f8`

```dockerfile
```

-	Layers:
	-	`sha256:d4dd7efd4fa1c95cfffb2437fa6940825fed374ebec9014440d76d3575181a34`  
		Last Modified: Wed, 12 Aug 2026 17:25:02 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; s390x

```console
$ docker pull nats@sha256:b49e1f553ead4387c3d459b2749defdfc0ab810126ac8d812163e638bf2a7d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c7d642b8b06e2c5e968e6e20e9f297cdee018c32c8da135c631369e01edf3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d13fbb3bf80132e46071e761ab339a2ad0ce1b929983f59c1280049c06e83f02`  
		Last Modified: Wed, 12 Aug 2026 15:59:28 GMT  
		Size: 6.5 MB (6536116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8aa79d4a519ae7eed567666f15e9107be223e6cef18983557ae8343900d2b`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2462daf6048956687f78a9981a6c30a1e27f46b82bda8b9d4f68d2626767e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec238227066b776070c7766ed2c1014eb651a01acb0ad7998d01d10b797b08`

```dockerfile
```

-	Layers:
	-	`sha256:e47c1c66e88e08faca605002b10c26e26e38ddb135b3cb8ef13e86d9d4dda132`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-nanoserver`

```console
$ docker pull nats@sha256:bfc96464850197328f2d9c977651d00a8cfc7e638e85b4ce7be27cae40b52dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:519eb6640fc50f1f89fb61e439b43154e992225e25c91db7477952a148fcf95c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131521427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be33bae46d0e23c7f4d5b3fdc2436c66a9c667de5b8234e0413d858a194f4f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:19 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:53959e756620e379eb33126252a21744ff9c0bfd8cb27505789f55c455cee5b5 in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94664065212777d133e0eeddf6708c4f56d2246d79a69d5939305adbd2c092bd`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26533e466f944e6ccda1cfa8920302cd59b591eba622c9e81fd8aa85dc76ef58`  
		Last Modified: Wed, 09 Sep 2026 23:19:26 GMT  
		Size: 6.9 MB (6878009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b1f3ae54861de5bb4a76bb8abb5c6698b8055e6f11eccfa6530c553fffe00`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393639919a541acfec66c28af387680e583660fb14ef8d224926dfda3ac60fcd`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a6b57af3ffbea5ee61d7b355af96dc12bc45e574e6a6b4b91b1d0e6f26c46`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120fbd4f45242e40f2a9d0b53b92189ce33bdb5b487364ee3012186678f9623`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:bfc96464850197328f2d9c977651d00a8cfc7e638e85b4ce7be27cae40b52dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:519eb6640fc50f1f89fb61e439b43154e992225e25c91db7477952a148fcf95c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131521427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be33bae46d0e23c7f4d5b3fdc2436c66a9c667de5b8234e0413d858a194f4f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:19 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:53959e756620e379eb33126252a21744ff9c0bfd8cb27505789f55c455cee5b5 in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94664065212777d133e0eeddf6708c4f56d2246d79a69d5939305adbd2c092bd`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26533e466f944e6ccda1cfa8920302cd59b591eba622c9e81fd8aa85dc76ef58`  
		Last Modified: Wed, 09 Sep 2026 23:19:26 GMT  
		Size: 6.9 MB (6878009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b1f3ae54861de5bb4a76bb8abb5c6698b8055e6f11eccfa6530c553fffe00`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393639919a541acfec66c28af387680e583660fb14ef8d224926dfda3ac60fcd`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a6b57af3ffbea5ee61d7b355af96dc12bc45e574e6a6b4b91b1d0e6f26c46`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120fbd4f45242e40f2a9d0b53b92189ce33bdb5b487364ee3012186678f9623`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-scratch`

```console
$ docker pull nats@sha256:3829f47bc82b32a1abbccda0910d37cc627775609ed695c2dde120cb48e0c109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12-scratch` - linux; amd64

```console
$ docker pull nats@sha256:df46ea780c940a8c2a2b0e83fa62a9939104eb323047cd03f3d7f8f2139bd706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566fb7b965b87fffc52ddd878d8d7cdcfbd6445dc3d1f28fd10a7daff6116732`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:16 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:371340d3f6f60501a9689c2d0e94e94ff183ea90598301f5d46c9cbbad3166f9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.7 MB (6685589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab1f952c71baad7dec6d69d4866ece03cb2d44077d152b320791cf7981c14b`  
		Last Modified: Wed, 12 Aug 2026 17:26:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7ec47f40565cbea1243e9995a6909690edbd7cd53d0aae2278c7cf7d8f5f6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f5e97c70450f6ebd9e614c598caca3bc2e7f5d7d9739a1cb5f788305ba283`

```dockerfile
```

-	Layers:
	-	`sha256:c9ff23d5a8dd18477f46273276a5f2e809236c3cca548b20fd4e172b7700009d`  
		Last Modified: Wed, 12 Aug 2026 17:26:20 GMT  
		Size: 8.7 KB (8667 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:c6bd56168220fdb7091f2779fc8d4d1384fd63737ff68746c0375d3fe3426f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b536f9442ba7f311fb440a4a721affad27002e3c9406a015d931eeaf94769764`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:08 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:08 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f981a2a4730272936e9279c7d594b67dd2c74835c71445a8a57ca675f58403ab`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.4 MB (6425878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcfaa422b25b31686caa1173e783bb9296db510427f0eaca9b550c28a7d421`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:30326ff1d2b0fcaf6cda1e827f6206a4307b54a58b123e02b3de8981ea7db0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c9eeb305ce0a73f09aacc6376771b7df979376f59b0e39c39668fe613909d6`

```dockerfile
```

-	Layers:
	-	`sha256:a52c57120896f0040cf73c914b476ddfbf730e0626815a74dca635475b13ffd7`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:1660b523824341e98a5fd4ce15b81ade1463fc0b63d5cda2b2de1a8bf56e2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b2b1e619b6bd3c7a8a0f5fccbc52b9a60edee1694199a23f67d9eea905fae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:47 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:45047b2317bfad685c0878c92f69b4a29f1ff7da7feeb44bc5584076475c7ef9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.4 MB (6414955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7fd15140a5121cdf7ba31a1d8a2d772213580edc19c722d2611199a783035`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a0891955b4c82957462ab2d199e57aed0013547f08bc4060729b41b6dd5cbc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389381b73381f63396e4e2a9ff96478101a9b679291fec10d26df5f981fac93a`

```dockerfile
```

-	Layers:
	-	`sha256:9564d93498cace4f32e62d9b0a573de19a79f4449553b3e01fa690aee48def18`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:98592a56e0411d781e39aaf3821bab9268882beb169c9049f38afee965bdee42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6081899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0f586b4ab7d35db5764aa5b62fadb6df003f095fef91222ca8258efe9a972`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:11 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:018e4fc40fbd0426812af10168d2ecaeef8bc4e3617c1947758e4bb921e0201f`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.1 MB (6081390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d03f2d04fe7930bb3f4fc4c4151ea1147eb85f6aa1f0eb0e5a9e526cf02df6`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e912697eaa2de4c95f9c787f536d02ee564b6bca28914201bdd4eaf08086b317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa42f57204e79766c86d6c022add37dd04d1686baabd70ccce9de73fbceead`

```dockerfile
```

-	Layers:
	-	`sha256:1ac01ddbf604307cebe42ef9bb480f3870e8f5ce261d2b1e33600aa1a9a53f33`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:05d9e3340738335846fb20ea9112f117d3ad895420cd2072cb8065901f5d359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6142223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff52d6d8a6cc174650ff1fb7bb1f6702d04e6dcffbe7c006dfce8a4cd1acc61`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f4756f4fa9daae00cc3f3d2fa7d75bfc36e6dc7481194afacb0f2e284bf15bf6`  
		Last Modified: Wed, 12 Aug 2026 15:59:27 GMT  
		Size: 6.1 MB (6141713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a448bb01dccf8bfa30b1eb86ce8ce92e1ab6de7a1b3f3bfb0748bace62c63458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb04851be7abe7d7f26948e72b35448f2a03706340cb3344c7fcb16d9ff69f8`

```dockerfile
```

-	Layers:
	-	`sha256:d4dd7efd4fa1c95cfffb2437fa6940825fed374ebec9014440d76d3575181a34`  
		Last Modified: Wed, 12 Aug 2026 17:25:02 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; s390x

```console
$ docker pull nats@sha256:b49e1f553ead4387c3d459b2749defdfc0ab810126ac8d812163e638bf2a7d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c7d642b8b06e2c5e968e6e20e9f297cdee018c32c8da135c631369e01edf3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d13fbb3bf80132e46071e761ab339a2ad0ce1b929983f59c1280049c06e83f02`  
		Last Modified: Wed, 12 Aug 2026 15:59:28 GMT  
		Size: 6.5 MB (6536116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8aa79d4a519ae7eed567666f15e9107be223e6cef18983557ae8343900d2b`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2462daf6048956687f78a9981a6c30a1e27f46b82bda8b9d4f68d2626767e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec238227066b776070c7766ed2c1014eb651a01acb0ad7998d01d10b797b08`

```dockerfile
```

-	Layers:
	-	`sha256:e47c1c66e88e08faca605002b10c26e26e38ddb135b3cb8ef13e86d9d4dda132`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-windowsservercore`

```console
$ docker pull nats@sha256:0972590307a1de2151c653752425f5209d101e3fd8c9db113c5538e12b3fac18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:988fda35333baa106df4cf518dabc00627753ce49090bc3bf831b58754f7b916
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227060779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe6734fea5320ece04656dc3888677895028bd5ded6e730465e5d83b061a4b3`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:06 GMT
ENV NATS_SERVER=2.12.15
# Wed, 09 Sep 2026 22:32:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 09 Sep 2026 22:32:09 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.15/nats-server-v2.12.15-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=ed2f6d265abb6c6b151b077d1b6810d006f6e01453d864104de5ce4dc6ee6c27
# Wed, 09 Sep 2026 22:32:50 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:12 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259b1515f1a2ae10e37a60c518c10f964de97bd52852bc814a097cd9b94aea01`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a9a5cf9f0dedfe0c6c8f97a98e1272cf68ce59b6823376e89f8fca2f57ae03`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76198f49b6de7bfef1569c6d1530ff4444ca1727c57fbc7c899b1c561e3ef6`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2109e83f611dc4a98f019d641beffc8384d31e5c0b515e109699f2b0d1c8cbe`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9025716313858683816341a26550c46da00bb77a9517d75813b2468369dca0c`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fa1638ffc7893abcd9126c5993a5873826e3fcd4e72b50f8538bbaca90401`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f2de50383cbdf0bdc03e35616c8cfbdd3e4878ce1268c79c06da413b3bc9a`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 342.8 KB (342755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5528f3bebd50ac6ca5a877784863439ab1925d4e68fe71d10c67d1579fb603`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 7.2 MB (7215705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bedbad6fca2f560a22726173870b8636c0cec95585c49b96320ab2043894905`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf3a7d7d2a07444091d57cd66981cc270b2faabc1fbf7f3c5a518a7f882edc9`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0b5a761dce5ff652ab58b0baa1cbde943849134978fec0571c5ae6cb6f709`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb15dc06643b28365554726cfb12dc9e96331774785be31a33e426ae1d9578`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:0972590307a1de2151c653752425f5209d101e3fd8c9db113c5538e12b3fac18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:988fda35333baa106df4cf518dabc00627753ce49090bc3bf831b58754f7b916
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227060779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe6734fea5320ece04656dc3888677895028bd5ded6e730465e5d83b061a4b3`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:06 GMT
ENV NATS_SERVER=2.12.15
# Wed, 09 Sep 2026 22:32:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 09 Sep 2026 22:32:09 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.15/nats-server-v2.12.15-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=ed2f6d265abb6c6b151b077d1b6810d006f6e01453d864104de5ce4dc6ee6c27
# Wed, 09 Sep 2026 22:32:50 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:12 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259b1515f1a2ae10e37a60c518c10f964de97bd52852bc814a097cd9b94aea01`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a9a5cf9f0dedfe0c6c8f97a98e1272cf68ce59b6823376e89f8fca2f57ae03`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76198f49b6de7bfef1569c6d1530ff4444ca1727c57fbc7c899b1c561e3ef6`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2109e83f611dc4a98f019d641beffc8384d31e5c0b515e109699f2b0d1c8cbe`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9025716313858683816341a26550c46da00bb77a9517d75813b2468369dca0c`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fa1638ffc7893abcd9126c5993a5873826e3fcd4e72b50f8538bbaca90401`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f2de50383cbdf0bdc03e35616c8cfbdd3e4878ce1268c79c06da413b3bc9a`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 342.8 KB (342755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5528f3bebd50ac6ca5a877784863439ab1925d4e68fe71d10c67d1579fb603`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 7.2 MB (7215705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bedbad6fca2f560a22726173870b8636c0cec95585c49b96320ab2043894905`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf3a7d7d2a07444091d57cd66981cc270b2faabc1fbf7f3c5a518a7f882edc9`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0b5a761dce5ff652ab58b0baa1cbde943849134978fec0571c5ae6cb6f709`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb15dc06643b28365554726cfb12dc9e96331774785be31a33e426ae1d9578`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.15`

```console
$ docker pull nats@sha256:0764f1952d72e92e35ad8b152da0f9652a49cb1186b6445fdd45131d81ad6d7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12.15` - linux; amd64

```console
$ docker pull nats@sha256:df46ea780c940a8c2a2b0e83fa62a9939104eb323047cd03f3d7f8f2139bd706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566fb7b965b87fffc52ddd878d8d7cdcfbd6445dc3d1f28fd10a7daff6116732`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:16 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:371340d3f6f60501a9689c2d0e94e94ff183ea90598301f5d46c9cbbad3166f9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.7 MB (6685589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab1f952c71baad7dec6d69d4866ece03cb2d44077d152b320791cf7981c14b`  
		Last Modified: Wed, 12 Aug 2026 17:26:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15` - unknown; unknown

```console
$ docker pull nats@sha256:7ec47f40565cbea1243e9995a6909690edbd7cd53d0aae2278c7cf7d8f5f6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f5e97c70450f6ebd9e614c598caca3bc2e7f5d7d9739a1cb5f788305ba283`

```dockerfile
```

-	Layers:
	-	`sha256:c9ff23d5a8dd18477f46273276a5f2e809236c3cca548b20fd4e172b7700009d`  
		Last Modified: Wed, 12 Aug 2026 17:26:20 GMT  
		Size: 8.7 KB (8667 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15` - linux; arm variant v6

```console
$ docker pull nats@sha256:c6bd56168220fdb7091f2779fc8d4d1384fd63737ff68746c0375d3fe3426f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b536f9442ba7f311fb440a4a721affad27002e3c9406a015d931eeaf94769764`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:08 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:08 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f981a2a4730272936e9279c7d594b67dd2c74835c71445a8a57ca675f58403ab`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.4 MB (6425878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcfaa422b25b31686caa1173e783bb9296db510427f0eaca9b550c28a7d421`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15` - unknown; unknown

```console
$ docker pull nats@sha256:30326ff1d2b0fcaf6cda1e827f6206a4307b54a58b123e02b3de8981ea7db0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c9eeb305ce0a73f09aacc6376771b7df979376f59b0e39c39668fe613909d6`

```dockerfile
```

-	Layers:
	-	`sha256:a52c57120896f0040cf73c914b476ddfbf730e0626815a74dca635475b13ffd7`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15` - linux; arm variant v7

```console
$ docker pull nats@sha256:1660b523824341e98a5fd4ce15b81ade1463fc0b63d5cda2b2de1a8bf56e2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b2b1e619b6bd3c7a8a0f5fccbc52b9a60edee1694199a23f67d9eea905fae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:47 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:45047b2317bfad685c0878c92f69b4a29f1ff7da7feeb44bc5584076475c7ef9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.4 MB (6414955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7fd15140a5121cdf7ba31a1d8a2d772213580edc19c722d2611199a783035`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15` - unknown; unknown

```console
$ docker pull nats@sha256:a0891955b4c82957462ab2d199e57aed0013547f08bc4060729b41b6dd5cbc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389381b73381f63396e4e2a9ff96478101a9b679291fec10d26df5f981fac93a`

```dockerfile
```

-	Layers:
	-	`sha256:9564d93498cace4f32e62d9b0a573de19a79f4449553b3e01fa690aee48def18`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:98592a56e0411d781e39aaf3821bab9268882beb169c9049f38afee965bdee42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6081899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0f586b4ab7d35db5764aa5b62fadb6df003f095fef91222ca8258efe9a972`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:11 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:018e4fc40fbd0426812af10168d2ecaeef8bc4e3617c1947758e4bb921e0201f`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.1 MB (6081390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d03f2d04fe7930bb3f4fc4c4151ea1147eb85f6aa1f0eb0e5a9e526cf02df6`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15` - unknown; unknown

```console
$ docker pull nats@sha256:e912697eaa2de4c95f9c787f536d02ee564b6bca28914201bdd4eaf08086b317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa42f57204e79766c86d6c022add37dd04d1686baabd70ccce9de73fbceead`

```dockerfile
```

-	Layers:
	-	`sha256:1ac01ddbf604307cebe42ef9bb480f3870e8f5ce261d2b1e33600aa1a9a53f33`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15` - linux; ppc64le

```console
$ docker pull nats@sha256:05d9e3340738335846fb20ea9112f117d3ad895420cd2072cb8065901f5d359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6142223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff52d6d8a6cc174650ff1fb7bb1f6702d04e6dcffbe7c006dfce8a4cd1acc61`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f4756f4fa9daae00cc3f3d2fa7d75bfc36e6dc7481194afacb0f2e284bf15bf6`  
		Last Modified: Wed, 12 Aug 2026 15:59:27 GMT  
		Size: 6.1 MB (6141713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15` - unknown; unknown

```console
$ docker pull nats@sha256:a448bb01dccf8bfa30b1eb86ce8ce92e1ab6de7a1b3f3bfb0748bace62c63458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb04851be7abe7d7f26948e72b35448f2a03706340cb3344c7fcb16d9ff69f8`

```dockerfile
```

-	Layers:
	-	`sha256:d4dd7efd4fa1c95cfffb2437fa6940825fed374ebec9014440d76d3575181a34`  
		Last Modified: Wed, 12 Aug 2026 17:25:02 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15` - linux; s390x

```console
$ docker pull nats@sha256:b49e1f553ead4387c3d459b2749defdfc0ab810126ac8d812163e638bf2a7d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c7d642b8b06e2c5e968e6e20e9f297cdee018c32c8da135c631369e01edf3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d13fbb3bf80132e46071e761ab339a2ad0ce1b929983f59c1280049c06e83f02`  
		Last Modified: Wed, 12 Aug 2026 15:59:28 GMT  
		Size: 6.5 MB (6536116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8aa79d4a519ae7eed567666f15e9107be223e6cef18983557ae8343900d2b`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15` - unknown; unknown

```console
$ docker pull nats@sha256:2462daf6048956687f78a9981a6c30a1e27f46b82bda8b9d4f68d2626767e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec238227066b776070c7766ed2c1014eb651a01acb0ad7998d01d10b797b08`

```dockerfile
```

-	Layers:
	-	`sha256:e47c1c66e88e08faca605002b10c26e26e38ddb135b3cb8ef13e86d9d4dda132`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:519eb6640fc50f1f89fb61e439b43154e992225e25c91db7477952a148fcf95c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131521427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be33bae46d0e23c7f4d5b3fdc2436c66a9c667de5b8234e0413d858a194f4f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:19 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:53959e756620e379eb33126252a21744ff9c0bfd8cb27505789f55c455cee5b5 in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94664065212777d133e0eeddf6708c4f56d2246d79a69d5939305adbd2c092bd`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26533e466f944e6ccda1cfa8920302cd59b591eba622c9e81fd8aa85dc76ef58`  
		Last Modified: Wed, 09 Sep 2026 23:19:26 GMT  
		Size: 6.9 MB (6878009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b1f3ae54861de5bb4a76bb8abb5c6698b8055e6f11eccfa6530c553fffe00`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393639919a541acfec66c28af387680e583660fb14ef8d224926dfda3ac60fcd`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a6b57af3ffbea5ee61d7b355af96dc12bc45e574e6a6b4b91b1d0e6f26c46`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120fbd4f45242e40f2a9d0b53b92189ce33bdb5b487364ee3012186678f9623`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.15-alpine`

```console
$ docker pull nats@sha256:b270f5e2428354c0335612694d7dd2fb588148e567a5757fdff325ef9c9332e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12.15-alpine` - linux; amd64

```console
$ docker pull nats@sha256:e01e9f09c03f60a8ded4785444ec4c5b2fd18a773b8b874daeefeff559119316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10885307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f6ccc9fd034c76ac3cee7faed6c5fdb874fd333f477b91f52b4052f6669ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eb99f85997befa44e474b78441f1157abc1003fbb2e81120d8f5ddb8bd54e7`  
		Last Modified: Wed, 12 Aug 2026 17:23:41 GMT  
		Size: 7.1 MB (7096741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ff0bd79ffd6fd431f455b3c641c82c20ce704cbc7c63566ab189cb8408bf71`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df6c36ce2cfddd56fe15bb3b52c286d52ed54974273b8fff74be3dc6d199331`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd7b6b9d268b4f710ebfa82c87dc953c7483fde8345ab0ff74f19764617a96a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15840eae984099c1855eb12e05bbac71f58f02c14d60dcf67ee0a2be9d29960`

```dockerfile
```

-	Layers:
	-	`sha256:a2493cff6e6153d1620f84c697ae05d30c0d6069a662e8e799911a7f0e10ca33`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:57d7a7f14ecfa3123b45aac3079d675fd18c76ff51fc705e1e21481207003a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffcfda912b117dc08cb3f2b45e72f8707dd97c969085fbc6b4e815f924f50e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c205cf35481873ea7f69ae706d7395dab34115545209a014b46e6c6f20a0ef5`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 6.8 MB (6836256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb4692f086d26ffb2da428fb767e0bd78f9166cf36310bf09f7560d2300a8b0`  
		Last Modified: Wed, 12 Aug 2026 17:23:00 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5660227130f96f237d17037f1dad8d8a12ec89c1272d7172bd884d03505ce1`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0cfd9893545b0ecff3b4d69e5a33539c339db782bf602da45512ac01b2692d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d41321c2e67ea5d28102fa5958b9a6cf496f348cfe71940e878c5b51e31ed6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9d1112453a1edb2fcf43fc7b1ddb2d6fb6b918a03cf44014678c327d59c342`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:76275db569c898706b2d5346013c48ad22ef0a0be3ce8c6c7691b149fdcb1e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10035351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d9a94d8e6eb71e68bd3fa6cc95fafd153f772d736effd3311c65778a178191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88706ca7ac1083caeeaec677085b142c6f6b055b22cb6e646776fa343a6bf6cd`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 6.8 MB (6824766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73e305da04d72702957353835c13aabead16a5be167692e802af687309c1138`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d9ea53f7e7eb51afdb4a96170d52f3295f4395e98f8dd509dcfd519f80c10a`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:b9d49c901dea16aa291f7a527611d42161235e41e78b3a4b9170f47046e4e59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704f8169abe2a9d44a4d37dbd10cb1f0d237c8f95c5a31fec1f1195077a3ea94`

```dockerfile
```

-	Layers:
	-	`sha256:72fe7ec18c98e2fe029f49e342fa9efcc6ff22e44a1faa15431d88660a190c9c`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a1f26b77b1175e6e22afee44b8787f750c2e13fc81056c266fbe4417caf22b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10613250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3050faf8121e66a65fda010f7fa3d3d280a81c5c9e5e01fa2da4d2fa87ff7b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dcae21a34102dae106f9d1bf4cddffe03c17bd3a3503baabd5843c8a4f8eb`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 6.5 MB (6491790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbfe1a029de18fdd0180654928359bc52605145240b5ee138f7ef480d25828c`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4704ec518f8321ec8bed1441319875910c9249a60c205e22dcbacc482aca82ad`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2a45b3fd78c3e6af1a67a5c3b340425fd93c67b7af69b28a2a7c04e3ca33db0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e6f60e6c051917fbe3607898e61ef0b349f749f9f825e98f7d3a93ad946ff`

```dockerfile
```

-	Layers:
	-	`sha256:37b207ebb3b1497bdfc5a07a35d9bd9213e799306facb6bfaf45f85e74e703e9`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:22e97194e81bebd1554f8b3536aad3e5db0953c7dc78c4079fb7dac7267ba269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10273956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60091e4ab52766576be4871f876d53745e3f85ec5535e8560925b2a0831b8602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:12 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a25a8d54fe269677fdd2df9d660da824c01edc381c6180201ad98232b38f01`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 6.6 MB (6553753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23771fb78b8da9691369e7cab13e36fdacb3c1a488f78169721e86c715e407c7`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d573f2e3f78069cb2e119c06a6737aed21abd6c9ec19a3da236a5a5a2c93091`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4896f1d0c2433607b39af28449ec4bf6483bfb7485dae172eb4e48e01f415da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399621b5bc70050a01d520e7f80a4d2ba149bcaf9c2d5b49c42630f28e4571c1`

```dockerfile
```

-	Layers:
	-	`sha256:195dd0f13e52697ab04522d5c1cf1ff8fc0316a9f9ebbca4acdf3cb079552f9d`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine` - linux; s390x

```console
$ docker pull nats@sha256:fc0caee094699cd82ee45d08d747dde23620fd3d382efa45c563703808fd68f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10584726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946c723dc16882dd933791e6d7e397957a30e3dcdb65743a472e7880cd620c27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d598f36c3d28775d406cf04eee01b633495619115ac827c2a81605e77ad900`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 6.9 MB (6946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f064181b5a3a018ba3dad374d291009e7724a82762f77456aaf4292af6b73c`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f19bd21465c20e9efeb2577c94a6495a1687315ef8df9d770b08064d31829d`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1fc1ee658d3da884b65742fca1629a0f80c034fdd3618608f7e01f29ec5c4c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9bb38ce78e8ac7618d656d636227b3c6566eb3bf5c46890b40ed0f149bedf`

```dockerfile
```

-	Layers:
	-	`sha256:79b0b7e4026a7b8cc9db4a8b2c6288ed4e9ddbd9da92b7269c528b292aebd127`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.15-alpine3.22`

```console
$ docker pull nats@sha256:b270f5e2428354c0335612694d7dd2fb588148e567a5757fdff325ef9c9332e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12.15-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:e01e9f09c03f60a8ded4785444ec4c5b2fd18a773b8b874daeefeff559119316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10885307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138f6ccc9fd034c76ac3cee7faed6c5fdb874fd333f477b91f52b4052f6669ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eb99f85997befa44e474b78441f1157abc1003fbb2e81120d8f5ddb8bd54e7`  
		Last Modified: Wed, 12 Aug 2026 17:23:41 GMT  
		Size: 7.1 MB (7096741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ff0bd79ffd6fd431f455b3c641c82c20ce704cbc7c63566ab189cb8408bf71`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df6c36ce2cfddd56fe15bb3b52c286d52ed54974273b8fff74be3dc6d199331`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd7b6b9d268b4f710ebfa82c87dc953c7483fde8345ab0ff74f19764617a96a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15840eae984099c1855eb12e05bbac71f58f02c14d60dcf67ee0a2be9d29960`

```dockerfile
```

-	Layers:
	-	`sha256:a2493cff6e6153d1620f84c697ae05d30c0d6069a662e8e799911a7f0e10ca33`  
		Last Modified: Wed, 12 Aug 2026 17:23:40 GMT  
		Size: 14.2 KB (14208 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:57d7a7f14ecfa3123b45aac3079d675fd18c76ff51fc705e1e21481207003a3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10332027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffcfda912b117dc08cb3f2b45e72f8707dd97c969085fbc6b4e815f924f50e8c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c205cf35481873ea7f69ae706d7395dab34115545209a014b46e6c6f20a0ef5`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 6.8 MB (6836256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb4692f086d26ffb2da428fb767e0bd78f9166cf36310bf09f7560d2300a8b0`  
		Last Modified: Wed, 12 Aug 2026 17:23:00 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5660227130f96f237d17037f1dad8d8a12ec89c1272d7172bd884d03505ce1`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0cfd9893545b0ecff3b4d69e5a33539c339db782bf602da45512ac01b2692d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d41321c2e67ea5d28102fa5958b9a6cf496f348cfe71940e878c5b51e31ed6`

```dockerfile
```

-	Layers:
	-	`sha256:8b9d1112453a1edb2fcf43fc7b1ddb2d6fb6b918a03cf44014678c327d59c342`  
		Last Modified: Wed, 12 Aug 2026 17:23:01 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:76275db569c898706b2d5346013c48ad22ef0a0be3ce8c6c7691b149fdcb1e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10035351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d9a94d8e6eb71e68bd3fa6cc95fafd153f772d736effd3311c65778a178191`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88706ca7ac1083caeeaec677085b142c6f6b055b22cb6e646776fa343a6bf6cd`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 6.8 MB (6824766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73e305da04d72702957353835c13aabead16a5be167692e802af687309c1138`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d9ea53f7e7eb51afdb4a96170d52f3295f4395e98f8dd509dcfd519f80c10a`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b9d49c901dea16aa291f7a527611d42161235e41e78b3a4b9170f47046e4e59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:704f8169abe2a9d44a4d37dbd10cb1f0d237c8f95c5a31fec1f1195077a3ea94`

```dockerfile
```

-	Layers:
	-	`sha256:72fe7ec18c98e2fe029f49e342fa9efcc6ff22e44a1faa15431d88660a190c9c`  
		Last Modified: Wed, 12 Aug 2026 17:23:32 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a1f26b77b1175e6e22afee44b8787f750c2e13fc81056c266fbe4417caf22b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10613250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3050faf8121e66a65fda010f7fa3d3d280a81c5c9e5e01fa2da4d2fa87ff7b6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:23:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:23:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:23:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470dcae21a34102dae106f9d1bf4cddffe03c17bd3a3503baabd5843c8a4f8eb`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 6.5 MB (6491790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbfe1a029de18fdd0180654928359bc52605145240b5ee138f7ef480d25828c`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4704ec518f8321ec8bed1441319875910c9249a60c205e22dcbacc482aca82ad`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2a45b3fd78c3e6af1a67a5c3b340425fd93c67b7af69b28a2a7c04e3ca33db0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954e6f60e6c051917fbe3607898e61ef0b349f749f9f825e98f7d3a93ad946ff`

```dockerfile
```

-	Layers:
	-	`sha256:37b207ebb3b1497bdfc5a07a35d9bd9213e799306facb6bfaf45f85e74e703e9`  
		Last Modified: Wed, 12 Aug 2026 17:23:23 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:22e97194e81bebd1554f8b3536aad3e5db0953c7dc78c4079fb7dac7267ba269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10273956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60091e4ab52766576be4871f876d53745e3f85ec5535e8560925b2a0831b8602`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:12 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a25a8d54fe269677fdd2df9d660da824c01edc381c6180201ad98232b38f01`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 6.6 MB (6553753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23771fb78b8da9691369e7cab13e36fdacb3c1a488f78169721e86c715e407c7`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d573f2e3f78069cb2e119c06a6737aed21abd6c9ec19a3da236a5a5a2c93091`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4896f1d0c2433607b39af28449ec4bf6483bfb7485dae172eb4e48e01f415da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399621b5bc70050a01d520e7f80a4d2ba149bcaf9c2d5b49c42630f28e4571c1`

```dockerfile
```

-	Layers:
	-	`sha256:195dd0f13e52697ab04522d5c1cf1ff8fc0316a9f9ebbca4acdf3cb079552f9d`  
		Last Modified: Wed, 12 Aug 2026 17:22:21 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:fc0caee094699cd82ee45d08d747dde23620fd3d382efa45c563703808fd68f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10584726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946c723dc16882dd933791e6d7e397957a30e3dcdb65743a472e7880cd620c27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
ENV NATS_SERVER=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 12 Aug 2026 17:22:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='b724db99fefbf8f5c808baa82819ee50350aee9734017e4a478f7e545cef3ab6' ;;     armhf) natsArch='arm6'; sha256='13d277c22ae061fb5fdec8caf167f50837fb170f329c35c674ac3bfaeb29c8f6' ;;     armv7) natsArch='arm7'; sha256='72311fe4e14ce3ce22dc8e7ac02633e6f31a9bab4086c92a31fd040e59683c8a' ;;     x86_64) natsArch='amd64'; sha256='58ab8131f819263897e2fc38e503e1b755b63bcafeecc7d12582487df48ca15e' ;;     x86) natsArch='386'; sha256='e20fd919512273ed8ee553f5076bd76b1fc5e78a3cf83eafed4e0b40582f9b87' ;;     s390x) natsArch='s390x'; sha256='5db960be875da499f1354f41c0a7780303fb9644cf62d35022677e77b4178029' ;;     ppc64le) natsArch='ppc64le'; sha256='56447e72ec0551fa27a4368388dee475e028d4d5de6d97a802d944c6f278cf1e' ;;     loong64) natsArch='loong64'; sha256='d4b63722073398b95e636bda8f4db3829ab64f9447d9c1689d9e24bc88b56f46' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 12 Aug 2026 17:22:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:22:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Aug 2026 17:22:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d598f36c3d28775d406cf04eee01b633495619115ac827c2a81605e77ad900`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 6.9 MB (6946671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f064181b5a3a018ba3dad374d291009e7724a82762f77456aaf4292af6b73c`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f19bd21465c20e9efeb2577c94a6495a1687315ef8df9d770b08064d31829d`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1fc1ee658d3da884b65742fca1629a0f80c034fdd3618608f7e01f29ec5c4c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb9bb38ce78e8ac7618d656d636227b3c6566eb3bf5c46890b40ed0f149bedf`

```dockerfile
```

-	Layers:
	-	`sha256:79b0b7e4026a7b8cc9db4a8b2c6288ed4e9ddbd9da92b7269c528b292aebd127`  
		Last Modified: Wed, 12 Aug 2026 17:22:48 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.15-linux`

```console
$ docker pull nats@sha256:3829f47bc82b32a1abbccda0910d37cc627775609ed695c2dde120cb48e0c109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12.15-linux` - linux; amd64

```console
$ docker pull nats@sha256:df46ea780c940a8c2a2b0e83fa62a9939104eb323047cd03f3d7f8f2139bd706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566fb7b965b87fffc52ddd878d8d7cdcfbd6445dc3d1f28fd10a7daff6116732`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:16 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:371340d3f6f60501a9689c2d0e94e94ff183ea90598301f5d46c9cbbad3166f9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.7 MB (6685589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab1f952c71baad7dec6d69d4866ece03cb2d44077d152b320791cf7981c14b`  
		Last Modified: Wed, 12 Aug 2026 17:26:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:7ec47f40565cbea1243e9995a6909690edbd7cd53d0aae2278c7cf7d8f5f6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f5e97c70450f6ebd9e614c598caca3bc2e7f5d7d9739a1cb5f788305ba283`

```dockerfile
```

-	Layers:
	-	`sha256:c9ff23d5a8dd18477f46273276a5f2e809236c3cca548b20fd4e172b7700009d`  
		Last Modified: Wed, 12 Aug 2026 17:26:20 GMT  
		Size: 8.7 KB (8667 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:c6bd56168220fdb7091f2779fc8d4d1384fd63737ff68746c0375d3fe3426f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b536f9442ba7f311fb440a4a721affad27002e3c9406a015d931eeaf94769764`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:08 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:08 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f981a2a4730272936e9279c7d594b67dd2c74835c71445a8a57ca675f58403ab`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.4 MB (6425878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcfaa422b25b31686caa1173e783bb9296db510427f0eaca9b550c28a7d421`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:30326ff1d2b0fcaf6cda1e827f6206a4307b54a58b123e02b3de8981ea7db0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c9eeb305ce0a73f09aacc6376771b7df979376f59b0e39c39668fe613909d6`

```dockerfile
```

-	Layers:
	-	`sha256:a52c57120896f0040cf73c914b476ddfbf730e0626815a74dca635475b13ffd7`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:1660b523824341e98a5fd4ce15b81ade1463fc0b63d5cda2b2de1a8bf56e2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b2b1e619b6bd3c7a8a0f5fccbc52b9a60edee1694199a23f67d9eea905fae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:47 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:45047b2317bfad685c0878c92f69b4a29f1ff7da7feeb44bc5584076475c7ef9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.4 MB (6414955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7fd15140a5121cdf7ba31a1d8a2d772213580edc19c722d2611199a783035`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a0891955b4c82957462ab2d199e57aed0013547f08bc4060729b41b6dd5cbc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389381b73381f63396e4e2a9ff96478101a9b679291fec10d26df5f981fac93a`

```dockerfile
```

-	Layers:
	-	`sha256:9564d93498cace4f32e62d9b0a573de19a79f4449553b3e01fa690aee48def18`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:98592a56e0411d781e39aaf3821bab9268882beb169c9049f38afee965bdee42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6081899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0f586b4ab7d35db5764aa5b62fadb6df003f095fef91222ca8258efe9a972`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:11 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:018e4fc40fbd0426812af10168d2ecaeef8bc4e3617c1947758e4bb921e0201f`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.1 MB (6081390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d03f2d04fe7930bb3f4fc4c4151ea1147eb85f6aa1f0eb0e5a9e526cf02df6`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e912697eaa2de4c95f9c787f536d02ee564b6bca28914201bdd4eaf08086b317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa42f57204e79766c86d6c022add37dd04d1686baabd70ccce9de73fbceead`

```dockerfile
```

-	Layers:
	-	`sha256:1ac01ddbf604307cebe42ef9bb480f3870e8f5ce261d2b1e33600aa1a9a53f33`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:05d9e3340738335846fb20ea9112f117d3ad895420cd2072cb8065901f5d359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6142223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff52d6d8a6cc174650ff1fb7bb1f6702d04e6dcffbe7c006dfce8a4cd1acc61`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f4756f4fa9daae00cc3f3d2fa7d75bfc36e6dc7481194afacb0f2e284bf15bf6`  
		Last Modified: Wed, 12 Aug 2026 15:59:27 GMT  
		Size: 6.1 MB (6141713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a448bb01dccf8bfa30b1eb86ce8ce92e1ab6de7a1b3f3bfb0748bace62c63458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb04851be7abe7d7f26948e72b35448f2a03706340cb3344c7fcb16d9ff69f8`

```dockerfile
```

-	Layers:
	-	`sha256:d4dd7efd4fa1c95cfffb2437fa6940825fed374ebec9014440d76d3575181a34`  
		Last Modified: Wed, 12 Aug 2026 17:25:02 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-linux` - linux; s390x

```console
$ docker pull nats@sha256:b49e1f553ead4387c3d459b2749defdfc0ab810126ac8d812163e638bf2a7d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c7d642b8b06e2c5e968e6e20e9f297cdee018c32c8da135c631369e01edf3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d13fbb3bf80132e46071e761ab339a2ad0ce1b929983f59c1280049c06e83f02`  
		Last Modified: Wed, 12 Aug 2026 15:59:28 GMT  
		Size: 6.5 MB (6536116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8aa79d4a519ae7eed567666f15e9107be223e6cef18983557ae8343900d2b`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2462daf6048956687f78a9981a6c30a1e27f46b82bda8b9d4f68d2626767e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec238227066b776070c7766ed2c1014eb651a01acb0ad7998d01d10b797b08`

```dockerfile
```

-	Layers:
	-	`sha256:e47c1c66e88e08faca605002b10c26e26e38ddb135b3cb8ef13e86d9d4dda132`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.15-nanoserver`

```console
$ docker pull nats@sha256:bfc96464850197328f2d9c977651d00a8cfc7e638e85b4ce7be27cae40b52dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12.15-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:519eb6640fc50f1f89fb61e439b43154e992225e25c91db7477952a148fcf95c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131521427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be33bae46d0e23c7f4d5b3fdc2436c66a9c667de5b8234e0413d858a194f4f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:19 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:53959e756620e379eb33126252a21744ff9c0bfd8cb27505789f55c455cee5b5 in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94664065212777d133e0eeddf6708c4f56d2246d79a69d5939305adbd2c092bd`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26533e466f944e6ccda1cfa8920302cd59b591eba622c9e81fd8aa85dc76ef58`  
		Last Modified: Wed, 09 Sep 2026 23:19:26 GMT  
		Size: 6.9 MB (6878009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b1f3ae54861de5bb4a76bb8abb5c6698b8055e6f11eccfa6530c553fffe00`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393639919a541acfec66c28af387680e583660fb14ef8d224926dfda3ac60fcd`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a6b57af3ffbea5ee61d7b355af96dc12bc45e574e6a6b4b91b1d0e6f26c46`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120fbd4f45242e40f2a9d0b53b92189ce33bdb5b487364ee3012186678f9623`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.15-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:bfc96464850197328f2d9c977651d00a8cfc7e638e85b4ce7be27cae40b52dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12.15-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:519eb6640fc50f1f89fb61e439b43154e992225e25c91db7477952a148fcf95c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131521427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75be33bae46d0e23c7f4d5b3fdc2436c66a9c667de5b8234e0413d858a194f4f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:19 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:53959e756620e379eb33126252a21744ff9c0bfd8cb27505789f55c455cee5b5 in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:20 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:21 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94664065212777d133e0eeddf6708c4f56d2246d79a69d5939305adbd2c092bd`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26533e466f944e6ccda1cfa8920302cd59b591eba622c9e81fd8aa85dc76ef58`  
		Last Modified: Wed, 09 Sep 2026 23:19:26 GMT  
		Size: 6.9 MB (6878009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4b1f3ae54861de5bb4a76bb8abb5c6698b8055e6f11eccfa6530c553fffe00`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.7 KB (1721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393639919a541acfec66c28af387680e583660fb14ef8d224926dfda3ac60fcd`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a6b57af3ffbea5ee61d7b355af96dc12bc45e574e6a6b4b91b1d0e6f26c46`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120fbd4f45242e40f2a9d0b53b92189ce33bdb5b487364ee3012186678f9623`  
		Last Modified: Wed, 09 Sep 2026 23:19:25 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.15-scratch`

```console
$ docker pull nats@sha256:3829f47bc82b32a1abbccda0910d37cc627775609ed695c2dde120cb48e0c109
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.12.15-scratch` - linux; amd64

```console
$ docker pull nats@sha256:df46ea780c940a8c2a2b0e83fa62a9939104eb323047cd03f3d7f8f2139bd706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:566fb7b965b87fffc52ddd878d8d7cdcfbd6445dc3d1f28fd10a7daff6116732`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:26:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:26:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:26:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:26:16 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:26:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:371340d3f6f60501a9689c2d0e94e94ff183ea90598301f5d46c9cbbad3166f9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.7 MB (6685589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab1f952c71baad7dec6d69d4866ece03cb2d44077d152b320791cf7981c14b`  
		Last Modified: Wed, 12 Aug 2026 17:26:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7ec47f40565cbea1243e9995a6909690edbd7cd53d0aae2278c7cf7d8f5f6968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3f5e97c70450f6ebd9e614c598caca3bc2e7f5d7d9739a1cb5f788305ba283`

```dockerfile
```

-	Layers:
	-	`sha256:c9ff23d5a8dd18477f46273276a5f2e809236c3cca548b20fd4e172b7700009d`  
		Last Modified: Wed, 12 Aug 2026 17:26:20 GMT  
		Size: 8.7 KB (8667 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:c6bd56168220fdb7091f2779fc8d4d1384fd63737ff68746c0375d3fe3426f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b536f9442ba7f311fb440a4a721affad27002e3c9406a015d931eeaf94769764`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:08 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:08 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f981a2a4730272936e9279c7d594b67dd2c74835c71445a8a57ca675f58403ab`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.4 MB (6425878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfcfaa422b25b31686caa1173e783bb9296db510427f0eaca9b550c28a7d421`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:30326ff1d2b0fcaf6cda1e827f6206a4307b54a58b123e02b3de8981ea7db0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c9eeb305ce0a73f09aacc6376771b7df979376f59b0e39c39668fe613909d6`

```dockerfile
```

-	Layers:
	-	`sha256:a52c57120896f0040cf73c914b476ddfbf730e0626815a74dca635475b13ffd7`  
		Last Modified: Wed, 12 Aug 2026 17:25:12 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:1660b523824341e98a5fd4ce15b81ade1463fc0b63d5cda2b2de1a8bf56e2507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6415463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8b2b1e619b6bd3c7a8a0f5fccbc52b9a60edee1694199a23f67d9eea905fae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:47 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:45047b2317bfad685c0878c92f69b4a29f1ff7da7feeb44bc5584076475c7ef9`  
		Last Modified: Wed, 12 Aug 2026 15:59:30 GMT  
		Size: 6.4 MB (6414955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7fd15140a5121cdf7ba31a1d8a2d772213580edc19c722d2611199a783035`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a0891955b4c82957462ab2d199e57aed0013547f08bc4060729b41b6dd5cbc35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389381b73381f63396e4e2a9ff96478101a9b679291fec10d26df5f981fac93a`

```dockerfile
```

-	Layers:
	-	`sha256:9564d93498cace4f32e62d9b0a573de19a79f4449553b3e01fa690aee48def18`  
		Last Modified: Wed, 12 Aug 2026 17:25:51 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:98592a56e0411d781e39aaf3821bab9268882beb169c9049f38afee965bdee42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6081899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b0f586b4ab7d35db5764aa5b62fadb6df003f095fef91222ca8258efe9a972`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:32:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:32:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:32:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:32:11 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:32:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:018e4fc40fbd0426812af10168d2ecaeef8bc4e3617c1947758e4bb921e0201f`  
		Last Modified: Wed, 12 Aug 2026 15:59:29 GMT  
		Size: 6.1 MB (6081390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d03f2d04fe7930bb3f4fc4c4151ea1147eb85f6aa1f0eb0e5a9e526cf02df6`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e912697eaa2de4c95f9c787f536d02ee564b6bca28914201bdd4eaf08086b317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa42f57204e79766c86d6c022add37dd04d1686baabd70ccce9de73fbceead`

```dockerfile
```

-	Layers:
	-	`sha256:1ac01ddbf604307cebe42ef9bb480f3870e8f5ce261d2b1e33600aa1a9a53f33`  
		Last Modified: Wed, 12 Aug 2026 17:32:15 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:05d9e3340738335846fb20ea9112f117d3ad895420cd2072cb8065901f5d359c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6142223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff52d6d8a6cc174650ff1fb7bb1f6702d04e6dcffbe7c006dfce8a4cd1acc61`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:24:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:24:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:24:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:24:54 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:24:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f4756f4fa9daae00cc3f3d2fa7d75bfc36e6dc7481194afacb0f2e284bf15bf6`  
		Last Modified: Wed, 12 Aug 2026 15:59:27 GMT  
		Size: 6.1 MB (6141713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d7e0de626a87ed16efcc0b66e956fffb391a563c65049fb4bcfdf8d9bd5f1d`  
		Last Modified: Wed, 12 Aug 2026 17:25:01 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a448bb01dccf8bfa30b1eb86ce8ce92e1ab6de7a1b3f3bfb0748bace62c63458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb04851be7abe7d7f26948e72b35448f2a03706340cb3344c7fcb16d9ff69f8`

```dockerfile
```

-	Layers:
	-	`sha256:d4dd7efd4fa1c95cfffb2437fa6940825fed374ebec9014440d76d3575181a34`  
		Last Modified: Wed, 12 Aug 2026 17:25:02 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.15-scratch` - linux; s390x

```console
$ docker pull nats@sha256:b49e1f553ead4387c3d459b2749defdfc0ab810126ac8d812163e638bf2a7d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6536624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c7d642b8b06e2c5e968e6e20e9f297cdee018c32c8da135c631369e01edf3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 12 Aug 2026 17:25:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 12 Aug 2026 17:25:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 12 Aug 2026 17:25:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 12 Aug 2026 17:25:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 12 Aug 2026 17:25:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d13fbb3bf80132e46071e761ab339a2ad0ce1b929983f59c1280049c06e83f02`  
		Last Modified: Wed, 12 Aug 2026 15:59:28 GMT  
		Size: 6.5 MB (6536116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8aa79d4a519ae7eed567666f15e9107be223e6cef18983557ae8343900d2b`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2462daf6048956687f78a9981a6c30a1e27f46b82bda8b9d4f68d2626767e0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ec238227066b776070c7766ed2c1014eb651a01acb0ad7998d01d10b797b08`

```dockerfile
```

-	Layers:
	-	`sha256:e47c1c66e88e08faca605002b10c26e26e38ddb135b3cb8ef13e86d9d4dda132`  
		Last Modified: Wed, 12 Aug 2026 17:25:37 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.15-windowsservercore`

```console
$ docker pull nats@sha256:0972590307a1de2151c653752425f5209d101e3fd8c9db113c5538e12b3fac18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12.15-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:988fda35333baa106df4cf518dabc00627753ce49090bc3bf831b58754f7b916
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227060779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe6734fea5320ece04656dc3888677895028bd5ded6e730465e5d83b061a4b3`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:06 GMT
ENV NATS_SERVER=2.12.15
# Wed, 09 Sep 2026 22:32:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 09 Sep 2026 22:32:09 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.15/nats-server-v2.12.15-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=ed2f6d265abb6c6b151b077d1b6810d006f6e01453d864104de5ce4dc6ee6c27
# Wed, 09 Sep 2026 22:32:50 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:12 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259b1515f1a2ae10e37a60c518c10f964de97bd52852bc814a097cd9b94aea01`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a9a5cf9f0dedfe0c6c8f97a98e1272cf68ce59b6823376e89f8fca2f57ae03`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76198f49b6de7bfef1569c6d1530ff4444ca1727c57fbc7c899b1c561e3ef6`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2109e83f611dc4a98f019d641beffc8384d31e5c0b515e109699f2b0d1c8cbe`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9025716313858683816341a26550c46da00bb77a9517d75813b2468369dca0c`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fa1638ffc7893abcd9126c5993a5873826e3fcd4e72b50f8538bbaca90401`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f2de50383cbdf0bdc03e35616c8cfbdd3e4878ce1268c79c06da413b3bc9a`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 342.8 KB (342755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5528f3bebd50ac6ca5a877784863439ab1925d4e68fe71d10c67d1579fb603`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 7.2 MB (7215705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bedbad6fca2f560a22726173870b8636c0cec95585c49b96320ab2043894905`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf3a7d7d2a07444091d57cd66981cc270b2faabc1fbf7f3c5a518a7f882edc9`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0b5a761dce5ff652ab58b0baa1cbde943849134978fec0571c5ae6cb6f709`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb15dc06643b28365554726cfb12dc9e96331774785be31a33e426ae1d9578`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.15-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:0972590307a1de2151c653752425f5209d101e3fd8c9db113c5538e12b3fac18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.12.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:988fda35333baa106df4cf518dabc00627753ce49090bc3bf831b58754f7b916
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227060779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe6734fea5320ece04656dc3888677895028bd5ded6e730465e5d83b061a4b3`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:05 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:06 GMT
ENV NATS_SERVER=2.12.15
# Wed, 09 Sep 2026 22:32:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.15
# Wed, 09 Sep 2026 22:32:09 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.15/nats-server-v2.12.15-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=ed2f6d265abb6c6b151b077d1b6810d006f6e01453d864104de5ce4dc6ee6c27
# Wed, 09 Sep 2026 22:32:50 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:12 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:12 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259b1515f1a2ae10e37a60c518c10f964de97bd52852bc814a097cd9b94aea01`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a9a5cf9f0dedfe0c6c8f97a98e1272cf68ce59b6823376e89f8fca2f57ae03`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b76198f49b6de7bfef1569c6d1530ff4444ca1727c57fbc7c899b1c561e3ef6`  
		Last Modified: Wed, 09 Sep 2026 22:33:21 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2109e83f611dc4a98f019d641beffc8384d31e5c0b515e109699f2b0d1c8cbe`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9025716313858683816341a26550c46da00bb77a9517d75813b2468369dca0c`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6fa1638ffc7893abcd9126c5993a5873826e3fcd4e72b50f8538bbaca90401`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33f2de50383cbdf0bdc03e35616c8cfbdd3e4878ce1268c79c06da413b3bc9a`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 342.8 KB (342755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5528f3bebd50ac6ca5a877784863439ab1925d4e68fe71d10c67d1579fb603`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 7.2 MB (7215705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bedbad6fca2f560a22726173870b8636c0cec95585c49b96320ab2043894905`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.9 KB (1892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf3a7d7d2a07444091d57cd66981cc270b2faabc1fbf7f3c5a518a7f882edc9`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e0b5a761dce5ff652ab58b0baa1cbde943849134978fec0571c5ae6cb6f709`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3beb15dc06643b28365554726cfb12dc9e96331774785be31a33e426ae1d9578`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:c50b0a773c6c8d033cad54f7c53cb97fd6e09b3bfc1accda7cd4fa94e19e9ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-alpine` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-linux` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14-scratch` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.6`

```console
$ docker pull nats@sha256:c50b0a773c6c8d033cad54f7c53cb97fd6e09b3bfc1accda7cd4fa94e19e9ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.6` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.6-alpine`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.6-alpine` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.6-alpine3.22`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.6-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.6-linux`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.6-linux` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-linux` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-linux` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-linux` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-linux` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-linux` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.6-nanoserver`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.6-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.6-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.6-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.6-scratch`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.6-scratch` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.6-scratch` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.6-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.6-windowsservercore`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.6-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.6-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.6-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:alpine` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:ad7a43eb7e3337c3c38ce5d784d1461791f95f730f252d2b25eee699752a0ca3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:065e8355c20a5575b3c77224be1855e8103fd148b68fba05130b9b8ddfa40ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11104030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330bdac8a2ef5b0a60cfcde1325fd35c620359ebf2553f834740ee743a03ab2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d7fdc09fd6e3dc4e82b2a4b77f69aa1ca5601b07e7a4d4f49c091b10dfb82a`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 7.3 MB (7315465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fd7c2b392ffbab539b116e1eb062d06b58687d2cda89f3d9f1573ee4440bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1ed1af54e9a386928edf3f67e4640811523267e16cbc07711bbc827f8f0580`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4499b004abaad44d86f0890d981de03029ed2739fb12bbcda7f57617ecd4f136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2984e9356ed3721f92901f666c9783d5e8350f55a8f9bfc9b0c5df3a694d50bf`

```dockerfile
```

-	Layers:
	-	`sha256:b459b998a0fe1c35a46e06eff71dea9ce5de7655a9485399b6e6b5fe435dfb19`  
		Last Modified: Thu, 27 Aug 2026 18:29:09 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:70923d664c4f3021700ddc55d8ee2316ad24cbc95476fe6df3414413c5556520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10552059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4154813b993999f7cbc3c0f33386151445c2310735d8016e363d539167ff72aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:26:07 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:26:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:26:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:26:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:26:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956c6a35ece089e306c6c90c6ff06ea89b2a5b5dc7f467e239739bf4a4cf1a52`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 7.1 MB (7056288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d965d18d394d8406f1593b0c6539e9d721d9bce0031c8f0843bc35b51b24cacd`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67220cdad3e2df154add84a9a4fca3decf7650f9204757f7e7945a1518c5fe6e`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f9e5fc450ba1f2105abc44d81b721f067d1e1294f0167d4213bf553a4107fdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1a3e9e3c5aa4c95d1a7990ccf11c998e4b506bbb87ec0025a7f4a13ac000e5`

```dockerfile
```

-	Layers:
	-	`sha256:d0141086181b987b7e2e993c8fe4efd572f36cb7bb602f91a73f4efeafab7771`  
		Last Modified: Thu, 27 Aug 2026 18:26:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:0faffd440c043bac8ec514a6ab7091ebce1b2ff41b26bf53d97a05c58ccbd475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:249960d26c7bbef4a2bbaefd5e410f8f1df98b624a9f131418489774f3adac2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a771979a82701e673321d5e3922a5a441d4bd2cc14b1a28f5bd772f9e29b`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 7.0 MB (7046646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c5e4a2cd6314892d00c66ef97b320968023b3d6fabcc79c05aced8853964e8`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bf7ff0f769758bc28bdaedebc546c18f6c1f2cf8c2bec375390aa9c7d01952`  
		Last Modified: Thu, 27 Aug 2026 18:29:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:f32b2c51c519047bbb70f4ceb08b40661002f5fa81513874fa15e5ad574d90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c009ee55846752ffc600ce0f6d01c8663aadb57dfde386ff85a3f68228784cb`

```dockerfile
```

-	Layers:
	-	`sha256:927f48daab8582a59206da223a285d3390ea59ee3df3f925222fe220b6d63d7f`  
		Last Modified: Thu, 27 Aug 2026 18:29:45 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b5bd4a1da2f3608d18f1c68103640caf29e71d75ac7629ceb6e1696aa9c324f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10786561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0ca55c529ec25c2c95866fcc34557af9f4665d2abaea8a6045f942d7e7e57b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:29:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:29:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:29:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:29:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acafa92257bb34c8c468f3fe6f9bb610330223cd23991ab900d8ad3e7b85a906`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 6.7 MB (6665106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:241eaf8e95d70012c8a34eec6735761e919a3d69e08f5cdc96a13fcede1203bd`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a686a06cec150e7f996565cd0939c73d764ebdb58beb224924d71d7434e5f31e`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:716bf4e7dea601206d2a7719965bb424f82845ee7e20e56c4da17b5fa368dcba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50b280f59fe6796e526206c5f6d1ec6680216cdcc1bbea3cdebd02f2641a554`

```dockerfile
```

-	Layers:
	-	`sha256:85cef14fd307a60c3242b1e9c07bffb9118a1e51e25c362a29ec595990469447`  
		Last Modified: Thu, 27 Aug 2026 18:29:19 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e35538f79276d9cc08efea77e0416034bad08323ced7fc16f9c9fa62fc970c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10452248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013c02a1d8ff11819337fb292ccaa09da66e82e62928d004c387c8b1c39b975b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:31:09 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:31:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:31:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:31:10 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:31:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:31:10 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a80a3eed90fb2da744b5c8277be689dfaddb0ffbb0a34ab2ec28fa0d59ccd2`  
		Last Modified: Thu, 27 Aug 2026 18:31:19 GMT  
		Size: 6.7 MB (6732048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c486cd521199f8a28d6a10cd9f1650c444600b1197abd3c849da2ac74395937`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ddf94bef1202288c60bf441244b64a9b91708f5f55d9be4d0b54e7fbc1fec5`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5c9a096f0c5a2dc5ec13f15ebb43cf925e20e232e8f9823f3e2e977c3626fc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c22211098aeadfeb2fa3396ad372d89087aea397610b03f40dcf266d837b1da`

```dockerfile
```

-	Layers:
	-	`sha256:e1e5f06089cc7efde33261f7280975c7d6a323ee03a7a4ffaf05ad25262e4af6`  
		Last Modified: Thu, 27 Aug 2026 18:31:18 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:67d324d01e28b83bef62189c1d1154931280112db7083d0991c36fe5c57cdebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10770143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b32c5c16c81a600b5f64f3b59bc7c00f2ad1e6cebdc60797d787095f16a65a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
ENV NATS_SERVER=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Thu, 27 Aug 2026 18:38:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='3ff6e463762db64186a36cf0276dae8320509e995151ad0153ba9c9f67eee3f9' ;;     armhf) natsArch='arm6'; sha256='4b03d56d86a13f4b31d8246728daf4cf9ec65921e16398f8320641a4e789c1d0' ;;     armv7) natsArch='arm7'; sha256='1dcffbdc6df72f534e2d02f98517e9eefa300a7d76465398814122f5768fbae0' ;;     x86_64) natsArch='amd64'; sha256='61c3d55f69f61ec616b75782250936445f2819e9e5f2ae6159b10a31abd2200c' ;;     x86) natsArch='386'; sha256='131124abe9ca3ab9e9279846ea049e0740d08a8ea216bbbbebc08b596062208c' ;;     s390x) natsArch='s390x'; sha256='7377921f2bb83d35f4eda6f8b7b0b0571e430ce69fc4a5af658c20028e36f7a3' ;;     ppc64le) natsArch='ppc64le'; sha256='c216d08dfa9adeedc784ebc814d2f2379e6afbd090832a68623efcb311c8935a' ;;     loong64) natsArch='loong64'; sha256='e54f531c3f19002273c97b2473a0735f45244539bf36bf5623d46467b2b8a527' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 27 Aug 2026 18:38:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 18:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 18:38:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:733418739eb09a48ae40e7aa1f5226525e967741c8ae1be16996ca7a6ed3ab27`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 7.1 MB (7132092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ef8fd292cff2f562ef0b2c403d31d0f82eed9524412a3a639394912aa2dea0`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5948955085b10476397b8ece39a73df989b85999e6d5a654bd473759360dcb6a`  
		Last Modified: Thu, 27 Aug 2026 18:38:14 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5fc20748d838f1a2cf13ec7b08ddfabdbfd0775d469734977bae799142f5d7c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ed9531ad80e6aeeee9e3dd3ea10b651a388dac062ad5e459d35c7898771766`

```dockerfile
```

-	Layers:
	-	`sha256:d76499fd8e383cadd858e276ef1475f757f04bb83d450c890a02a73009b7a398`  
		Last Modified: Thu, 27 Aug 2026 18:38:13 GMT  
		Size: 15.4 KB (15403 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:c50b0a773c6c8d033cad54f7c53cb97fd6e09b3bfc1accda7cd4fa94e19e9ed9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 13
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5622; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:e67a8ec3057d2d63982b3ae2013dc08dce2be05de75cf228110f91e8f88f6032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:9d96e789dc2ac04edeea2655492ea735ce30ec81db2a0ac8f4717a372647107a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131746383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d39b78b0201b9d790f6ec9d2c816fd7ca8ed2294488ad05a0f4812b1ea9ea06`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:19:12 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:a5cff8234a77efb0c4a323b4116b6f8602020e47a003e75e5358d25bb14b317c in C:\nats-server.exe 
# Wed, 09 Sep 2026 23:19:13 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 23:19:14 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 23:19:15 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a2643eded3d4ae192a618bd5d26d90aba9207d80424b89426af9d848e56dd3`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8047fa61a7b77bebb65c0eb2bc9d16088127e0382e257f486983cbc788b72a7`  
		Last Modified: Wed, 09 Sep 2026 23:19:20 GMT  
		Size: 7.1 MB (7103007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6951049a7fd19b64e6113cbc63d0ce84a62aa8d41baabe77cc550968d73d2fd6`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.7 KB (1716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d17538ede8fddefef3e178c4efcbf899c80b516ebb322fb87627310b444c53b`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513c371f245ec4615afe6ebc727bc1824ffea16c3366e6a7458eecc8df6b3d34`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5b4ed7623b0c18ba8dfdc2f9bf6561a3dcd4fd5a69719b01d24395ec4e08b9`  
		Last Modified: Wed, 09 Sep 2026 23:19:19 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:54eac64d71b1b04360c2bba312a6b652ff7da0b7e7328865c977518aa5e29d11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `nats:scratch` - linux; amd64

```console
$ docker pull nats@sha256:190ba625ec25f1eab47e4215f064067a924e548a3428ae226ec23d32a122b03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6904472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917d0f2c210026c4cb2a767505d510fc848222a2934a37140f7665201db8df9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:36 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:94ccf57f410d4631bef8f970ca6714cfe186e70f155b8f0d6a11e6637c7732cf`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.9 MB (6903964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa0800816b2b5c731718178461c35ddbe135032e83d76a440d312c56076a292`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:f855430a2e6d767580ef89f93e2fad717c5cc035dd287a5080c27d7b464d5350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6421eeca3bd037cd28f1a289f9ca9819c7435a9361dbf67259cf65372dccf8e`

```dockerfile
```

-	Layers:
	-	`sha256:9223c657dfabcdbc9e90c6b4bd145a2f1d5171c34bc84e2e2e1fd4b742ef8651`  
		Last Modified: Thu, 27 Aug 2026 19:10:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:78aaa356f6b536623ca7f5e5e4b50ed8e908e25603285bec8f2cdacb418cbfb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78b3b3999f94f1333b9bfa951c33c23123b570b4f312646d37a65bbcf0d84435`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:23 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:35e5ede8026f8b7b2cac8588eb1754e96f41924bfda1892bc8d075956479551c`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.6 MB (6646941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45c3df522924bce6254f5ee345334d248b7ce5b40a922d52cdb6971058fcd9`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5d9f844c471779731aa5de382af5020e9b6a9e6504d3447de0a40065f38ee827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad1fa79c0231cccd05741d47bd44f409ac4b5b1746b8a4bbc8b607d99df1873`

```dockerfile
```

-	Layers:
	-	`sha256:dd1acc3aa01331bf4a0a7b6a6029dcd1dec9ea11ec7e922cf008daf96951b283`  
		Last Modified: Thu, 27 Aug 2026 19:10:28 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:6f76c5bca3009896ea9aaafc6cb3a4d83dafdb7877f0f99582e682805bf68916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6636237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865667fb2afab3a8513d20b78fc30cd29d67e11857ef6474969bbc5f849f14b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:17 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ffed786f81517f238870697df0d6e94820eef39efe263a440aeb2d190afef89c`  
		Last Modified: Thu, 27 Aug 2026 15:51:19 GMT  
		Size: 6.6 MB (6635727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8bbbeba8695d41d966587094c0cafa1af6ee829b9011f16b67d9aafab97f07`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:509da9ecbd44c1c924854ebf89db05dca9c7d7a7b9abbc637b27d6a428a44e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab445667ec99e6f353c2455e6293a7f52e9ef121a2fe5116cd6741c7fd6889b8`

```dockerfile
```

-	Layers:
	-	`sha256:67ce28b081f39f06770f3730c565417b9d0368eaf072e66e491f1c565e3a4d6f`  
		Last Modified: Thu, 27 Aug 2026 19:10:21 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:03676e4f3e13a6bea2440263ff031ea51191f344d57c715f37d010d6059d1c6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6253823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730717f2571ef090b263ee5c01f3b04c7bdf94aabb6d020ef8ee596527c1870b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:10:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:10:16 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:10:16 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:10:16 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:10:16 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:81f844da8e3ecdcc19015020480a69fed0173601d2340b633900358f4af315bb`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6253314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476aa575ae9fb3e4fe834321123987a2aafb03dd704087e492c28c8b1db0380`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:56e74d0a898ca707c6f3de93858c4a2d2018cbd78c9fca1018b5758a7e3276da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d943f3b9b774f20ca5ef353b845ab4857b705cf61b9576f8f108a300015dc22`

```dockerfile
```

-	Layers:
	-	`sha256:a5172411a254da3411a8b2411041499cb7384f4ff9debd9c47030f2a3719b02e`  
		Last Modified: Thu, 27 Aug 2026 19:10:20 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:d514b91e43773aa49f1b5a8eaba43127ba372b890839728df46f84da408a8fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6322501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4ebc90852b39581a600726d1bdb1eb9950e1d1464707bbeec52e15bcf2a4e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:13 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7271f087e93d75a58653817c88740debb2d46e033f07053cc0216dc91d928889`  
		Last Modified: Thu, 27 Aug 2026 15:51:22 GMT  
		Size: 6.3 MB (6321992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb7353a71a60b76b67a8bfa25d857d4fdcf59f7460c1ba74f722fe704ecc8c2`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d628d698d0e8644b0f2f3bcb3bdfd5d4edad7638e434b7f82e7a7610cd7b5d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c485d34664c4731f66d932178c597a33b483e456c6b452543d2559d039510278`

```dockerfile
```

-	Layers:
	-	`sha256:c92e395b6ab251813d68db9b93352bc5ef35248acac4ba43f36767e258b64543`  
		Last Modified: Thu, 27 Aug 2026 19:09:19 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f55a1959de2a523570a7f62c53f28890524fa2bea0b60875e5bccc991f30e4ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a759118b5fc6659bde9d7dcbb920db1ebd2254edbac9ed321d54685ecd4f1d8e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227283210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0c1fc640385b537d5de9275af16a64e6d9bef88f4ae9a0904d0c2f6ea12410`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:32:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 09 Sep 2026 22:32:07 GMT
ENV NATS_DOCKERIZED=1
# Wed, 09 Sep 2026 22:32:08 GMT
ENV NATS_SERVER=2.14.6
# Wed, 09 Sep 2026 22:32:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.6
# Wed, 09 Sep 2026 22:32:10 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.6/nats-server-v2.14.6-windows-amd64.zip
# Wed, 09 Sep 2026 22:32:11 GMT
ENV NATS_SERVER_SHASUM=b47e9c69480e41e668e495e8b980b12dbf226d1ce7eceb9c44acdd33640bafcd
# Wed, 09 Sep 2026 22:32:48 GMT
RUN Set-PSDebug -Trace 2
# Wed, 09 Sep 2026 22:33:09 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 09 Sep 2026 22:33:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 09 Sep 2026 22:33:10 GMT
EXPOSE 4222 6222 8222
# Wed, 09 Sep 2026 22:33:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 09 Sep 2026 22:33:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0017de9ba741c0a15aa25320e256ee5a6fb3136a6789ffe8f893dd4930f00ebb`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c5386f96e0a1b881faa2151a76eae15f5b26c532f965b0047331e627e0a3ba`  
		Last Modified: Wed, 09 Sep 2026 22:33:20 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f17d49f75f00d7c72da16eea88ddb9e615bedba20d1c26426135beafb5c370`  
		Last Modified: Wed, 09 Sep 2026 22:33:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b1910ae8cd5c4541241949601c84ccd765e4c69e121f293df136eea9d3e4c5`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7581eb6daf27a209c87a36c6b3db33952710390e3720563a13dcda54faea4266`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac5601f0d06ab7d2e04f11b32aa39a4b072fe51d26738becde68731c1e5ea19`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f55696f78340ed95e46d02de36ebbed86994a3defab168bb782ec8d08ed92`  
		Last Modified: Wed, 09 Sep 2026 22:33:18 GMT  
		Size: 343.3 KB (343278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b162be4de294b63baf8eb8f1813b133630ffbfb16abc0b1e036d54bd69afc5`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 7.4 MB (7437434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d19f3f3a3b630076944c36c36c399b2aa790f915a5845b9d6fb4018188193d`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed2b60c1585c0a3da926c1d9a623da62b7b1fd8002a6baced6d5deb183924c8`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063120ed7df64522c4289e88b2f4c0834390921fed83405097f75f017b8e27a9`  
		Last Modified: Wed, 09 Sep 2026 22:33:16 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72869e82d57b28dd39942180989e594b06fbb66f583f3f7b4e8bfc1abd5d8809`  
		Last Modified: Wed, 09 Sep 2026 22:33:17 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
