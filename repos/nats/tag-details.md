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
-	[`nats:2.14`](#nats214)
-	[`nats:2.14-alpine`](#nats214-alpine)
-	[`nats:2.14-alpine3.22`](#nats214-alpine322)
-	[`nats:2.14-linux`](#nats214-linux)
-	[`nats:2.14-nanoserver`](#nats214-nanoserver)
-	[`nats:2.14-nanoserver-ltsc2022`](#nats214-nanoserver-ltsc2022)
-	[`nats:2.14-scratch`](#nats214-scratch)
-	[`nats:2.14-windowsservercore`](#nats214-windowsservercore)
-	[`nats:2.14-windowsservercore-ltsc2022`](#nats214-windowsservercore-ltsc2022)
-	[`nats:2.14.7`](#nats2147)
-	[`nats:2.14.7-alpine`](#nats2147-alpine)
-	[`nats:2.14.7-alpine3.22`](#nats2147-alpine322)
-	[`nats:2.14.7-linux`](#nats2147-linux)
-	[`nats:2.14.7-nanoserver`](#nats2147-nanoserver)
-	[`nats:2.14.7-nanoserver-ltsc2022`](#nats2147-nanoserver-ltsc2022)
-	[`nats:2.14.7-scratch`](#nats2147-scratch)
-	[`nats:2.14.7-windowsservercore`](#nats2147-windowsservercore)
-	[`nats:2.14.7-windowsservercore-ltsc2022`](#nats2147-windowsservercore-ltsc2022)
-	[`nats:2.15`](#nats215)
-	[`nats:2.15-alpine`](#nats215-alpine)
-	[`nats:2.15-alpine3.22`](#nats215-alpine322)
-	[`nats:2.15-linux`](#nats215-linux)
-	[`nats:2.15-nanoserver`](#nats215-nanoserver)
-	[`nats:2.15-nanoserver-ltsc2022`](#nats215-nanoserver-ltsc2022)
-	[`nats:2.15-scratch`](#nats215-scratch)
-	[`nats:2.15-windowsservercore`](#nats215-windowsservercore)
-	[`nats:2.15-windowsservercore-ltsc2022`](#nats215-windowsservercore-ltsc2022)
-	[`nats:2.15.0`](#nats2150)
-	[`nats:2.15.0-alpine`](#nats2150-alpine)
-	[`nats:2.15.0-alpine3.22`](#nats2150-alpine322)
-	[`nats:2.15.0-linux`](#nats2150-linux)
-	[`nats:2.15.0-nanoserver`](#nats2150-nanoserver)
-	[`nats:2.15.0-nanoserver-ltsc2022`](#nats2150-nanoserver-ltsc2022)
-	[`nats:2.15.0-scratch`](#nats2150-scratch)
-	[`nats:2.15.0-windowsservercore`](#nats2150-windowsservercore)
-	[`nats:2.15.0-windowsservercore-ltsc2022`](#nats2150-windowsservercore-ltsc2022)
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
$ docker pull nats@sha256:1a410551f4006457d97528f723a16fae34f0027631a988b9625753a3257a26a2
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:290cf1a7543bb0b0b353291151f78a53a3d1e9e862a7b4c4f66e648b5a5a52d8
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
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
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
$ docker pull nats@sha256:290cf1a7543bb0b0b353291151f78a53a3d1e9e862a7b4c4f66e648b5a5a52d8
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
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
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
$ docker pull nats@sha256:2203842b02fa9ae75efcede76407212b554918ef25cecde67f0210aee2ced6b6
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:2203842b02fa9ae75efcede76407212b554918ef25cecde67f0210aee2ced6b6
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:1a410551f4006457d97528f723a16fae34f0027631a988b9625753a3257a26a2
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:290cf1a7543bb0b0b353291151f78a53a3d1e9e862a7b4c4f66e648b5a5a52d8
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
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
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
$ docker pull nats@sha256:290cf1a7543bb0b0b353291151f78a53a3d1e9e862a7b4c4f66e648b5a5a52d8
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
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
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
$ docker pull nats@sha256:2203842b02fa9ae75efcede76407212b554918ef25cecde67f0210aee2ced6b6
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:2203842b02fa9ae75efcede76407212b554918ef25cecde67f0210aee2ced6b6
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.7`

```console
$ docker pull nats@sha256:578f9e80385d6294ce200ff6019061f26b717301ff35ce0c1118a0249fc3c608
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 11
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
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.7` - linux; amd64

```console
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.7-alpine`

```console
$ docker pull nats@sha256:ae5c49895a97b129546e30908012d7c965296c02f8754cd879e9d50ed3edd508
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `nats:2.14.7-alpine` - linux; amd64

```console
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.7-alpine3.22`

```console
$ docker pull nats@sha256:ae5c49895a97b129546e30908012d7c965296c02f8754cd879e9d50ed3edd508
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `nats:2.14.7-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.7-linux`

```console
$ docker pull nats@sha256:e8c4a3d844994c8a9740e42f956d4b41461618acf591b62268300432bb6a3780
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `nats:2.14.7-linux` - linux; amd64

```console
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.7-nanoserver`

```console
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.7-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.7-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.7-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.7-scratch`

```console
$ docker pull nats@sha256:e8c4a3d844994c8a9740e42f956d4b41461618acf591b62268300432bb6a3780
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `nats:2.14.7-scratch` - linux; amd64

```console
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.7-windowsservercore`

```console
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.7-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.7-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.7-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15`

**does not exist** (yet?)

## `nats:2.15-alpine`

**does not exist** (yet?)

## `nats:2.15-alpine3.22`

**does not exist** (yet?)

## `nats:2.15-linux`

**does not exist** (yet?)

## `nats:2.15-nanoserver`

**does not exist** (yet?)

## `nats:2.15-nanoserver-ltsc2022`

**does not exist** (yet?)

## `nats:2.15-scratch`

**does not exist** (yet?)

## `nats:2.15-windowsservercore`

**does not exist** (yet?)

## `nats:2.15-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `nats:2.15.0`

**does not exist** (yet?)

## `nats:2.15.0-alpine`

**does not exist** (yet?)

## `nats:2.15.0-alpine3.22`

**does not exist** (yet?)

## `nats:2.15.0-linux`

**does not exist** (yet?)

## `nats:2.15.0-nanoserver`

**does not exist** (yet?)

## `nats:2.15.0-nanoserver-ltsc2022`

**does not exist** (yet?)

## `nats:2.15.0-scratch`

**does not exist** (yet?)

## `nats:2.15.0-windowsservercore`

**does not exist** (yet?)

## `nats:2.15.0-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `nats:alpine`

```console
$ docker pull nats@sha256:290cf1a7543bb0b0b353291151f78a53a3d1e9e862a7b4c4f66e648b5a5a52d8
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
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
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
$ docker pull nats@sha256:290cf1a7543bb0b0b353291151f78a53a3d1e9e862a7b4c4f66e648b5a5a52d8
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
$ docker pull nats@sha256:e914976435e5a20f3a8f17f764b86a92b28d877a466380aeeac3da3f29ddef28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11129069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f23e459ec3092d97b3252d7047ecd44060a89d09363ec8b348bfe2b0d03df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:48:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:48:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:48:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:48:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3b9a04e9bfa71f859327764176bb4040d6cdbfe0a64922c4690fe5d6b80b5f`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 7.3 MB (7340503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39147a0a3804bd0c402705a8d0787d83eb2f962d3d443fa4d6f5a1370b8cc97`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a893eb1efe4231ed932122c6bee5dae67d338238562a50da78809d76b6e582`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fa5b84d092265bd14a89e6b00ee71de991b1772f6342c605f49d985ea16ab9bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafc23c65a47f45bf31a7fceddc4d021484bf2f33352f7ff954fe5ce3c71a381`

```dockerfile
```

-	Layers:
	-	`sha256:592aa23f17cbe40c793b9927d402a569a416aa81f2f6373f90c3b60ca74de61c`  
		Last Modified: Tue, 15 Sep 2026 22:48:29 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3f05db37a096bbe78d52a29b37b302ca6dd1d5f7333bcef547320e89d8b1f154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10576485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd459ee61db64d214892022b1442aa42914fb562fa04593dce689d32ae2a0f1a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:02:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:02:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:02:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:02:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d92e85ff97e7e8d08551e50ee23de3b8ccf2819cab62b0bd7cc3e29bf6ca9bf`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 7.1 MB (7080716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6635a362c4413c94405b22ed646ea230011f74f72050e115363db04c7bc8d2`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484e634657f8d7f8a97e251906b885c9b31d11f43e414a17b099295b4beab021`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:eea3328cff6c8b901ab2433eac355336e672a1d5c1e5e4eafee4b6b1ef194a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39f3058720ee27d0e35a5af76e1b2b2bba2194c323a87e04b155f63af861b2f`

```dockerfile
```

-	Layers:
	-	`sha256:71e5fb92dcf41fe09cdb3bc2eb4c927370771d22348a63433edca86d46294463`  
		Last Modified: Tue, 15 Sep 2026 23:02:42 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:68e1d9d490e224463e7f86d8813938627ef3611d6f3728096fbfb715c6f1b20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10278927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fe77a8a3e641a965039066a586aeaf1a48130bfbf3573a0f9541eb21aea7c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 23:07:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 23:07:57 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:07:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:07:57 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7879596ea56d85cb1ac334c7a38fba9e027caa63028c9a1787fc57624ee10`  
		Last Modified: Tue, 15 Sep 2026 23:08:02 GMT  
		Size: 7.1 MB (7068344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5fd517204c87f9b693e3ca6d3fde3d2164753486c0200af79e2bf18815bb83`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b4cbd95fcfb3d9399a2727410a0eec4ed360b8e5df871bf3eb9c4607c6c538`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c6b36df7be3134270053db14eb306e170fc04843d61fef40ca288ffc5ed163db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1a6407412522f54cf74e02e7c7e3a34e72fff88dce05e402a0e4710c7e7762`

```dockerfile
```

-	Layers:
	-	`sha256:b56bbd10e0beaa7b9a38efbb276c501266a1e1fed96832530686b97ff4ae6137`  
		Last Modified: Tue, 15 Sep 2026 23:08:01 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3309ee4ea2484dd36e78b6b6d27389326621fa4bdfc35ff7440546466c7c027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10809691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9c2ac072d3ecb935b608f82d7b433244d0bef41e78c7963fbaf4bba2630d9f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:37:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 15 Sep 2026 22:37:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:37:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:37:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab592df852969207f00726249eb6ca9986327b8c8f38fe9d022ac89fbbc4584c`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 6.7 MB (6688234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5dd34c45f57ca489cb51d0fb782991dd2ad7f0781ecc3ecbbdbb8804d2b790`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef62106527aeffd10b0b71f7cbdbfb275baf90816fb670f82a383ec9d7e55b2`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1f0197ec1ce94341a7b2003412c596eca755eb57301ce07250aa063d2b56fcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee84729dba2dddae94c0335cb80dbbf5bd3b0e960e935bab14f494eb9096bf85`

```dockerfile
```

-	Layers:
	-	`sha256:ecebf437af0b095058fbcf0942e969500329bbd98cb856d010f826189ae0e72e`  
		Last Modified: Tue, 15 Sep 2026 22:37:22 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4b709ea1a0487fdb130fe3cc97b189a268f9dd4e193e5791d34f5f959d3c2035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10473007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e7460d89c588122885f953dc92308312f2fcbf93d50733fc13665fec4930de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
ENV NATS_SERVER=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Wed, 16 Sep 2026 00:59:04 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 16 Sep 2026 00:59:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 00:59:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 Sep 2026 00:59:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9857e7e679f3bd29abe473918e02e513dc632585932bec975fbd57f687ef7c2`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 6.8 MB (6752804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27177792b7e4b346e989b426e4ae52da3d1078961cde197df3677cd1719d63aa`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c12ace6def1caeb65d699a6a22db2bc0f1bb1c5089504c29533df76124406f`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:aef3cb75d1b880cf17bd1f29a0fe9a563a917e8c1daef1cef373f549b304efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5852a51cd57f6d08bdaf80c2c348afe9ebe2862f1ee46a38ac08d9f2d2bedae2`

```dockerfile
```

-	Layers:
	-	`sha256:0b62ca949528434b29bcdc0495ac9b16b029522e682563d0373c98c93e37b172`  
		Last Modified: Wed, 16 Sep 2026 00:59:10 GMT  
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
$ docker pull nats@sha256:1a410551f4006457d97528f723a16fae34f0027631a988b9625753a3257a26a2
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:2203842b02fa9ae75efcede76407212b554918ef25cecde67f0210aee2ced6b6
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:81fb4e6f6a48737fe67d8b95a4b04adccaf733b91667acc887cfab6ac8be6daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:5b06a88ef5de5ba422201a7c53f6b08f99c1bc5c853f5a1e6ef40c31ee1f2d6a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131768650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bab25c71fd29449cbdbd27a5e5104a174997180a93e18a65749fe87c258e0933`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Tue, 15 Sep 2026 22:43:27 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:43:28 GMT
RUN cmd /S /C #(nop) COPY file:5db8a3860ca4ae3da7fb0ad435f7934daa74444787ce0e0d976d0b5fe70ded20 in C:\nats-server.exe 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:43:29 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:43:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63287a1d8edc4316e6276a6998426e00af3d87d8d21bf55bce6aec7185eef64`  
		Last Modified: Tue, 15 Sep 2026 22:43:36 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95d7702d8165b2f7f7b026f90e5d2140139c7e031d9e9738209e2582fb468b9`  
		Last Modified: Tue, 15 Sep 2026 22:43:35 GMT  
		Size: 7.1 MB (7125242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88e3fc6623df453b524bba47207584c3b4fd98188f7a2d098f31748e9d6479c`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebbaa24dde705d5dcc4c3740a6350c2699486990fe24c8163b4fd00abb6668`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e72ded08d6fc3cc612fceb072c957cab22398d147fc8e3f4b14b9531b8ac9f`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899c94c3c0c3c1ca5f656790d05b28db5465065abde8d73e76577064601ae967`  
		Last Modified: Tue, 15 Sep 2026 22:43:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:2203842b02fa9ae75efcede76407212b554918ef25cecde67f0210aee2ced6b6
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
$ docker pull nats@sha256:9923a9954d6f96766dabe243ab89fb952c161a1cb259a6adf9c7eead837d0008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec3f49b49774bd889e47c64b88e655648dbd47880a2b6ddbb18c4a267eabd65`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:11:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:11:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:11:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:11:32 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:11:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453d05cba23c8e33412d85eda732ca12267ef243c8704320a8188408f4205f60`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cf2a041a62fd7d1fab8abbf7b845a9e3571c15cc061417706416d2e0c467a121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c4e407862a5ea5702d1f1f986eb9490aeb2184bb572147dd162ff4d9aca012`

```dockerfile
```

-	Layers:
	-	`sha256:e3683dfae83140e29985b44d64699488983fcb9f610d99b03f1258c1cb6ee326`  
		Last Modified: Tue, 15 Sep 2026 23:11:36 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:56380fde3c9c31b68c4d6b582392e9cbbd5296828d886543b2ea541956715ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0b854d9c5286f795a05df5bba3065bf039f1d8b7221b6a896bb4927433b760`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:20:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:20:17 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:20:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:20:17 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:20:17 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b997911eadccfd21a94265d3e369af2af9108523249207d254916ef042795a5`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ffb40b7af3b8e48e28979a106ded91c518187bb6e939194ecddb98e28a44d29c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08b37173e2c7432076da59b4d906ac6a8c3801838224853efc2923bf0f79a0a`

```dockerfile
```

-	Layers:
	-	`sha256:7d8b8810ff53dce227b032b10be316f6faf646426e21ac93b3501a826cc9444f`  
		Last Modified: Tue, 15 Sep 2026 23:20:22 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:c2ba461352a9d725a64a935f13a50305f3e87bfe8e5730f0f98ca3c415a153f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbd69d7e87d9f271575e3006ed3611688b38247e0fa7e214604f1da9cb32e30`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 23:21:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 23:21:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 23:21:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 23:21:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 23:21:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd174073b39446da97395a5c38e977b4a5f0a115b349dcbc04d027503ad67c3e`  
		Last Modified: Tue, 15 Sep 2026 23:21:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:d30d34e0094876456bd88f531139d13a58cf7492ef3028b7cf28d4174338682a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37294c09a4e5eff65b3d8c8ba1211a686c06e7b220336a371fa2e39036d6bbcb`

```dockerfile
```

-	Layers:
	-	`sha256:4863be5d3a97322267cabeb4f30170983c4b7e1ab77a8525fd0e40cad6e8028b`  
		Last Modified: Tue, 15 Sep 2026 23:21:04 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:251cff620553b203aab229878ff22e7addbe53d368720c7eb8fa22615c76da8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77cf6e86e39270e5b7f5d63efd005d2c294a4131298eddf7930f40b899551fb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 15 Sep 2026 22:53:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 15 Sep 2026 22:53:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 15 Sep 2026 22:53:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 15 Sep 2026 22:53:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 15 Sep 2026 22:53:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772792a750d5c2b64348454d5e958fcc0168e7bc7c68701713da8a176b1364a7`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0d9a05d82367dfd8e4dc9b740c311d2384760f4e322908b9dc66b5709f323da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309798baf925b749fe7fc2de19500bff5e68c56e296f6a995979a23b1d00d96f`

```dockerfile
```

-	Layers:
	-	`sha256:72a3d0b1b77595f7fdf4309d3af3bc98782e47543a7ac6dcc00e6a914ae21260`  
		Last Modified: Tue, 15 Sep 2026 22:53:33 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:56f01ed4ae8a96a9307b9c342beeef24968ae219de6c59b495d24b3627fd0bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddf2d1bbff52dc66ab909b78f09f89d29a76a1c4a0c9d6d855e33f6112c3eb2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 16 Sep 2026 05:00:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 16 Sep 2026 05:00:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 16 Sep 2026 05:00:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 16 Sep 2026 05:00:42 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 16 Sep 2026 05:00:42 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c800ffacf9b59dbcef142d90e44c3710230eb188fd9adaea4588c9a3a51401`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:84bf3a617a4336af98bf73a25de2c9c45428060aedfb2550918599a07ed968ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:831cd8399af8c757eb79228faddba0fa173f6842f1a1bbc156dd116707dfc858`

```dockerfile
```

-	Layers:
	-	`sha256:c3c494a86128c8381a1eac536c070fd632d313f75db8066b535d22bb73854137`  
		Last Modified: Wed, 16 Sep 2026 05:00:48 GMT  
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
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:f48429c38adfbd8b096d58657dcef434acb300d9700636ac6d14ef6d4e0442e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:2ef366b863cc06735c8c4acbd56211e9e6c8fa5b07e5daed39104afe256fafe6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227324435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac445eea8abf694889e2f5e69127572dd45663b88a5537b6408d9e9f1ed6f99`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 22:31:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 15 Sep 2026 22:31:14 GMT
ENV NATS_DOCKERIZED=1
# Tue, 15 Sep 2026 22:31:15 GMT
ENV NATS_SERVER=2.14.7
# Tue, 15 Sep 2026 22:31:16 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Tue, 15 Sep 2026 22:31:17 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.7/nats-server-v2.14.7-windows-amd64.zip
# Tue, 15 Sep 2026 22:31:18 GMT
ENV NATS_SERVER_SHASUM=ef6b4604cc84cd37192e6407ce1bb975f380a5293dccfdb126eaf11311c58ac6
# Tue, 15 Sep 2026 22:31:25 GMT
RUN Set-PSDebug -Trace 2
# Tue, 15 Sep 2026 22:31:41 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 15 Sep 2026 22:31:42 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 15 Sep 2026 22:31:43 GMT
EXPOSE 4222 6222 8222
# Tue, 15 Sep 2026 22:31:43 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 15 Sep 2026 22:31:44 GMT
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
	-	`sha256:1df93b22460df9471c2048b33ce9c2c27096e81bee4e104b14abe94de066a065`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c7bfd78ed41f77d1bb4e1c82693ad2471d0d66935e892e72ffb215fc297034`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bc1d41070fe5132feeafaa4a524425b00e457f54389b312e023ddb950f686`  
		Last Modified: Tue, 15 Sep 2026 22:31:51 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59ea05570d2634840ec8ba244bdad24774781763817f73fab3ef9be86e78d5`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4fbb9b2b698669a645ef81bf20c4c697568862e74d3440a37dc5eda285dbfe`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79d3827cd3d841d259702ac38a6c3cf4d55fa140e03a577002fa04ff3d097f`  
		Last Modified: Tue, 15 Sep 2026 22:31:49 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb9c85ded08ceabe5b5087564c0613d44afe9f71925d6f6e47103cf28eb220`  
		Last Modified: Tue, 15 Sep 2026 22:31:50 GMT  
		Size: 351.7 KB (351667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b69a88368e56503f01ad703f6d20956032983f0a1bf18e45f1983f9163f1b0e`  
		Last Modified: Tue, 15 Sep 2026 22:31:53 GMT  
		Size: 7.5 MB (7470291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4684042920ee1577c5cf7500f64a26389a4508c8307e876e6c7c6fccc78b05d6`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.9 KB (1904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a31c6008ae5ade0cbd27c0548868903159cea6b3b593fd489cabd016eabde`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2072807a07196aad8a1edc0b3e5b9a3d68f424248afdbfcac33e504aa3470b3`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8b7ae301cbea7550c1c8612ac9de8ac671aacaa30aaf49761d22794371cc78`  
		Last Modified: Tue, 15 Sep 2026 22:31:48 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
