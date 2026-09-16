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
-	[`nats:2.14.7`](#nats2147)
-	[`nats:2.14.7-alpine`](#nats2147-alpine)
-	[`nats:2.14.7-alpine3.22`](#nats2147-alpine322)
-	[`nats:2.14.7-linux`](#nats2147-linux)
-	[`nats:2.14.7-nanoserver`](#nats2147-nanoserver)
-	[`nats:2.14.7-nanoserver-ltsc2022`](#nats2147-nanoserver-ltsc2022)
-	[`nats:2.14.7-scratch`](#nats2147-scratch)
-	[`nats:2.14.7-windowsservercore`](#nats2147-windowsservercore)
-	[`nats:2.14.7-windowsservercore-ltsc2022`](#nats2147-windowsservercore-ltsc2022)
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
