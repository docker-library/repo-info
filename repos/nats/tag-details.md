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
-	[`nats:2.14.9`](#nats2149)
-	[`nats:2.14.9-alpine`](#nats2149-alpine)
-	[`nats:2.14.9-alpine3.22`](#nats2149-alpine322)
-	[`nats:2.14.9-linux`](#nats2149-linux)
-	[`nats:2.14.9-nanoserver`](#nats2149-nanoserver)
-	[`nats:2.14.9-nanoserver-ltsc2022`](#nats2149-nanoserver-ltsc2022)
-	[`nats:2.14.9-scratch`](#nats2149-scratch)
-	[`nats:2.14.9-windowsservercore`](#nats2149-windowsservercore)
-	[`nats:2.14.9-windowsservercore-ltsc2022`](#nats2149-windowsservercore-ltsc2022)
-	[`nats:2.15`](#nats215)
-	[`nats:2.15-alpine`](#nats215-alpine)
-	[`nats:2.15-alpine3.22`](#nats215-alpine322)
-	[`nats:2.15-linux`](#nats215-linux)
-	[`nats:2.15-nanoserver`](#nats215-nanoserver)
-	[`nats:2.15-nanoserver-ltsc2022`](#nats215-nanoserver-ltsc2022)
-	[`nats:2.15-scratch`](#nats215-scratch)
-	[`nats:2.15-windowsservercore`](#nats215-windowsservercore)
-	[`nats:2.15-windowsservercore-ltsc2022`](#nats215-windowsservercore-ltsc2022)
-	[`nats:2.15.2`](#nats2152)
-	[`nats:2.15.2-alpine`](#nats2152-alpine)
-	[`nats:2.15.2-alpine3.22`](#nats2152-alpine322)
-	[`nats:2.15.2-linux`](#nats2152-linux)
-	[`nats:2.15.2-nanoserver`](#nats2152-nanoserver)
-	[`nats:2.15.2-nanoserver-ltsc2022`](#nats2152-nanoserver-ltsc2022)
-	[`nats:2.15.2-scratch`](#nats2152-scratch)
-	[`nats:2.15.2-windowsservercore`](#nats2152-windowsservercore)
-	[`nats:2.15.2-windowsservercore-ltsc2022`](#nats2152-windowsservercore-ltsc2022)
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
$ docker pull nats@sha256:e249927b7766bcbd9d789889df43552e8ace9db327c848e50caefe59f4ed6bc9
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
	-	windows version 10.0.20348.5773; amd64

### `nats:2` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:b7138d7061349234c55f393ba76623047121f886f27395726f0ed3f72fea3bcb
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
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:b7138d7061349234c55f393ba76623047121f886f27395726f0ed3f72fea3bcb
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
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:81ec9c26eec65bd4b24e9502081967542a57ab9814a07a85455ad134d6a4cd97
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
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14` - linux; amd64

```console
$ docker pull nats@sha256:1867a3cdc4ecfe2ee28f619bf29c4723615a80cce37e3a7f3804bc6db08d96ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6954550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436c96a68b255b7cff6c17369a2766b376d0747fd45b6928d5aea7362835014`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3c0c3209357d3c0be252dc49e24f96e3f9c6785e14732bce6ecf4de0f37ccfe`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 7.0 MB (6954040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245a36e6b3c019d4098bc17a510cf2162e2825c4482e182ec13f918cb7a0b3a`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:1b5e3ae973a2c0cb78fc4fbfecc98a8f5aada38b6e42ed26abaaf3727d642496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd17f74577804b725bb22608dda34171b98287613c8ee547b756ebcc56df45c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4e59183d6fcd23139e5188efc9fa14a57c8805baf0c0dfefb172b949bb9527`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:23af70b0b9bbf47da83c3fbb0bc1bcec0fe6632b4a31310d00863682072148c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25034833a0029ede9bfa353459ad3976ca640fb7b55f04ae5c1a36ae2ecbc9d5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:02 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3b1ebb427f87eace068b3e418550437ba162ddc21e537def3cdd2373c372ed6`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 6.7 MB (6690937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c108dcb30a5d25b4824693a62e238dab392d1c6be0f2872dc4e7d2a44f1c58`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:f8a8eab4e025ebdbed9c9103dd8992747cf8b9c870c03eccc94e4070fe6e66a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f79c3977c112d0f17e1cbf86e3d8740d482c5da0a4d3c87c305d92b0bab9bf9`

```dockerfile
```

-	Layers:
	-	`sha256:4ce8dfb97a20f27976156e169028d8a2e6013f30641e5c3c2df0875369c20fd4`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:2818a9abe6128aef652d552872911dd4b32041c35f833d18ed6cc5aeb6f5a2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2a67a508a7dfabead7d75855b32675e648a9cd6e408fda03f8c2a41fc48fbf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:20 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f674a886a7709fef24cc74a775b417ac83befacca0d3f93d981e95962c365426`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.7 MB (6677875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3c0839f6d29406bcdd3229c2ed1117206372dc916c501414c824f003297e64`  
		Last Modified: Tue, 27 Oct 2026 16:30:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:3bbf2b3c5ca1108b66a7f8e87e6e275e8fdcc76086ef1ab67c7e5f7f67f9e6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839a4936a7674e964c57bd874419374e721abfafae4387881a75a1bd92f41a1e`

```dockerfile
```

-	Layers:
	-	`sha256:e9fdd7f6c8ca559e6487af581846d8feb84665cd336927f4baef7fecbf92f940`  
		Last Modified: Tue, 27 Oct 2026 16:30:24 GMT  
		Size: 8.7 KB (8743 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a267030878f5f5b25bd7398b565a0549ecfb2e5fac294ee252a101f70f773d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6297751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242d65498d8ea3c2c56dad1d274dc89b2f78e7a34d80e3cbc646790611e34b5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:14 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:40e359ca0552fda2dea78efb44631d33b0c1df01cec052e2a6cfb21afd82bf6c`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.3 MB (6297241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389920d2a99349a75713c72354cfcb806ade3becaed623fcc59136a49bd62a02`  
		Last Modified: Tue, 27 Oct 2026 16:31:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:38175bf099b22b2a40dcf6e4cd6afafb59731b1c5ce8041c7433615d69e5b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290386ea32da7a90b52e032365fc935b86b63ee0410595ef049e9a5fb47a035`

```dockerfile
```

-	Layers:
	-	`sha256:c90349fdef9cd8b833f019e9a7b36f945101a2a9d975e240adc972dc5ff67367`  
		Last Modified: Tue, 27 Oct 2026 16:31:18 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:7e533544b243e407d59530652f93bc8d13c3b6cd3ee93e040eadc8f76274827b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14acb805788be92cfc8accd9ad7b1dc9d30b95ff57976b6a1246425c45e9fa80`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:2fc62be124062caa5c89083f619adb0698ae661e391a8bc45e5b88d8e4420627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1e9bbeced4f307ecdf69823e8b6cce7a41a21eb223e33d0f2c2653c51fb274`

```dockerfile
```

-	Layers:
	-	`sha256:cb249b52bd35ee8abadafc5cff51824d7359882c158c9dea0fe561d05c9d5f5b`  
		Last Modified: Thu, 22 Oct 2026 15:38:14 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:7af0cfb1ae4cb2b04b5acd8ed71ebc655979303236943e42e91098ce322f2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6766995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353459d9ac8ce27bb7ec61fece078487e7e83eba136da96234969b0c697c94fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:40 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:41 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:401e8e38380cbdb2df4a7779aff6370034281a09a480b45a0dbac26f5030290b`  
		Last Modified: Mon, 26 Oct 2026 17:00:55 GMT  
		Size: 6.8 MB (6766487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d0c4d613979d1c7666666f709ff8f53026782c767c5a924dd93791af6e2f6b`  
		Last Modified: Tue, 27 Oct 2026 16:32:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:61f941cc7737af1c025ca61e706097cfe67cee99a63a558430180b6cd99cbd0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a53c478fcb033b9f8574f35e3e2a43dd94cb6c3ca8c96775379af5c746febc`

```dockerfile
```

-	Layers:
	-	`sha256:fec04c57cb7707f54dede132a42b024713c535dfd1ffff1ca615c6525e62da33`  
		Last Modified: Tue, 27 Oct 2026 16:32:49 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f3a3416710b6fe80f1a6832adf5bbeb402b8992733cff84f38a00ceeea444c2a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133086275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28dc0d7baabe0555b28dfbe0fd6b6bd36d89ea62d725c0fb2136b51a254acf80`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:51 GMT
RUN cmd /S /C #(nop) COPY file:b5c53ede1a65ac7ce4819a1b39bff1f443e234d3f7d50ceeb28c09b9c06969c9 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31225570b48072d6f0f3dabe8791696aeb72811f9667b0260917079e8432ce8b`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c360d9c9091c2e33af4bc77de1ec9ddd16c4f063436f9f759a97b2035820ab5`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 7.2 MB (7153586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532ae70d2192dc7fae379dda745d65b406c5f30594cf575c11f277f0f72240`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48332ad2cb7604e0eaaef8aecfed0293a87bdb31b19809fc63deb873ba91b448`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe276757ded85c6a1172dee3e4c3a9425cbb5c632607a31fbfe7c7e5145e59`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de5bf9ff8d3b58f5c2d0d86d2f0d707e7e6791bc98b3b588c41d912bc6c6b4`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:5fca4571afeccc8e5b7ae7ded007d24308064a19d6135b3b50350a2a31875877
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
$ docker pull nats@sha256:ba2203721dcbde1c611155c921782a56d711694981ed31b310093d63b560009c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6118c58290dfdf94b68a232f56dc4a04d2d4455c46b799296d783b5551d042ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f7c114d27d2556552701e0d0d60f6d17e3b65bd3470f400e157717c096acba`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 7.4 MB (7364848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5a0e9877d7d226c1e66b13e6127e8afab9d6be52a08e493c9e4709094712e0`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c611b4d2bae99584c809e9a9fa60510f5f9bd185cb93628d841078be7bf496`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c3218a322479663655fc0ca0fb89e4d5e0b4a4e8f039a123376b57927f98fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237c5bb743e5bff068bdd7b8dd111238f5c827eaeb562c03d67e2dd38a63f0d8`

```dockerfile
```

-	Layers:
	-	`sha256:c5a42ecdeffd365bbf5691053a476617f946aa0044b35b741465139a20932ba2`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:584ee99c9683543d38a825dc43c8583a18f87490d106a8f9a00c4524a7694316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415497bcbff5f25f06044a673c562b4fcc1309e85914f91823ba500f3ee1c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3578a7328eb3b446df2278a9eab7e7f39fd712eec9389644e0082373a72ebf7`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 7.1 MB (7105275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3639b6afbf0332fdc1e19d3902a237574c4c0b73cbda1774d2a10452eece4c9`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0438d48ba15f2019920e214ff78b82b006ede05aa39077186b6313460b2743d1`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:90df3c103bf67fc532bcffc464fbff5169ae949fdcfa06d7179fb7471d8f047e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dda8b6c66fabac10301596187a2efcf1859422db91e0e2d3d3a3b688d151e8e`

```dockerfile
```

-	Layers:
	-	`sha256:97b7e7cde6ba6fd28d47cee837be858ba6dd59d937df0f8cc651365ba8e290de`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8cc95f3ca2b3e7286f560d256d9a56952908605b8422ddc6c9f9d0cc1093884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6129bc39b47b64752dee4b4c38b5bd4de6a9fd577c174acc936eaeec062318bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9069ccc6d6b24038861e2b92b1079778a620b3d13a3daf9e6138571e78dfa200`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 7.1 MB (7092476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed783dd1fc09f505c1d81179ae0ab7a1c1af06920c7c2b1d616302db4a9e824f`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf78b030cf8af320e036eaf2f165dc19c944e93872ec4d3dc527af8b8720424`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5268a10c9dc6caf98859b0e74c59557bb79e8582a624ace488922c4a7d38cd18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc378920908fa52a8f22488f156861f2816759948f638b947bcab85efdfb8d5`

```dockerfile
```

-	Layers:
	-	`sha256:e6acbaab46196516de86fb5d8b1670a719f4d54e936880e39cc7e0049946f353`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 14.3 KB (14283 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d97e52662ef6867f53e970bd6cfe182a9d18f85b1454be20eedccb1dd432a37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2132612fad367c89df0f3025a5a584dea5f553151ec6e8a5d59ee8fa779b0f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59e792080f0a2cb09c8de958485485bfa89a2aa877c7087d744eab3f4c0a42c`  
		Last Modified: Tue, 27 Oct 2026 16:26:58 GMT  
		Size: 6.7 MB (6712499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace693e7435fb0e8b6e0690c8d90e832b1991056ac139bf11d782413a24a6e9`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d02005abfc1b65d45c8bb7f690ca5f040da9b9ac6b04afd1ff199d272c7de`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:60adb1a4be9f989039c525aeabe5bacdbbe1f940e440860bc424a5be18f72401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1555cf7dd7cf5298a275fbaa98163f0ddaa64b63a39f63c53d277cc49b03fc93`

```dockerfile
```

-	Layers:
	-	`sha256:25cb1ddae4ccf47984850e3338b5a618292eae07322d10f97c23ddd44ee11191`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:d0035339e6c191ca48c06e639620f9bf9dc8845c0d14136f4f2f58fdc73dfc30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac8c0df15dc338f45f74708a4f22a66f278b717d103bd92f8a240ae18463453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:40 GMT
ENV NATS_SERVER=2.14.8
# Thu, 22 Oct 2026 10:34:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Thu, 22 Oct 2026 10:34:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3015cc1fea0d69d4566a04c79d1c480d6eb91ec685aae29fe451bb9aa6f50e16`  
		Last Modified: Thu, 22 Oct 2026 10:34:47 GMT  
		Size: 6.8 MB (6778321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688d813a98b6e171aacf2de2de265e7758f78a4d8defc6f65d8e342e6fe06bf9`  
		Last Modified: Thu, 22 Oct 2026 10:34:46 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835eca46570e2e4d2638a975404f18f37fd61f1bd7f840a25937a8729c7bc783`  
		Last Modified: Thu, 22 Oct 2026 10:34:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e1ef9fb53baaa3975fddd1d9bd1e064be12161d873ce9b0ff9a373e14fc2db97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2229c4815a13755f691c2e5e135500bf607c3ca04a2bb8310992ab0503152cc3`

```dockerfile
```

-	Layers:
	-	`sha256:279ac1fc685d115c360252d1cc249c1e6ad17631944e5d7a32b6a7499f5ceac8`  
		Last Modified: Thu, 22 Oct 2026 10:34:46 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:7eea3ad77f159e8ab1cedb2c3ec43658adcfb86f412b7f7ff8b549b9c64366f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10825049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6899451a840c47bf91cbc49c882dd8394bcd4da44cff2fb5175ffb7cddfd7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:21 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5da43d87fd87f68f4a30009d4107676b4ee25855012377627bf043eb44cd57`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 7.2 MB (7180855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f721a696da773a37586741f26b02ccbc3f47b0d6bfeca509fd1ea73ded11304`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11958525ca5dad814879adac1cfa16b9f99feef44232eb18aec2439d872ce6a8`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5952e4f3be0c9042b8ddec032a2d3a250da930033aff333c1b485fbef40100e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc4837eff7c5ca8766ede50c892492cffe142494a0bdc5082ca8762a087149c`

```dockerfile
```

-	Layers:
	-	`sha256:7f0c05703ea40c6233ba19bd7f82711eff0d5d5579ef4239786927118713b96a`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:5fca4571afeccc8e5b7ae7ded007d24308064a19d6135b3b50350a2a31875877
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
$ docker pull nats@sha256:ba2203721dcbde1c611155c921782a56d711694981ed31b310093d63b560009c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6118c58290dfdf94b68a232f56dc4a04d2d4455c46b799296d783b5551d042ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f7c114d27d2556552701e0d0d60f6d17e3b65bd3470f400e157717c096acba`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 7.4 MB (7364848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5a0e9877d7d226c1e66b13e6127e8afab9d6be52a08e493c9e4709094712e0`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c611b4d2bae99584c809e9a9fa60510f5f9bd185cb93628d841078be7bf496`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c3218a322479663655fc0ca0fb89e4d5e0b4a4e8f039a123376b57927f98fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237c5bb743e5bff068bdd7b8dd111238f5c827eaeb562c03d67e2dd38a63f0d8`

```dockerfile
```

-	Layers:
	-	`sha256:c5a42ecdeffd365bbf5691053a476617f946aa0044b35b741465139a20932ba2`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:584ee99c9683543d38a825dc43c8583a18f87490d106a8f9a00c4524a7694316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415497bcbff5f25f06044a673c562b4fcc1309e85914f91823ba500f3ee1c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3578a7328eb3b446df2278a9eab7e7f39fd712eec9389644e0082373a72ebf7`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 7.1 MB (7105275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3639b6afbf0332fdc1e19d3902a237574c4c0b73cbda1774d2a10452eece4c9`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0438d48ba15f2019920e214ff78b82b006ede05aa39077186b6313460b2743d1`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:90df3c103bf67fc532bcffc464fbff5169ae949fdcfa06d7179fb7471d8f047e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dda8b6c66fabac10301596187a2efcf1859422db91e0e2d3d3a3b688d151e8e`

```dockerfile
```

-	Layers:
	-	`sha256:97b7e7cde6ba6fd28d47cee837be858ba6dd59d937df0f8cc651365ba8e290de`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8cc95f3ca2b3e7286f560d256d9a56952908605b8422ddc6c9f9d0cc1093884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6129bc39b47b64752dee4b4c38b5bd4de6a9fd577c174acc936eaeec062318bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9069ccc6d6b24038861e2b92b1079778a620b3d13a3daf9e6138571e78dfa200`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 7.1 MB (7092476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed783dd1fc09f505c1d81179ae0ab7a1c1af06920c7c2b1d616302db4a9e824f`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf78b030cf8af320e036eaf2f165dc19c944e93872ec4d3dc527af8b8720424`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5268a10c9dc6caf98859b0e74c59557bb79e8582a624ace488922c4a7d38cd18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc378920908fa52a8f22488f156861f2816759948f638b947bcab85efdfb8d5`

```dockerfile
```

-	Layers:
	-	`sha256:e6acbaab46196516de86fb5d8b1670a719f4d54e936880e39cc7e0049946f353`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 14.3 KB (14283 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d97e52662ef6867f53e970bd6cfe182a9d18f85b1454be20eedccb1dd432a37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2132612fad367c89df0f3025a5a584dea5f553151ec6e8a5d59ee8fa779b0f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59e792080f0a2cb09c8de958485485bfa89a2aa877c7087d744eab3f4c0a42c`  
		Last Modified: Tue, 27 Oct 2026 16:26:58 GMT  
		Size: 6.7 MB (6712499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace693e7435fb0e8b6e0690c8d90e832b1991056ac139bf11d782413a24a6e9`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d02005abfc1b65d45c8bb7f690ca5f040da9b9ac6b04afd1ff199d272c7de`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:60adb1a4be9f989039c525aeabe5bacdbbe1f940e440860bc424a5be18f72401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1555cf7dd7cf5298a275fbaa98163f0ddaa64b63a39f63c53d277cc49b03fc93`

```dockerfile
```

-	Layers:
	-	`sha256:25cb1ddae4ccf47984850e3338b5a618292eae07322d10f97c23ddd44ee11191`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:d0035339e6c191ca48c06e639620f9bf9dc8845c0d14136f4f2f58fdc73dfc30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10504727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac8c0df15dc338f45f74708a4f22a66f278b717d103bd92f8a240ae18463453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:40 GMT
ENV NATS_SERVER=2.14.8
# Thu, 22 Oct 2026 10:34:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Thu, 22 Oct 2026 10:34:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3015cc1fea0d69d4566a04c79d1c480d6eb91ec685aae29fe451bb9aa6f50e16`  
		Last Modified: Thu, 22 Oct 2026 10:34:47 GMT  
		Size: 6.8 MB (6778321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688d813a98b6e171aacf2de2de265e7758f78a4d8defc6f65d8e342e6fe06bf9`  
		Last Modified: Thu, 22 Oct 2026 10:34:46 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835eca46570e2e4d2638a975404f18f37fd61f1bd7f840a25937a8729c7bc783`  
		Last Modified: Thu, 22 Oct 2026 10:34:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e1ef9fb53baaa3975fddd1d9bd1e064be12161d873ce9b0ff9a373e14fc2db97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2229c4815a13755f691c2e5e135500bf607c3ca04a2bb8310992ab0503152cc3`

```dockerfile
```

-	Layers:
	-	`sha256:279ac1fc685d115c360252d1cc249c1e6ad17631944e5d7a32b6a7499f5ceac8`  
		Last Modified: Thu, 22 Oct 2026 10:34:46 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:7eea3ad77f159e8ab1cedb2c3ec43658adcfb86f412b7f7ff8b549b9c64366f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10825049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6899451a840c47bf91cbc49c882dd8394bcd4da44cff2fb5175ffb7cddfd7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:21 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5da43d87fd87f68f4a30009d4107676b4ee25855012377627bf043eb44cd57`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 7.2 MB (7180855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f721a696da773a37586741f26b02ccbc3f47b0d6bfeca509fd1ea73ded11304`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11958525ca5dad814879adac1cfa16b9f99feef44232eb18aec2439d872ce6a8`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5952e4f3be0c9042b8ddec032a2d3a250da930033aff333c1b485fbef40100e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc4837eff7c5ca8766ede50c892492cffe142494a0bdc5082ca8762a087149c`

```dockerfile
```

-	Layers:
	-	`sha256:7f0c05703ea40c6233ba19bd7f82711eff0d5d5579ef4239786927118713b96a`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:384b2719c7618af2d457746a4c70550feebbd960566f7618ea8f9c4225000313
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
$ docker pull nats@sha256:1867a3cdc4ecfe2ee28f619bf29c4723615a80cce37e3a7f3804bc6db08d96ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6954550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436c96a68b255b7cff6c17369a2766b376d0747fd45b6928d5aea7362835014`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3c0c3209357d3c0be252dc49e24f96e3f9c6785e14732bce6ecf4de0f37ccfe`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 7.0 MB (6954040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245a36e6b3c019d4098bc17a510cf2162e2825c4482e182ec13f918cb7a0b3a`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1b5e3ae973a2c0cb78fc4fbfecc98a8f5aada38b6e42ed26abaaf3727d642496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd17f74577804b725bb22608dda34171b98287613c8ee547b756ebcc56df45c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4e59183d6fcd23139e5188efc9fa14a57c8805baf0c0dfefb172b949bb9527`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:23af70b0b9bbf47da83c3fbb0bc1bcec0fe6632b4a31310d00863682072148c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25034833a0029ede9bfa353459ad3976ca640fb7b55f04ae5c1a36ae2ecbc9d5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:02 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3b1ebb427f87eace068b3e418550437ba162ddc21e537def3cdd2373c372ed6`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 6.7 MB (6690937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c108dcb30a5d25b4824693a62e238dab392d1c6be0f2872dc4e7d2a44f1c58`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:f8a8eab4e025ebdbed9c9103dd8992747cf8b9c870c03eccc94e4070fe6e66a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f79c3977c112d0f17e1cbf86e3d8740d482c5da0a4d3c87c305d92b0bab9bf9`

```dockerfile
```

-	Layers:
	-	`sha256:4ce8dfb97a20f27976156e169028d8a2e6013f30641e5c3c2df0875369c20fd4`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:2818a9abe6128aef652d552872911dd4b32041c35f833d18ed6cc5aeb6f5a2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2a67a508a7dfabead7d75855b32675e648a9cd6e408fda03f8c2a41fc48fbf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:20 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f674a886a7709fef24cc74a775b417ac83befacca0d3f93d981e95962c365426`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.7 MB (6677875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3c0839f6d29406bcdd3229c2ed1117206372dc916c501414c824f003297e64`  
		Last Modified: Tue, 27 Oct 2026 16:30:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:3bbf2b3c5ca1108b66a7f8e87e6e275e8fdcc76086ef1ab67c7e5f7f67f9e6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839a4936a7674e964c57bd874419374e721abfafae4387881a75a1bd92f41a1e`

```dockerfile
```

-	Layers:
	-	`sha256:e9fdd7f6c8ca559e6487af581846d8feb84665cd336927f4baef7fecbf92f940`  
		Last Modified: Tue, 27 Oct 2026 16:30:24 GMT  
		Size: 8.7 KB (8743 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a267030878f5f5b25bd7398b565a0549ecfb2e5fac294ee252a101f70f773d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6297751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242d65498d8ea3c2c56dad1d274dc89b2f78e7a34d80e3cbc646790611e34b5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:14 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:40e359ca0552fda2dea78efb44631d33b0c1df01cec052e2a6cfb21afd82bf6c`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.3 MB (6297241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389920d2a99349a75713c72354cfcb806ade3becaed623fcc59136a49bd62a02`  
		Last Modified: Tue, 27 Oct 2026 16:31:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:38175bf099b22b2a40dcf6e4cd6afafb59731b1c5ce8041c7433615d69e5b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290386ea32da7a90b52e032365fc935b86b63ee0410595ef049e9a5fb47a035`

```dockerfile
```

-	Layers:
	-	`sha256:c90349fdef9cd8b833f019e9a7b36f945101a2a9d975e240adc972dc5ff67367`  
		Last Modified: Tue, 27 Oct 2026 16:31:18 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:7e533544b243e407d59530652f93bc8d13c3b6cd3ee93e040eadc8f76274827b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14acb805788be92cfc8accd9ad7b1dc9d30b95ff57976b6a1246425c45e9fa80`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2fc62be124062caa5c89083f619adb0698ae661e391a8bc45e5b88d8e4420627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1e9bbeced4f307ecdf69823e8b6cce7a41a21eb223e33d0f2c2653c51fb274`

```dockerfile
```

-	Layers:
	-	`sha256:cb249b52bd35ee8abadafc5cff51824d7359882c158c9dea0fe561d05c9d5f5b`  
		Last Modified: Thu, 22 Oct 2026 15:38:14 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:7af0cfb1ae4cb2b04b5acd8ed71ebc655979303236943e42e91098ce322f2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6766995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353459d9ac8ce27bb7ec61fece078487e7e83eba136da96234969b0c697c94fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:40 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:41 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:401e8e38380cbdb2df4a7779aff6370034281a09a480b45a0dbac26f5030290b`  
		Last Modified: Mon, 26 Oct 2026 17:00:55 GMT  
		Size: 6.8 MB (6766487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d0c4d613979d1c7666666f709ff8f53026782c767c5a924dd93791af6e2f6b`  
		Last Modified: Tue, 27 Oct 2026 16:32:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:61f941cc7737af1c025ca61e706097cfe67cee99a63a558430180b6cd99cbd0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a53c478fcb033b9f8574f35e3e2a43dd94cb6c3ca8c96775379af5c746febc`

```dockerfile
```

-	Layers:
	-	`sha256:fec04c57cb7707f54dede132a42b024713c535dfd1ffff1ca615c6525e62da33`  
		Last Modified: Tue, 27 Oct 2026 16:32:49 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:cf8a3d3903c944504141b67733f8abef090b17c59a046a5d418246522f5c3b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f3a3416710b6fe80f1a6832adf5bbeb402b8992733cff84f38a00ceeea444c2a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133086275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28dc0d7baabe0555b28dfbe0fd6b6bd36d89ea62d725c0fb2136b51a254acf80`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:51 GMT
RUN cmd /S /C #(nop) COPY file:b5c53ede1a65ac7ce4819a1b39bff1f443e234d3f7d50ceeb28c09b9c06969c9 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31225570b48072d6f0f3dabe8791696aeb72811f9667b0260917079e8432ce8b`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c360d9c9091c2e33af4bc77de1ec9ddd16c4f063436f9f759a97b2035820ab5`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 7.2 MB (7153586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532ae70d2192dc7fae379dda745d65b406c5f30594cf575c11f277f0f72240`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48332ad2cb7604e0eaaef8aecfed0293a87bdb31b19809fc63deb873ba91b448`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe276757ded85c6a1172dee3e4c3a9425cbb5c632607a31fbfe7c7e5145e59`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de5bf9ff8d3b58f5c2d0d86d2f0d707e7e6791bc98b3b588c41d912bc6c6b4`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:cf8a3d3903c944504141b67733f8abef090b17c59a046a5d418246522f5c3b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f3a3416710b6fe80f1a6832adf5bbeb402b8992733cff84f38a00ceeea444c2a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133086275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28dc0d7baabe0555b28dfbe0fd6b6bd36d89ea62d725c0fb2136b51a254acf80`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:51 GMT
RUN cmd /S /C #(nop) COPY file:b5c53ede1a65ac7ce4819a1b39bff1f443e234d3f7d50ceeb28c09b9c06969c9 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31225570b48072d6f0f3dabe8791696aeb72811f9667b0260917079e8432ce8b`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c360d9c9091c2e33af4bc77de1ec9ddd16c4f063436f9f759a97b2035820ab5`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 7.2 MB (7153586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532ae70d2192dc7fae379dda745d65b406c5f30594cf575c11f277f0f72240`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48332ad2cb7604e0eaaef8aecfed0293a87bdb31b19809fc63deb873ba91b448`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe276757ded85c6a1172dee3e4c3a9425cbb5c632607a31fbfe7c7e5145e59`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de5bf9ff8d3b58f5c2d0d86d2f0d707e7e6791bc98b3b588c41d912bc6c6b4`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:384b2719c7618af2d457746a4c70550feebbd960566f7618ea8f9c4225000313
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
$ docker pull nats@sha256:1867a3cdc4ecfe2ee28f619bf29c4723615a80cce37e3a7f3804bc6db08d96ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6954550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436c96a68b255b7cff6c17369a2766b376d0747fd45b6928d5aea7362835014`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3c0c3209357d3c0be252dc49e24f96e3f9c6785e14732bce6ecf4de0f37ccfe`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 7.0 MB (6954040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245a36e6b3c019d4098bc17a510cf2162e2825c4482e182ec13f918cb7a0b3a`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1b5e3ae973a2c0cb78fc4fbfecc98a8f5aada38b6e42ed26abaaf3727d642496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd17f74577804b725bb22608dda34171b98287613c8ee547b756ebcc56df45c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4e59183d6fcd23139e5188efc9fa14a57c8805baf0c0dfefb172b949bb9527`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:23af70b0b9bbf47da83c3fbb0bc1bcec0fe6632b4a31310d00863682072148c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25034833a0029ede9bfa353459ad3976ca640fb7b55f04ae5c1a36ae2ecbc9d5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:02 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3b1ebb427f87eace068b3e418550437ba162ddc21e537def3cdd2373c372ed6`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 6.7 MB (6690937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c108dcb30a5d25b4824693a62e238dab392d1c6be0f2872dc4e7d2a44f1c58`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:f8a8eab4e025ebdbed9c9103dd8992747cf8b9c870c03eccc94e4070fe6e66a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f79c3977c112d0f17e1cbf86e3d8740d482c5da0a4d3c87c305d92b0bab9bf9`

```dockerfile
```

-	Layers:
	-	`sha256:4ce8dfb97a20f27976156e169028d8a2e6013f30641e5c3c2df0875369c20fd4`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:2818a9abe6128aef652d552872911dd4b32041c35f833d18ed6cc5aeb6f5a2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2a67a508a7dfabead7d75855b32675e648a9cd6e408fda03f8c2a41fc48fbf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:20 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f674a886a7709fef24cc74a775b417ac83befacca0d3f93d981e95962c365426`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.7 MB (6677875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3c0839f6d29406bcdd3229c2ed1117206372dc916c501414c824f003297e64`  
		Last Modified: Tue, 27 Oct 2026 16:30:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:3bbf2b3c5ca1108b66a7f8e87e6e275e8fdcc76086ef1ab67c7e5f7f67f9e6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839a4936a7674e964c57bd874419374e721abfafae4387881a75a1bd92f41a1e`

```dockerfile
```

-	Layers:
	-	`sha256:e9fdd7f6c8ca559e6487af581846d8feb84665cd336927f4baef7fecbf92f940`  
		Last Modified: Tue, 27 Oct 2026 16:30:24 GMT  
		Size: 8.7 KB (8743 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a267030878f5f5b25bd7398b565a0549ecfb2e5fac294ee252a101f70f773d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6297751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242d65498d8ea3c2c56dad1d274dc89b2f78e7a34d80e3cbc646790611e34b5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:14 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:40e359ca0552fda2dea78efb44631d33b0c1df01cec052e2a6cfb21afd82bf6c`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.3 MB (6297241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389920d2a99349a75713c72354cfcb806ade3becaed623fcc59136a49bd62a02`  
		Last Modified: Tue, 27 Oct 2026 16:31:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:38175bf099b22b2a40dcf6e4cd6afafb59731b1c5ce8041c7433615d69e5b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290386ea32da7a90b52e032365fc935b86b63ee0410595ef049e9a5fb47a035`

```dockerfile
```

-	Layers:
	-	`sha256:c90349fdef9cd8b833f019e9a7b36f945101a2a9d975e240adc972dc5ff67367`  
		Last Modified: Tue, 27 Oct 2026 16:31:18 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:7e533544b243e407d59530652f93bc8d13c3b6cd3ee93e040eadc8f76274827b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14acb805788be92cfc8accd9ad7b1dc9d30b95ff57976b6a1246425c45e9fa80`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2fc62be124062caa5c89083f619adb0698ae661e391a8bc45e5b88d8e4420627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1e9bbeced4f307ecdf69823e8b6cce7a41a21eb223e33d0f2c2653c51fb274`

```dockerfile
```

-	Layers:
	-	`sha256:cb249b52bd35ee8abadafc5cff51824d7359882c158c9dea0fe561d05c9d5f5b`  
		Last Modified: Thu, 22 Oct 2026 15:38:14 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:7af0cfb1ae4cb2b04b5acd8ed71ebc655979303236943e42e91098ce322f2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6766995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353459d9ac8ce27bb7ec61fece078487e7e83eba136da96234969b0c697c94fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:40 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:41 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:401e8e38380cbdb2df4a7779aff6370034281a09a480b45a0dbac26f5030290b`  
		Last Modified: Mon, 26 Oct 2026 17:00:55 GMT  
		Size: 6.8 MB (6766487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d0c4d613979d1c7666666f709ff8f53026782c767c5a924dd93791af6e2f6b`  
		Last Modified: Tue, 27 Oct 2026 16:32:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:61f941cc7737af1c025ca61e706097cfe67cee99a63a558430180b6cd99cbd0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a53c478fcb033b9f8574f35e3e2a43dd94cb6c3ca8c96775379af5c746febc`

```dockerfile
```

-	Layers:
	-	`sha256:fec04c57cb7707f54dede132a42b024713c535dfd1ffff1ca615c6525e62da33`  
		Last Modified: Tue, 27 Oct 2026 16:32:49 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:3c7d0d1b6b8b908d2db3d5510e89e9016a23057875171d7d3ae7fd50b5a15763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f9826a548a07d6be74b442100244a427e200cdb489bd26b249291acd60298980
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234891982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208652b966d71fa949fa1096516a05445bc944dd3bf477caef84c9a192e1c9c4`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 18:00:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:00:04 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:00:05 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 18:00:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.9/nats-server-v2.14.9-windows-amd64.zip
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_SHASUM=2f1fe3be6f75462bfb76e72cf4fe9c95634093c3a01c5b94fe44e61cf2d2aa22
# Tue, 27 Oct 2026 18:00:12 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:28 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:28 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:29 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:29 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274a6904e612a92065423fd819ed6977c053cd9a2bf4ffad1c3f6bd2869c20b2`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07295a6e496831d99cd08144fa12e39564c965e0cb9ea7f3d2993ffd1710f37`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36e60210d6550c2297e93b3dea007c99387c7d42d8febe10b295f4ad0b66b68`  
		Last Modified: Tue, 27 Oct 2026 18:00:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377b67b86453a4d62b9d6f1c14e79e3ab2b130328649005ed09575e616632e85`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110a966c49421c50c5d7bfdf8470477da4a1b80a3de19236c2a34cbd2002196d`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0beebb1a3ed69bd0b02c94996ec988e455256d9ea7ae009568814f69154ac6e`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5d79d3ffacbeb58a213a6702ac1101c95d99da69442e1ee7fb18a3501d9338`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 334.6 KB (334637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8246d70ba16e356658639df498c49c9eeae0f0abc8bb2d24dc1ebacf4e7cd1`  
		Last Modified: Tue, 27 Oct 2026 18:00:35 GMT  
		Size: 7.5 MB (7487654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd6c2b9249dd7f3de4e9cf550bb9dcf7b4d201286030f67b53ebd98ac04b1f7`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78139d05724f7a715b0afc32bb420d4be6d7278e90d2637d06b4a8c87b12fe0d`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65def804d74275c70edf26d47f8852ed0f08218022d58b7f3b8b86237abea595`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5580bce3d675ed7b4d576553dfbdd16635b753a8c9d443717a74568a504ab`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:3c7d0d1b6b8b908d2db3d5510e89e9016a23057875171d7d3ae7fd50b5a15763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f9826a548a07d6be74b442100244a427e200cdb489bd26b249291acd60298980
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234891982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208652b966d71fa949fa1096516a05445bc944dd3bf477caef84c9a192e1c9c4`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 18:00:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:00:04 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:00:05 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 18:00:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.9/nats-server-v2.14.9-windows-amd64.zip
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_SHASUM=2f1fe3be6f75462bfb76e72cf4fe9c95634093c3a01c5b94fe44e61cf2d2aa22
# Tue, 27 Oct 2026 18:00:12 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:28 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:28 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:29 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:29 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274a6904e612a92065423fd819ed6977c053cd9a2bf4ffad1c3f6bd2869c20b2`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07295a6e496831d99cd08144fa12e39564c965e0cb9ea7f3d2993ffd1710f37`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36e60210d6550c2297e93b3dea007c99387c7d42d8febe10b295f4ad0b66b68`  
		Last Modified: Tue, 27 Oct 2026 18:00:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377b67b86453a4d62b9d6f1c14e79e3ab2b130328649005ed09575e616632e85`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110a966c49421c50c5d7bfdf8470477da4a1b80a3de19236c2a34cbd2002196d`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0beebb1a3ed69bd0b02c94996ec988e455256d9ea7ae009568814f69154ac6e`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5d79d3ffacbeb58a213a6702ac1101c95d99da69442e1ee7fb18a3501d9338`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 334.6 KB (334637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8246d70ba16e356658639df498c49c9eeae0f0abc8bb2d24dc1ebacf4e7cd1`  
		Last Modified: Tue, 27 Oct 2026 18:00:35 GMT  
		Size: 7.5 MB (7487654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd6c2b9249dd7f3de4e9cf550bb9dcf7b4d201286030f67b53ebd98ac04b1f7`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78139d05724f7a715b0afc32bb420d4be6d7278e90d2637d06b4a8c87b12fe0d`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65def804d74275c70edf26d47f8852ed0f08218022d58b7f3b8b86237abea595`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5580bce3d675ed7b4d576553dfbdd16635b753a8c9d443717a74568a504ab`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.9`

```console
$ docker pull nats@sha256:e04651a39f10af965f4dbdecf0b5c786299da5945d0f4756603a92a2833926d4
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14.9` - linux; amd64

```console
$ docker pull nats@sha256:1867a3cdc4ecfe2ee28f619bf29c4723615a80cce37e3a7f3804bc6db08d96ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6954550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436c96a68b255b7cff6c17369a2766b376d0747fd45b6928d5aea7362835014`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3c0c3209357d3c0be252dc49e24f96e3f9c6785e14732bce6ecf4de0f37ccfe`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 7.0 MB (6954040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245a36e6b3c019d4098bc17a510cf2162e2825c4482e182ec13f918cb7a0b3a`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9` - unknown; unknown

```console
$ docker pull nats@sha256:1b5e3ae973a2c0cb78fc4fbfecc98a8f5aada38b6e42ed26abaaf3727d642496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd17f74577804b725bb22608dda34171b98287613c8ee547b756ebcc56df45c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4e59183d6fcd23139e5188efc9fa14a57c8805baf0c0dfefb172b949bb9527`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9` - linux; arm variant v6

```console
$ docker pull nats@sha256:23af70b0b9bbf47da83c3fbb0bc1bcec0fe6632b4a31310d00863682072148c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25034833a0029ede9bfa353459ad3976ca640fb7b55f04ae5c1a36ae2ecbc9d5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:02 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3b1ebb427f87eace068b3e418550437ba162ddc21e537def3cdd2373c372ed6`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 6.7 MB (6690937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c108dcb30a5d25b4824693a62e238dab392d1c6be0f2872dc4e7d2a44f1c58`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9` - unknown; unknown

```console
$ docker pull nats@sha256:f8a8eab4e025ebdbed9c9103dd8992747cf8b9c870c03eccc94e4070fe6e66a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f79c3977c112d0f17e1cbf86e3d8740d482c5da0a4d3c87c305d92b0bab9bf9`

```dockerfile
```

-	Layers:
	-	`sha256:4ce8dfb97a20f27976156e169028d8a2e6013f30641e5c3c2df0875369c20fd4`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9` - linux; arm variant v7

```console
$ docker pull nats@sha256:2818a9abe6128aef652d552872911dd4b32041c35f833d18ed6cc5aeb6f5a2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2a67a508a7dfabead7d75855b32675e648a9cd6e408fda03f8c2a41fc48fbf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:20 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f674a886a7709fef24cc74a775b417ac83befacca0d3f93d981e95962c365426`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.7 MB (6677875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3c0839f6d29406bcdd3229c2ed1117206372dc916c501414c824f003297e64`  
		Last Modified: Tue, 27 Oct 2026 16:30:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9` - unknown; unknown

```console
$ docker pull nats@sha256:3bbf2b3c5ca1108b66a7f8e87e6e275e8fdcc76086ef1ab67c7e5f7f67f9e6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839a4936a7674e964c57bd874419374e721abfafae4387881a75a1bd92f41a1e`

```dockerfile
```

-	Layers:
	-	`sha256:e9fdd7f6c8ca559e6487af581846d8feb84665cd336927f4baef7fecbf92f940`  
		Last Modified: Tue, 27 Oct 2026 16:30:24 GMT  
		Size: 8.7 KB (8743 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a267030878f5f5b25bd7398b565a0549ecfb2e5fac294ee252a101f70f773d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6297751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242d65498d8ea3c2c56dad1d274dc89b2f78e7a34d80e3cbc646790611e34b5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:14 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:40e359ca0552fda2dea78efb44631d33b0c1df01cec052e2a6cfb21afd82bf6c`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.3 MB (6297241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389920d2a99349a75713c72354cfcb806ade3becaed623fcc59136a49bd62a02`  
		Last Modified: Tue, 27 Oct 2026 16:31:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9` - unknown; unknown

```console
$ docker pull nats@sha256:38175bf099b22b2a40dcf6e4cd6afafb59731b1c5ce8041c7433615d69e5b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290386ea32da7a90b52e032365fc935b86b63ee0410595ef049e9a5fb47a035`

```dockerfile
```

-	Layers:
	-	`sha256:c90349fdef9cd8b833f019e9a7b36f945101a2a9d975e240adc972dc5ff67367`  
		Last Modified: Tue, 27 Oct 2026 16:31:18 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9` - linux; s390x

```console
$ docker pull nats@sha256:7af0cfb1ae4cb2b04b5acd8ed71ebc655979303236943e42e91098ce322f2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6766995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353459d9ac8ce27bb7ec61fece078487e7e83eba136da96234969b0c697c94fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:40 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:41 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:401e8e38380cbdb2df4a7779aff6370034281a09a480b45a0dbac26f5030290b`  
		Last Modified: Mon, 26 Oct 2026 17:00:55 GMT  
		Size: 6.8 MB (6766487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d0c4d613979d1c7666666f709ff8f53026782c767c5a924dd93791af6e2f6b`  
		Last Modified: Tue, 27 Oct 2026 16:32:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9` - unknown; unknown

```console
$ docker pull nats@sha256:61f941cc7737af1c025ca61e706097cfe67cee99a63a558430180b6cd99cbd0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a53c478fcb033b9f8574f35e3e2a43dd94cb6c3ca8c96775379af5c746febc`

```dockerfile
```

-	Layers:
	-	`sha256:fec04c57cb7707f54dede132a42b024713c535dfd1ffff1ca615c6525e62da33`  
		Last Modified: Tue, 27 Oct 2026 16:32:49 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f3a3416710b6fe80f1a6832adf5bbeb402b8992733cff84f38a00ceeea444c2a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133086275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28dc0d7baabe0555b28dfbe0fd6b6bd36d89ea62d725c0fb2136b51a254acf80`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:51 GMT
RUN cmd /S /C #(nop) COPY file:b5c53ede1a65ac7ce4819a1b39bff1f443e234d3f7d50ceeb28c09b9c06969c9 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31225570b48072d6f0f3dabe8791696aeb72811f9667b0260917079e8432ce8b`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c360d9c9091c2e33af4bc77de1ec9ddd16c4f063436f9f759a97b2035820ab5`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 7.2 MB (7153586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532ae70d2192dc7fae379dda745d65b406c5f30594cf575c11f277f0f72240`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48332ad2cb7604e0eaaef8aecfed0293a87bdb31b19809fc63deb873ba91b448`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe276757ded85c6a1172dee3e4c3a9425cbb5c632607a31fbfe7c7e5145e59`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de5bf9ff8d3b58f5c2d0d86d2f0d707e7e6791bc98b3b588c41d912bc6c6b4`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.9-alpine`

```console
$ docker pull nats@sha256:61d5fed1f6f9fe64673fb660e2f2504007e8035cc63bb71ea1a22f9621932585
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.9-alpine` - linux; amd64

```console
$ docker pull nats@sha256:ba2203721dcbde1c611155c921782a56d711694981ed31b310093d63b560009c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6118c58290dfdf94b68a232f56dc4a04d2d4455c46b799296d783b5551d042ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f7c114d27d2556552701e0d0d60f6d17e3b65bd3470f400e157717c096acba`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 7.4 MB (7364848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5a0e9877d7d226c1e66b13e6127e8afab9d6be52a08e493c9e4709094712e0`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c611b4d2bae99584c809e9a9fa60510f5f9bd185cb93628d841078be7bf496`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c3218a322479663655fc0ca0fb89e4d5e0b4a4e8f039a123376b57927f98fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237c5bb743e5bff068bdd7b8dd111238f5c827eaeb562c03d67e2dd38a63f0d8`

```dockerfile
```

-	Layers:
	-	`sha256:c5a42ecdeffd365bbf5691053a476617f946aa0044b35b741465139a20932ba2`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:584ee99c9683543d38a825dc43c8583a18f87490d106a8f9a00c4524a7694316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415497bcbff5f25f06044a673c562b4fcc1309e85914f91823ba500f3ee1c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3578a7328eb3b446df2278a9eab7e7f39fd712eec9389644e0082373a72ebf7`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 7.1 MB (7105275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3639b6afbf0332fdc1e19d3902a237574c4c0b73cbda1774d2a10452eece4c9`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0438d48ba15f2019920e214ff78b82b006ede05aa39077186b6313460b2743d1`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:90df3c103bf67fc532bcffc464fbff5169ae949fdcfa06d7179fb7471d8f047e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dda8b6c66fabac10301596187a2efcf1859422db91e0e2d3d3a3b688d151e8e`

```dockerfile
```

-	Layers:
	-	`sha256:97b7e7cde6ba6fd28d47cee837be858ba6dd59d937df0f8cc651365ba8e290de`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8cc95f3ca2b3e7286f560d256d9a56952908605b8422ddc6c9f9d0cc1093884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6129bc39b47b64752dee4b4c38b5bd4de6a9fd577c174acc936eaeec062318bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9069ccc6d6b24038861e2b92b1079778a620b3d13a3daf9e6138571e78dfa200`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 7.1 MB (7092476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed783dd1fc09f505c1d81179ae0ab7a1c1af06920c7c2b1d616302db4a9e824f`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf78b030cf8af320e036eaf2f165dc19c944e93872ec4d3dc527af8b8720424`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5268a10c9dc6caf98859b0e74c59557bb79e8582a624ace488922c4a7d38cd18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc378920908fa52a8f22488f156861f2816759948f638b947bcab85efdfb8d5`

```dockerfile
```

-	Layers:
	-	`sha256:e6acbaab46196516de86fb5d8b1670a719f4d54e936880e39cc7e0049946f353`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 14.3 KB (14283 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d97e52662ef6867f53e970bd6cfe182a9d18f85b1454be20eedccb1dd432a37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2132612fad367c89df0f3025a5a584dea5f553151ec6e8a5d59ee8fa779b0f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59e792080f0a2cb09c8de958485485bfa89a2aa877c7087d744eab3f4c0a42c`  
		Last Modified: Tue, 27 Oct 2026 16:26:58 GMT  
		Size: 6.7 MB (6712499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace693e7435fb0e8b6e0690c8d90e832b1991056ac139bf11d782413a24a6e9`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d02005abfc1b65d45c8bb7f690ca5f040da9b9ac6b04afd1ff199d272c7de`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:60adb1a4be9f989039c525aeabe5bacdbbe1f940e440860bc424a5be18f72401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1555cf7dd7cf5298a275fbaa98163f0ddaa64b63a39f63c53d277cc49b03fc93`

```dockerfile
```

-	Layers:
	-	`sha256:25cb1ddae4ccf47984850e3338b5a618292eae07322d10f97c23ddd44ee11191`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; s390x

```console
$ docker pull nats@sha256:7eea3ad77f159e8ab1cedb2c3ec43658adcfb86f412b7f7ff8b549b9c64366f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10825049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6899451a840c47bf91cbc49c882dd8394bcd4da44cff2fb5175ffb7cddfd7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:21 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5da43d87fd87f68f4a30009d4107676b4ee25855012377627bf043eb44cd57`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 7.2 MB (7180855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f721a696da773a37586741f26b02ccbc3f47b0d6bfeca509fd1ea73ded11304`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11958525ca5dad814879adac1cfa16b9f99feef44232eb18aec2439d872ce6a8`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5952e4f3be0c9042b8ddec032a2d3a250da930033aff333c1b485fbef40100e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc4837eff7c5ca8766ede50c892492cffe142494a0bdc5082ca8762a087149c`

```dockerfile
```

-	Layers:
	-	`sha256:7f0c05703ea40c6233ba19bd7f82711eff0d5d5579ef4239786927118713b96a`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.9-alpine3.22`

```console
$ docker pull nats@sha256:61d5fed1f6f9fe64673fb660e2f2504007e8035cc63bb71ea1a22f9621932585
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.9-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:ba2203721dcbde1c611155c921782a56d711694981ed31b310093d63b560009c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6118c58290dfdf94b68a232f56dc4a04d2d4455c46b799296d783b5551d042ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:46 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:46 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f7c114d27d2556552701e0d0d60f6d17e3b65bd3470f400e157717c096acba`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 7.4 MB (7364848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5a0e9877d7d226c1e66b13e6127e8afab9d6be52a08e493c9e4709094712e0`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c611b4d2bae99584c809e9a9fa60510f5f9bd185cb93628d841078be7bf496`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c3218a322479663655fc0ca0fb89e4d5e0b4a4e8f039a123376b57927f98fb01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237c5bb743e5bff068bdd7b8dd111238f5c827eaeb562c03d67e2dd38a63f0d8`

```dockerfile
```

-	Layers:
	-	`sha256:c5a42ecdeffd365bbf5691053a476617f946aa0044b35b741465139a20932ba2`  
		Last Modified: Tue, 27 Oct 2026 16:26:51 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:584ee99c9683543d38a825dc43c8583a18f87490d106a8f9a00c4524a7694316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415497bcbff5f25f06044a673c562b4fcc1309e85914f91823ba500f3ee1c3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:27:55 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3578a7328eb3b446df2278a9eab7e7f39fd712eec9389644e0082373a72ebf7`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 7.1 MB (7105275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3639b6afbf0332fdc1e19d3902a237574c4c0b73cbda1774d2a10452eece4c9`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0438d48ba15f2019920e214ff78b82b006ede05aa39077186b6313460b2743d1`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:90df3c103bf67fc532bcffc464fbff5169ae949fdcfa06d7179fb7471d8f047e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dda8b6c66fabac10301596187a2efcf1859422db91e0e2d3d3a3b688d151e8e`

```dockerfile
```

-	Layers:
	-	`sha256:97b7e7cde6ba6fd28d47cee837be858ba6dd59d937df0f8cc651365ba8e290de`  
		Last Modified: Tue, 27 Oct 2026 16:28:00 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8cc95f3ca2b3e7286f560d256d9a56952908605b8422ddc6c9f9d0cc1093884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6129bc39b47b64752dee4b4c38b5bd4de6a9fd577c174acc936eaeec062318bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:51 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:51 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:51 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9069ccc6d6b24038861e2b92b1079778a620b3d13a3daf9e6138571e78dfa200`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 7.1 MB (7092476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed783dd1fc09f505c1d81179ae0ab7a1c1af06920c7c2b1d616302db4a9e824f`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf78b030cf8af320e036eaf2f165dc19c944e93872ec4d3dc527af8b8720424`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5268a10c9dc6caf98859b0e74c59557bb79e8582a624ace488922c4a7d38cd18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dc378920908fa52a8f22488f156861f2816759948f638b947bcab85efdfb8d5`

```dockerfile
```

-	Layers:
	-	`sha256:e6acbaab46196516de86fb5d8b1670a719f4d54e936880e39cc7e0049946f353`  
		Last Modified: Tue, 27 Oct 2026 16:26:55 GMT  
		Size: 14.3 KB (14283 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d97e52662ef6867f53e970bd6cfe182a9d18f85b1454be20eedccb1dd432a37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2132612fad367c89df0f3025a5a584dea5f553151ec6e8a5d59ee8fa779b0f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:26:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59e792080f0a2cb09c8de958485485bfa89a2aa877c7087d744eab3f4c0a42c`  
		Last Modified: Tue, 27 Oct 2026 16:26:58 GMT  
		Size: 6.7 MB (6712499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ace693e7435fb0e8b6e0690c8d90e832b1991056ac139bf11d782413a24a6e9`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5d02005abfc1b65d45c8bb7f690ca5f040da9b9ac6b04afd1ff199d272c7de`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:60adb1a4be9f989039c525aeabe5bacdbbe1f940e440860bc424a5be18f72401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1555cf7dd7cf5298a275fbaa98163f0ddaa64b63a39f63c53d277cc49b03fc93`

```dockerfile
```

-	Layers:
	-	`sha256:25cb1ddae4ccf47984850e3338b5a618292eae07322d10f97c23ddd44ee11191`  
		Last Modified: Tue, 27 Oct 2026 16:26:57 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:7eea3ad77f159e8ab1cedb2c3ec43658adcfb86f412b7f7ff8b549b9c64366f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10825049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b6899451a840c47bf91cbc49c882dd8394bcd4da44cff2fb5175ffb7cddfd7b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:21 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 16:28:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:22 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5da43d87fd87f68f4a30009d4107676b4ee25855012377627bf043eb44cd57`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 7.2 MB (7180855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f721a696da773a37586741f26b02ccbc3f47b0d6bfeca509fd1ea73ded11304`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11958525ca5dad814879adac1cfa16b9f99feef44232eb18aec2439d872ce6a8`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5952e4f3be0c9042b8ddec032a2d3a250da930033aff333c1b485fbef40100e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fc4837eff7c5ca8766ede50c892492cffe142494a0bdc5082ca8762a087149c`

```dockerfile
```

-	Layers:
	-	`sha256:7f0c05703ea40c6233ba19bd7f82711eff0d5d5579ef4239786927118713b96a`  
		Last Modified: Tue, 27 Oct 2026 16:28:32 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.9-linux`

```console
$ docker pull nats@sha256:327e1313127db1f56609132c78a07c273a6efa9d40fb2ee8334fccdd04029210
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.9-linux` - linux; amd64

```console
$ docker pull nats@sha256:1867a3cdc4ecfe2ee28f619bf29c4723615a80cce37e3a7f3804bc6db08d96ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6954550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436c96a68b255b7cff6c17369a2766b376d0747fd45b6928d5aea7362835014`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3c0c3209357d3c0be252dc49e24f96e3f9c6785e14732bce6ecf4de0f37ccfe`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 7.0 MB (6954040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245a36e6b3c019d4098bc17a510cf2162e2825c4482e182ec13f918cb7a0b3a`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1b5e3ae973a2c0cb78fc4fbfecc98a8f5aada38b6e42ed26abaaf3727d642496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd17f74577804b725bb22608dda34171b98287613c8ee547b756ebcc56df45c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4e59183d6fcd23139e5188efc9fa14a57c8805baf0c0dfefb172b949bb9527`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:23af70b0b9bbf47da83c3fbb0bc1bcec0fe6632b4a31310d00863682072148c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25034833a0029ede9bfa353459ad3976ca640fb7b55f04ae5c1a36ae2ecbc9d5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:02 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3b1ebb427f87eace068b3e418550437ba162ddc21e537def3cdd2373c372ed6`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 6.7 MB (6690937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c108dcb30a5d25b4824693a62e238dab392d1c6be0f2872dc4e7d2a44f1c58`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-linux` - unknown; unknown

```console
$ docker pull nats@sha256:f8a8eab4e025ebdbed9c9103dd8992747cf8b9c870c03eccc94e4070fe6e66a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f79c3977c112d0f17e1cbf86e3d8740d482c5da0a4d3c87c305d92b0bab9bf9`

```dockerfile
```

-	Layers:
	-	`sha256:4ce8dfb97a20f27976156e169028d8a2e6013f30641e5c3c2df0875369c20fd4`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:2818a9abe6128aef652d552872911dd4b32041c35f833d18ed6cc5aeb6f5a2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2a67a508a7dfabead7d75855b32675e648a9cd6e408fda03f8c2a41fc48fbf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:20 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f674a886a7709fef24cc74a775b417ac83befacca0d3f93d981e95962c365426`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.7 MB (6677875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3c0839f6d29406bcdd3229c2ed1117206372dc916c501414c824f003297e64`  
		Last Modified: Tue, 27 Oct 2026 16:30:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-linux` - unknown; unknown

```console
$ docker pull nats@sha256:3bbf2b3c5ca1108b66a7f8e87e6e275e8fdcc76086ef1ab67c7e5f7f67f9e6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839a4936a7674e964c57bd874419374e721abfafae4387881a75a1bd92f41a1e`

```dockerfile
```

-	Layers:
	-	`sha256:e9fdd7f6c8ca559e6487af581846d8feb84665cd336927f4baef7fecbf92f940`  
		Last Modified: Tue, 27 Oct 2026 16:30:24 GMT  
		Size: 8.7 KB (8743 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a267030878f5f5b25bd7398b565a0549ecfb2e5fac294ee252a101f70f773d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6297751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242d65498d8ea3c2c56dad1d274dc89b2f78e7a34d80e3cbc646790611e34b5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:14 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:40e359ca0552fda2dea78efb44631d33b0c1df01cec052e2a6cfb21afd82bf6c`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.3 MB (6297241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389920d2a99349a75713c72354cfcb806ade3becaed623fcc59136a49bd62a02`  
		Last Modified: Tue, 27 Oct 2026 16:31:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-linux` - unknown; unknown

```console
$ docker pull nats@sha256:38175bf099b22b2a40dcf6e4cd6afafb59731b1c5ce8041c7433615d69e5b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290386ea32da7a90b52e032365fc935b86b63ee0410595ef049e9a5fb47a035`

```dockerfile
```

-	Layers:
	-	`sha256:c90349fdef9cd8b833f019e9a7b36f945101a2a9d975e240adc972dc5ff67367`  
		Last Modified: Tue, 27 Oct 2026 16:31:18 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-linux` - linux; s390x

```console
$ docker pull nats@sha256:7af0cfb1ae4cb2b04b5acd8ed71ebc655979303236943e42e91098ce322f2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6766995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353459d9ac8ce27bb7ec61fece078487e7e83eba136da96234969b0c697c94fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:40 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:41 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:401e8e38380cbdb2df4a7779aff6370034281a09a480b45a0dbac26f5030290b`  
		Last Modified: Mon, 26 Oct 2026 17:00:55 GMT  
		Size: 6.8 MB (6766487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d0c4d613979d1c7666666f709ff8f53026782c767c5a924dd93791af6e2f6b`  
		Last Modified: Tue, 27 Oct 2026 16:32:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-linux` - unknown; unknown

```console
$ docker pull nats@sha256:61f941cc7737af1c025ca61e706097cfe67cee99a63a558430180b6cd99cbd0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a53c478fcb033b9f8574f35e3e2a43dd94cb6c3ca8c96775379af5c746febc`

```dockerfile
```

-	Layers:
	-	`sha256:fec04c57cb7707f54dede132a42b024713c535dfd1ffff1ca615c6525e62da33`  
		Last Modified: Tue, 27 Oct 2026 16:32:49 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.9-nanoserver`

```console
$ docker pull nats@sha256:cf8a3d3903c944504141b67733f8abef090b17c59a046a5d418246522f5c3b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14.9-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f3a3416710b6fe80f1a6832adf5bbeb402b8992733cff84f38a00ceeea444c2a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133086275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28dc0d7baabe0555b28dfbe0fd6b6bd36d89ea62d725c0fb2136b51a254acf80`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:51 GMT
RUN cmd /S /C #(nop) COPY file:b5c53ede1a65ac7ce4819a1b39bff1f443e234d3f7d50ceeb28c09b9c06969c9 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31225570b48072d6f0f3dabe8791696aeb72811f9667b0260917079e8432ce8b`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c360d9c9091c2e33af4bc77de1ec9ddd16c4f063436f9f759a97b2035820ab5`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 7.2 MB (7153586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532ae70d2192dc7fae379dda745d65b406c5f30594cf575c11f277f0f72240`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48332ad2cb7604e0eaaef8aecfed0293a87bdb31b19809fc63deb873ba91b448`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe276757ded85c6a1172dee3e4c3a9425cbb5c632607a31fbfe7c7e5145e59`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de5bf9ff8d3b58f5c2d0d86d2f0d707e7e6791bc98b3b588c41d912bc6c6b4`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.9-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:cf8a3d3903c944504141b67733f8abef090b17c59a046a5d418246522f5c3b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14.9-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f3a3416710b6fe80f1a6832adf5bbeb402b8992733cff84f38a00ceeea444c2a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133086275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28dc0d7baabe0555b28dfbe0fd6b6bd36d89ea62d725c0fb2136b51a254acf80`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:47 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:51 GMT
RUN cmd /S /C #(nop) COPY file:b5c53ede1a65ac7ce4819a1b39bff1f443e234d3f7d50ceeb28c09b9c06969c9 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31225570b48072d6f0f3dabe8791696aeb72811f9667b0260917079e8432ce8b`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c360d9c9091c2e33af4bc77de1ec9ddd16c4f063436f9f759a97b2035820ab5`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 7.2 MB (7153586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532ae70d2192dc7fae379dda745d65b406c5f30594cf575c11f277f0f72240`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.7 KB (1699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48332ad2cb7604e0eaaef8aecfed0293a87bdb31b19809fc63deb873ba91b448`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe276757ded85c6a1172dee3e4c3a9425cbb5c632607a31fbfe7c7e5145e59`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05de5bf9ff8d3b58f5c2d0d86d2f0d707e7e6791bc98b3b588c41d912bc6c6b4`  
		Last Modified: Tue, 27 Oct 2026 18:32:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.9-scratch`

```console
$ docker pull nats@sha256:327e1313127db1f56609132c78a07c273a6efa9d40fb2ee8334fccdd04029210
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.14.9-scratch` - linux; amd64

```console
$ docker pull nats@sha256:1867a3cdc4ecfe2ee28f619bf29c4723615a80cce37e3a7f3804bc6db08d96ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6954550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436c96a68b255b7cff6c17369a2766b376d0747fd45b6928d5aea7362835014`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:00 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:00 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:00 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3c0c3209357d3c0be252dc49e24f96e3f9c6785e14732bce6ecf4de0f37ccfe`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 7.0 MB (6954040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245a36e6b3c019d4098bc17a510cf2162e2825c4482e182ec13f918cb7a0b3a`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1b5e3ae973a2c0cb78fc4fbfecc98a8f5aada38b6e42ed26abaaf3727d642496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd17f74577804b725bb22608dda34171b98287613c8ee547b756ebcc56df45c`

```dockerfile
```

-	Layers:
	-	`sha256:1b4e59183d6fcd23139e5188efc9fa14a57c8805baf0c0dfefb172b949bb9527`  
		Last Modified: Tue, 27 Oct 2026 16:31:04 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:23af70b0b9bbf47da83c3fbb0bc1bcec0fe6632b4a31310d00863682072148c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6691446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25034833a0029ede9bfa353459ad3976ca640fb7b55f04ae5c1a36ae2ecbc9d5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:02 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3b1ebb427f87eace068b3e418550437ba162ddc21e537def3cdd2373c372ed6`  
		Last Modified: Mon, 26 Oct 2026 17:00:59 GMT  
		Size: 6.7 MB (6690937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c108dcb30a5d25b4824693a62e238dab392d1c6be0f2872dc4e7d2a44f1c58`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:f8a8eab4e025ebdbed9c9103dd8992747cf8b9c870c03eccc94e4070fe6e66a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f79c3977c112d0f17e1cbf86e3d8740d482c5da0a4d3c87c305d92b0bab9bf9`

```dockerfile
```

-	Layers:
	-	`sha256:4ce8dfb97a20f27976156e169028d8a2e6013f30641e5c3c2df0875369c20fd4`  
		Last Modified: Tue, 27 Oct 2026 16:36:07 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:2818a9abe6128aef652d552872911dd4b32041c35f833d18ed6cc5aeb6f5a2c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2a67a508a7dfabead7d75855b32675e648a9cd6e408fda03f8c2a41fc48fbf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:20 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:20 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:20 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f674a886a7709fef24cc74a775b417ac83befacca0d3f93d981e95962c365426`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.7 MB (6677875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3c0839f6d29406bcdd3229c2ed1117206372dc916c501414c824f003297e64`  
		Last Modified: Tue, 27 Oct 2026 16:30:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:3bbf2b3c5ca1108b66a7f8e87e6e275e8fdcc76086ef1ab67c7e5f7f67f9e6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839a4936a7674e964c57bd874419374e721abfafae4387881a75a1bd92f41a1e`

```dockerfile
```

-	Layers:
	-	`sha256:e9fdd7f6c8ca559e6487af581846d8feb84665cd336927f4baef7fecbf92f940`  
		Last Modified: Tue, 27 Oct 2026 16:30:24 GMT  
		Size: 8.7 KB (8743 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:a267030878f5f5b25bd7398b565a0549ecfb2e5fac294ee252a101f70f773d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6297751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7242d65498d8ea3c2c56dad1d274dc89b2f78e7a34d80e3cbc646790611e34b5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:14 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:40e359ca0552fda2dea78efb44631d33b0c1df01cec052e2a6cfb21afd82bf6c`  
		Last Modified: Mon, 26 Oct 2026 17:00:58 GMT  
		Size: 6.3 MB (6297241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389920d2a99349a75713c72354cfcb806ade3becaed623fcc59136a49bd62a02`  
		Last Modified: Tue, 27 Oct 2026 16:31:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:38175bf099b22b2a40dcf6e4cd6afafb59731b1c5ce8041c7433615d69e5b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290386ea32da7a90b52e032365fc935b86b63ee0410595ef049e9a5fb47a035`

```dockerfile
```

-	Layers:
	-	`sha256:c90349fdef9cd8b833f019e9a7b36f945101a2a9d975e240adc972dc5ff67367`  
		Last Modified: Tue, 27 Oct 2026 16:31:18 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-scratch` - linux; s390x

```console
$ docker pull nats@sha256:7af0cfb1ae4cb2b04b5acd8ed71ebc655979303236943e42e91098ce322f2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6766995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353459d9ac8ce27bb7ec61fece078487e7e83eba136da96234969b0c697c94fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:40 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:41 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:401e8e38380cbdb2df4a7779aff6370034281a09a480b45a0dbac26f5030290b`  
		Last Modified: Mon, 26 Oct 2026 17:00:55 GMT  
		Size: 6.8 MB (6766487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d0c4d613979d1c7666666f709ff8f53026782c767c5a924dd93791af6e2f6b`  
		Last Modified: Tue, 27 Oct 2026 16:32:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:61f941cc7737af1c025ca61e706097cfe67cee99a63a558430180b6cd99cbd0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a53c478fcb033b9f8574f35e3e2a43dd94cb6c3ca8c96775379af5c746febc`

```dockerfile
```

-	Layers:
	-	`sha256:fec04c57cb7707f54dede132a42b024713c535dfd1ffff1ca615c6525e62da33`  
		Last Modified: Tue, 27 Oct 2026 16:32:49 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.9-windowsservercore`

```console
$ docker pull nats@sha256:3c7d0d1b6b8b908d2db3d5510e89e9016a23057875171d7d3ae7fd50b5a15763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14.9-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f9826a548a07d6be74b442100244a427e200cdb489bd26b249291acd60298980
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234891982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208652b966d71fa949fa1096516a05445bc944dd3bf477caef84c9a192e1c9c4`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 18:00:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:00:04 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:00:05 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 18:00:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.9/nats-server-v2.14.9-windows-amd64.zip
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_SHASUM=2f1fe3be6f75462bfb76e72cf4fe9c95634093c3a01c5b94fe44e61cf2d2aa22
# Tue, 27 Oct 2026 18:00:12 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:28 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:28 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:29 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:29 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274a6904e612a92065423fd819ed6977c053cd9a2bf4ffad1c3f6bd2869c20b2`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07295a6e496831d99cd08144fa12e39564c965e0cb9ea7f3d2993ffd1710f37`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36e60210d6550c2297e93b3dea007c99387c7d42d8febe10b295f4ad0b66b68`  
		Last Modified: Tue, 27 Oct 2026 18:00:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377b67b86453a4d62b9d6f1c14e79e3ab2b130328649005ed09575e616632e85`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110a966c49421c50c5d7bfdf8470477da4a1b80a3de19236c2a34cbd2002196d`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0beebb1a3ed69bd0b02c94996ec988e455256d9ea7ae009568814f69154ac6e`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5d79d3ffacbeb58a213a6702ac1101c95d99da69442e1ee7fb18a3501d9338`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 334.6 KB (334637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8246d70ba16e356658639df498c49c9eeae0f0abc8bb2d24dc1ebacf4e7cd1`  
		Last Modified: Tue, 27 Oct 2026 18:00:35 GMT  
		Size: 7.5 MB (7487654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd6c2b9249dd7f3de4e9cf550bb9dcf7b4d201286030f67b53ebd98ac04b1f7`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78139d05724f7a715b0afc32bb420d4be6d7278e90d2637d06b4a8c87b12fe0d`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65def804d74275c70edf26d47f8852ed0f08218022d58b7f3b8b86237abea595`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5580bce3d675ed7b4d576553dfbdd16635b753a8c9d443717a74568a504ab`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.9-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:3c7d0d1b6b8b908d2db3d5510e89e9016a23057875171d7d3ae7fd50b5a15763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.14.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:f9826a548a07d6be74b442100244a427e200cdb489bd26b249291acd60298980
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234891982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208652b966d71fa949fa1096516a05445bc944dd3bf477caef84c9a192e1c9c4`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 18:00:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 18:00:04 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:00:05 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 18:00:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.9/nats-server-v2.14.9-windows-amd64.zip
# Tue, 27 Oct 2026 18:00:06 GMT
ENV NATS_SERVER_SHASUM=2f1fe3be6f75462bfb76e72cf4fe9c95634093c3a01c5b94fe44e61cf2d2aa22
# Tue, 27 Oct 2026 18:00:12 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:28 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:28 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:29 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:29 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274a6904e612a92065423fd819ed6977c053cd9a2bf4ffad1c3f6bd2869c20b2`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07295a6e496831d99cd08144fa12e39564c965e0cb9ea7f3d2993ffd1710f37`  
		Last Modified: Tue, 27 Oct 2026 18:00:38 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36e60210d6550c2297e93b3dea007c99387c7d42d8febe10b295f4ad0b66b68`  
		Last Modified: Tue, 27 Oct 2026 18:00:37 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377b67b86453a4d62b9d6f1c14e79e3ab2b130328649005ed09575e616632e85`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110a966c49421c50c5d7bfdf8470477da4a1b80a3de19236c2a34cbd2002196d`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0beebb1a3ed69bd0b02c94996ec988e455256d9ea7ae009568814f69154ac6e`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5d79d3ffacbeb58a213a6702ac1101c95d99da69442e1ee7fb18a3501d9338`  
		Last Modified: Tue, 27 Oct 2026 18:00:36 GMT  
		Size: 334.6 KB (334637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8246d70ba16e356658639df498c49c9eeae0f0abc8bb2d24dc1ebacf4e7cd1`  
		Last Modified: Tue, 27 Oct 2026 18:00:35 GMT  
		Size: 7.5 MB (7487654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd6c2b9249dd7f3de4e9cf550bb9dcf7b4d201286030f67b53ebd98ac04b1f7`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78139d05724f7a715b0afc32bb420d4be6d7278e90d2637d06b4a8c87b12fe0d`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65def804d74275c70edf26d47f8852ed0f08218022d58b7f3b8b86237abea595`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5580bce3d675ed7b4d576553dfbdd16635b753a8c9d443717a74568a504ab`  
		Last Modified: Tue, 27 Oct 2026 18:00:34 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15`

```console
$ docker pull nats@sha256:e249927b7766bcbd9d789889df43552e8ace9db327c848e50caefe59f4ed6bc9
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
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-alpine`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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

### `nats:2.15-alpine` - linux; amd64

```console
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-alpine3.22`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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

### `nats:2.15-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-linux`

```console
$ docker pull nats@sha256:b7138d7061349234c55f393ba76623047121f886f27395726f0ed3f72fea3bcb
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

### `nats:2.15-linux` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-nanoserver`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-scratch`

```console
$ docker pull nats@sha256:b7138d7061349234c55f393ba76623047121f886f27395726f0ed3f72fea3bcb
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

### `nats:2.15-scratch` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-windowsservercore`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.2`

```console
$ docker pull nats@sha256:82f4079f6d0480e89d90505abd83835e50bf5f26c8c2053e2ff81e6cb9bc6c74
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
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15.2` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.2-alpine`

```console
$ docker pull nats@sha256:40861340fe033e5ade564f7449bae1e805021b2f2038e6a324de80f39c786bc1
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.2-alpine` - linux; amd64

```console
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.2-alpine3.22`

```console
$ docker pull nats@sha256:40861340fe033e5ade564f7449bae1e805021b2f2038e6a324de80f39c786bc1
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.2-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.2-linux`

```console
$ docker pull nats@sha256:d5815cffab13a408ca5c90eb1eabde4a2af2220c0de76ee5fa38af0b74bd9cab
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.2-linux` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-linux` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.2-nanoserver`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15.2-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15.2-nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.2-scratch`

```console
$ docker pull nats@sha256:d5815cffab13a408ca5c90eb1eabde4a2af2220c0de76ee5fa38af0b74bd9cab
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
	-	linux; s390x
	-	unknown; unknown

### `nats:2.15.2-scratch` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.2-windowsservercore`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15.2-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:2.15.2-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:5fe569eab270ed1ac62e7974b80e86db130d33f464fe276beedd9003f50576dc
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
$ docker pull nats@sha256:56f9d75f139c4c7b123916049cfbb399fe9007cf0656fda6b97ef9dcb402ed84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fe91deea5a7ce5dc20fc282c909ae9c933344ec43ffe66f908ebbc81f59b20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8f2848b9eb04644b19ddda11b672da8c9f0dc729443b70760357b5f4626babe`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 7.7 MB (7748667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1736e5c40599be75577e15de328a6edf90f11998636ff635924219a078ed6770`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62811b51816616eb09f98cd85fd4ab27ce91acef07f204e49c55cea013e048f`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:026e760d6cc8a36a42bb1bce15903738bfab6bc1a39147e364a63111a75ea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9ae4b347b8c4c04f4d7015b31d340331b640a41633b8485b18f7f0226d23d4`

```dockerfile
```

-	Layers:
	-	`sha256:27d76ef0d9183fef8b550060bbc1d850ed53739da86e6cc57588ffcaf9cf3ade`  
		Last Modified: Tue, 27 Oct 2026 16:26:20 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:4ecd269a0375f9770949de6c397454b9c0efd35171c9d66708243f98d4edf23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee4a1f6901e8ad4f1cb37bdb54969e4a7577b0f72c1ec1c52088b3759baba75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:27:59 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:27:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:27:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:27:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5686813b44bf844f5cc4c00c745a8a7b8d274f4e4e71b2fbbe23017b206a77d`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 7.5 MB (7499254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b1a30efcef3a36c4c9b0e1d9faaeb36a738fc94f7589e3993a7d2932fe988`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8eaec2c8c7db32dafabd9d083cb4753b7f4a17121db3d418cd8ca59330cf17`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e05c00066c097110f4fd80e6dd51fe28ee6987b8a965036381e3e76cd1555bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c8fcf62b5359ea51bc3f5b61fb8254f69ec5dc84df67aa17da9a431d08db1b`

```dockerfile
```

-	Layers:
	-	`sha256:272f6ec2f7d4ef9d116cab4ba1f9ee27d5958e1ea0168d83bda9c99b81134984`  
		Last Modified: Tue, 27 Oct 2026 16:28:04 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:4a5c40bbe5206fb4ad4ac4ff9d3bd68d959c53494519dd71b9c2b4b5a9347c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2607cb38feae0ee8cdd5a846b1f6b51902bb2b88b1b2693ca9295ac89486df40`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:39 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96301f062d670cc8524dffd4dcc7ccba337d67c599b1a7d477a1ebedd8932d3d`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 7.5 MB (7487011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab363269f1f4301d4920136cd1858ca1c18bf72a7399ef860813a44a379c24f`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df15deaea8f695d493ca8db2e2de83a0cc6ba1b37f7fbb1125c30f6abe600b5`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cefd4b8350a062a070fceef60b3c1aa218f370f1e8cf915af85077f9e457ed2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60068d084639e2fbe9f78b60c195e0cb69779e9ec3eb54aaacb44620e8d5f1a`

```dockerfile
```

-	Layers:
	-	`sha256:2b7a60922afeae01806a6b711f9c5b388c4d6de30434b1ff241e13e5a354d239`  
		Last Modified: Tue, 27 Oct 2026 16:26:43 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:752ae3365e3b09a84a241ef13948adf16c4c7f0e44401c5e1ad9eade876668a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb7908f74d9c2b8d37cd31cdd7fd42fc75082784f8acb7a3f6ec385613ea66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:26:26 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:26:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:26:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:26:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543b292cd4bd7a6ad619f712d0bf02df7eb21f33821eb35b649402746cc908ab`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 7.1 MB (7053839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c38215127e2fb355524f3d1f01d10ac77b18769a42df30acc32cc9578fb9f0`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed71c399bb4bef24d706fc82babb61a94e378f1fe5f940427a554e00c9497f9`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9305fc31b7efe45295679d893c3e0ea439df1ab4647e9a1873c5c6f4d8fe017c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bfa3c58fc176a571792173dc4dfa576a21925837e6f3d3782785f3db8e45d8f`

```dockerfile
```

-	Layers:
	-	`sha256:28a9b5fc2ba9dcdd370acc1fa330b40ba269277202b7b6a2d6859e7d7ba42221`  
		Last Modified: Tue, 27 Oct 2026 16:26:30 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:e10f4517b6b0b9f7a4502d7ae0e70d061fd9f2b25e708168d3e14c1178e4a185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da975cd2f43eba0f5d9abe2726a89d39e6b914f51ce3c7e673ccb454899fb24e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:34:19 GMT
ENV NATS_SERVER=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Thu, 22 Oct 2026 10:34:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 22 Oct 2026 10:34:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 22 Oct 2026 10:34:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 10:34:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 10:34:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1725f45760a0dedebd75604a5470ecccd9a52768feed42bce8726a53b78f08b`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 7.1 MB (7121781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264561df3ab5c4c38918d35cba7fd695dacb010ff1120011947cecd14e3b4f65`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3d9c4a2459e1a8d7722b05b46a6498aee63cbfc4854c668452d3e648127ad2`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e25520dcbd35fb841c6b2715338a1f1c5420cac20a04e03f60d8701540f93b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d8f5a3cd0cd458cf8ed32ae6106db1795f32ba0b75d15bb439bad687f2f220`

```dockerfile
```

-	Layers:
	-	`sha256:c6ace09cc7995145a7d16d1fac9a3bdca8013327b10803ae319f6fee050e04b4`  
		Last Modified: Thu, 22 Oct 2026 10:34:28 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:54001fdfb9e5a5f30846a2ae5314d96cf509b8a02f5800b97f61824ffad9e404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1ed5d71c57552c3e70cd9c28050154e36d7accb8ff905632315b82000a99c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:28:01 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 16:28:01 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 16:28:02 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 16:28:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 16:28:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f26a6fe29f604a7b3e2833f3ebef070580330596d696a786b77f9b887c890d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 7.5 MB (7542610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef37a83adf235350c0fe57d2f427b472363b767bca76094ed28557b29cc7c39d`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785f699f967f9ad0d838dd9078f868aafeba29a4bc4a858b6de90842df01454`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c2aab83b405252881bd1c98bf591815d866ff0a85e0a893f008dcde7044f3b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4f9de62c2609500e4d821e6c37645f025c05a03e4b9bcb08c5964b00701f`

```dockerfile
```

-	Layers:
	-	`sha256:88c291d43fcd1e660b5ed30ac14e1e2ee8c273d25914ddad71c6250850f63689`  
		Last Modified: Tue, 27 Oct 2026 16:28:14 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:e249927b7766bcbd9d789889df43552e8ace9db327c848e50caefe59f4ed6bc9
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
	-	windows version 10.0.20348.5773; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:b7138d7061349234c55f393ba76623047121f886f27395726f0ed3f72fea3bcb
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
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:998a4f1fef93368f2b6110d8153e263986bf340bbb2cc41f493a80c81267a551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:580766aafe0ad58a0aa9d88d0c5a92a4d19a93e9779e3d469ccb39590e76702e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133466003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de506da78fbad6a666bc022d67fa89d427aaedb9a6a9a8b6ff00b8315bc3b449`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 27 Oct 2026 18:32:52 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 18:32:53 GMT
RUN cmd /S /C #(nop) COPY file:6d45a446b289e5577bbacd84fd5913472fd671b384b7f8d434a8270fbe2247a1 in C:\nats-server.exe 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:32:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:32:55 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5faadd6d4bc080d3acb57c4d71a8adfcf33d84fe7fb090d4002a7941237164`  
		Last Modified: Tue, 27 Oct 2026 18:33:01 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9f65b400705d77c92b71251603274ba2fcd58d978de3b56e3da5230837293`  
		Last Modified: Tue, 27 Oct 2026 18:33:00 GMT  
		Size: 7.5 MB (7533448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b05fefa6c7ae8a0aaeea86caa1c95b5e49b243b92816b9ba03d2830cfefa17`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66340557be76cf5209f51240c32f5339e75cdacc6e716d267c101e7a0e684ff`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad2ecfd074026d5053639bd48ee2e0734dbf566f111a6794c1dd39b632d7a9`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c596ef1ab3aa6f067453865e580287747a17ee2f76b361407ad13777a7896c4`  
		Last Modified: Tue, 27 Oct 2026 18:32:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:b7138d7061349234c55f393ba76623047121f886f27395726f0ed3f72fea3bcb
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
$ docker pull nats@sha256:201956d6da84c2ca323efe3810d3818f12e72e85a4746b81978bb4a075b971c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7332225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38de3ef4102d0fc2e365c40de9bb96ebac76b7597efbba19171a9f6e4c27e3b9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:31:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:31:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:31:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:31:29 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:31:29 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:64b96188a0c27c25676cbdb258d0a1deab49568b319a4f2eb9e688dd21533971`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.3 MB (7331715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069c4bddc4dfb128f7ab93448129f776db4f5840636ff5b8a80945c08f3fa7d3`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2fc5e7276b9b2a45e64e443dfb5e128f4ce167d2bc16afd654e6b2d2013f5d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662daea6934876100bfce023a01f5530fafc65fb9bc41887f7a03d433079ade0`

```dockerfile
```

-	Layers:
	-	`sha256:578d3dac7852439d2a9bca35843120573fe24288d1125385155a2189fb3baedf`  
		Last Modified: Tue, 27 Oct 2026 16:31:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:981218719e0a58d3e95d7111eb3b01083367189cc5693d52a3430b63043f2423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7085156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf70b3c3d6a281cab09c595b321462adcacc53ca0022fea5a37d46d2d4237026`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:36:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:36:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:36:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:36:01 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:36:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bbb7a83424c666be7470d856ab1f33e1aa9fc8045f9c9719fc4c4df9a9515458`  
		Last Modified: Mon, 26 Oct 2026 17:00:53 GMT  
		Size: 7.1 MB (7084648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c03cb767eec604aa9f51c1c6f8a181a3658867bcd6d168969e624908d75cf0`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0c858d67e298f3c1f1ae99f824bd94f07c2bb75a49e7d6e405e1b6faf04e5a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621eeca5b1d00bd1f936ffc9544128ec61ff4dded1ad9e057b7a00906dc1d02c`

```dockerfile
```

-	Layers:
	-	`sha256:2ddca54c29e2b1648daf970616d5887b39ea99e561c86535c0bda95e3ca6e39e`  
		Last Modified: Tue, 27 Oct 2026 16:36:06 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:392cdd9cd1cce38d71942b7089babf38cd728c50b0817edc9e8a7e0bd25ca0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b7fe79e7e7f28c8837cd7f0817243c4bae0c8e3b86164d1f7581fd57f36189`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:29:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:29:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:29:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:29:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:29:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:0aa413081782002fb3f857f975c182528a024e87f3b42026df702db552cc3a7d`  
		Last Modified: Mon, 26 Oct 2026 17:00:54 GMT  
		Size: 7.1 MB (7071973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd12a8aefe6c74993da6a95fbe1fcf0d393ab681902e939e9a0ad9d3b615b65c`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32053304c3916820bbf4f356ab59c1b08cd3c96d21fe95746b04d985f853d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e037ad4f3e3e75150ef44ee956890f7acafcce5ea15f2ad16dfb2a119d7d645`

```dockerfile
```

-	Layers:
	-	`sha256:d3f6593bf462c11d3476288563f90c6ff29079094260134ddf0ac254e8c90b39`  
		Last Modified: Tue, 27 Oct 2026 16:29:54 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8a8af8197467f4c2bf1bbc990283e5abb22c753afe191bcf8a99fe34a10f778a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6639792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d34b65f88ef1e246f2e6ff715fc57753da37e0b6fbfe6598909145f99a46d7`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:30:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:30:50 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:30:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:30:50 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:30:50 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1f281057cb528e92843ae6f3ba4cdb50ce7d9539ea9708bb0a0c2995cbcab726`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.6 MB (6639282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a7aea90db46be39405f80af632d2d68770378e9dc1c012adb4c2d6f2e7875b`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:26b92233e04bd1685fc298a0a3a969ec2a61f5352f344a5dc7bef7f0f51b3ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fcc6497835917ecc1ea55d513ea006569c443d7fdae53ddc4f2acea395ef5c`

```dockerfile
```

-	Layers:
	-	`sha256:275778c6eb50c3812b395c62962ca86bb01ec6612004460395baffaa9726d0c5`  
		Last Modified: Tue, 27 Oct 2026 16:30:54 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:137ec4318bed4dbd160374629aa7b54cbc61e9728bc885a01580b526d8c9b293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28947880eb9ca677e75ce2e65f0d20390e517fa5ea229d821b66fe88fcfbdb2d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 15:38:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 22 Oct 2026 15:38:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 22 Oct 2026 15:38:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 22 Oct 2026 15:38:05 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 22 Oct 2026 15:38:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29fa58f5c1f72b451e739fc631077872add5526cc704fb9b1edeedece99b031`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5ad28b660b3295f090f86148efd1655b97b19990f502fef80291ec1739e0f143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3313f186063a06c214e5fa7bb15ddbf47d2eda71b29be1c2ac2089dbf7483`

```dockerfile
```

-	Layers:
	-	`sha256:4bde22c13c9bfffb1755b1470a58309d11d941f6f22109933268ce424aef45e4`  
		Last Modified: Thu, 22 Oct 2026 15:38:12 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:899eca43578d14229ae40d6452d1a1020352d407eddfbbd3ebe8b3794b8b6edd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7126882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ffd4227d4ff2f68bc1aeaba8d79cba2cd6660a7b2965994607c4c5aab2f8a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 16:32:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 16:32:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 16:32:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 16:32:30 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 16:32:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:2130951099bc3b42795ec6f012c99d025dbd1b0de5a38dc2710da0cf59456ecc`  
		Last Modified: Mon, 26 Oct 2026 17:00:51 GMT  
		Size: 7.1 MB (7126374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc67cbb4c6e43ebb7f2b7b83182fc474dc1166a51a4748c8949ae335c6551673`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5abf78f484c947a867ee4a06272facd5b799c3b00286541a9284080ef17dc01c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7081197ddeffcda1e4f145c2c0fc898500dd0608aee357a60de0f6cb364017`

```dockerfile
```

-	Layers:
	-	`sha256:b646ee0fb777486bc91654a84a5074166f6035dbec40db9620bcf16b32d6cbd8`  
		Last Modified: Tue, 27 Oct 2026 16:32:38 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:bcb42994a74d5c405e3c16c1647e5f9c0e2effa0bc35827af0ec313515b769c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull nats@sha256:dbbc77faa3ab4ba588704eae893290ef29566305c6ee4c541b52ad35b289e4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2235271510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302553c184a0d4abc08a33ce833dd7691eb41106b241be672b4f2d2d351d47cb`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:59:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 27 Oct 2026 17:59:48 GMT
ENV NATS_DOCKERIZED=1
# Tue, 27 Oct 2026 17:59:49 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 17:59:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 17:59:50 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.2/nats-server-v2.15.2-windows-amd64.zip
# Tue, 27 Oct 2026 17:59:51 GMT
ENV NATS_SERVER_SHASUM=f6398d5d11093778f870db70242cb50d20a58134c937c805ba8d114e7e398766
# Tue, 27 Oct 2026 17:59:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 27 Oct 2026 18:00:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 27 Oct 2026 18:00:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 27 Oct 2026 18:00:11 GMT
EXPOSE 4222 6222 8222
# Tue, 27 Oct 2026 18:00:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 27 Oct 2026 18:00:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c65daf2016e8f11984ad53aa6e96038c91bf728a60071a4a6c90c1939614f5`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6931a69be7922338b9548f1204384aa3158593615f262f696b692c6a1a542`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aee33fe7c6731e86bb31b9d9bee8ecda4249e593891d92826964d35e830edc`  
		Last Modified: Tue, 27 Oct 2026 18:00:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de58164dff7537e8870ae0a3999b838e8b255015488eeaf3112928a7c4c475ce`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affaebdbbf40449e9086ba4c71a645fdfa04dc41a14f8d8f72d599afe2e6fea1`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3571e436fed3e1af05fd88c02985b15e8063233775729e3210e726f934c7d`  
		Last Modified: Tue, 27 Oct 2026 18:00:18 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fa3dc7b3814be6c67adbde52eea6c51dfb0e46ee5fdda97095f132f4182c5`  
		Last Modified: Tue, 27 Oct 2026 18:00:19 GMT  
		Size: 334.5 KB (334537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad78c64115b4759c440528a58f4f7b03cd46b8e379802c1e34198246b595750`  
		Last Modified: Tue, 27 Oct 2026 18:00:21 GMT  
		Size: 7.9 MB (7867071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47779347f7d44e57aedace458b05cd1455ee347d66c1b61fae75df463e7d841b`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437047bec471cfa9456c836e1625fa8422baa7dc41be120722b796321062afad`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02db10d5b9a56649de09977ed52dc1e3d172eefd5288ee7760efc58ef0b922d0`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebc00f5ae9acd17f63ef5621813e2d758500822065f8e9f3fd641846bfa960d`  
		Last Modified: Tue, 27 Oct 2026 18:00:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
