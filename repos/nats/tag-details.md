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
$ docker pull nats@sha256:991242c32d2738ffd358fd6614dd96c735017b4b3b34bfdb2c52a072d66db211
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:2721e37c651cb38039c583b0ee1b7248155e607ccaabfea19b38eb95a86fc3ff
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
$ docker pull nats@sha256:edfe36d0f411924217498574b853343aacde06ebb46516bcb9e858d17104eaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6367824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc16e7ee1093aebb4fe8cf874ebc6e0a082aadefb7da05ee67bc7015e1a7d19`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:55 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bc216edebe55496e857994949c9f3da3ee08b9f6b992112d698a6196b06256e3`  
		Last Modified: Mon, 26 Oct 2026 17:00:56 GMT  
		Size: 6.4 MB (6367314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:bd50742ab4f4dc0eb78ad2a5485f4de7d92895e8284ff756737b5418441bebba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2005e1ff0a576055897dd8e6b4e39fddce651f267ac2fb3701c427b582c35`

```dockerfile
```

-	Layers:
	-	`sha256:40bb8fe928baf749a9d621d48343bcac0a793a6873439f8104626106032b7d1c`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 8.7 KB (8715 bytes)  
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
$ docker pull nats@sha256:9cf367643ce1f585a71620940c71bd82f3cb4c20aa59d114e112dbcb5a88121b
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
$ docker pull nats@sha256:c20b78366bab4531b2ae36e660f7cb7e533d956fc927aaf5c88e6ba6e5e054e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48efdba32ce312d569f4432689dd9121c9cc725257e8eff84239d3ea00a168be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281bb07e97fa272cdc79ad90115d1012c129315fc65171249c4f7c4a05434e6e`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 7.4 MB (7364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b572431e36f18754392f715304b9bc51806510ef3ac93f7837c9b697b85cd4`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4671bd839a0f80ab4350afd94bcdd4ac5d5b3d60734b11fa2c9c2cc6db217655`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fc78019adb4e0ca36b5dee65a8987179d6b87a5b0fb78853cea55ef39d694b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5b6c193bcca08670fcd975de9650f0b7f7748f9b897ff682df4ddb9f8415f0`

```dockerfile
```

-	Layers:
	-	`sha256:b6dcc2f1a988e0fed721a2ab65954bc10ccfbcdfea75f2365cc172270ddc4a5c`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:7e92ddec8099c5bb0ea110713c31267992a7e7ad2a0f03161c14d41c209787a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e927f4c6bc87dbb82900311dc3eeddad0235383d9c25ebef16491d0a6f01f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2d67580a5b190e859017e474f954fe05e3aba588d7e45746a84d60a62cd6b8`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 7.1 MB (7105258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2872dcd147e1265d87f37965cf5ec472d4541590daf7ee73e2f68028d5b0fa`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e90b249c484cc4066fcdd691aa7b4ea640845c80d003ed6caccf79a9203c4f7`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:b90c92352a64c58676a277b72857aac3e6c11de8f4fe34a33cceaa3fc6d32ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e400bc96c22904cc7098ac23190a34a3d458f39bb44b0867613a885dfdc079`

```dockerfile
```

-	Layers:
	-	`sha256:1f0236e11fd00cf6192dac9b538ec42a416e18540a7b5bfa78b69f70bc2653f0`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:8f82a780a97a229fceba744d494dd74ced0925184df296595f3428a2a4d79ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1a49367ddcff8c9203190d28eb7ef3dff038b8008d83d3c24b88096507215f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c910c6c828f3fce0fcbba38bd31a2c4dbdf67989dbe8d46f9038a5050584a6b0`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 7.1 MB (7092438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87efdb27a786ca4c58b7f81ad15839f70ba0fae456530f328628fb95594953`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b2893063a1030978eacdbd2cd40ab9df1203a0d46ddbc884cbf871f4d71555`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0b92d36da9c5ddda8c8b76a4c75a852d00d43cd98423fbff18578fc0f868bded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4173fa6de7e2fbd5c7f28ea2c614cfd3eccd2126f4ec8e96ff046966604c9e65`

```dockerfile
```

-	Layers:
	-	`sha256:e630926ee0aadd4bcba25a3cc3867f886582cdf544ab3a59d91019e502176920`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:5e09808726b0d7500a68b07998e14a5f6d4109956d17ac221d180bc995eef314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da19f6fde71d29dab4c31de22562bb4eed2d638b78252733555ae7f0d227597f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147eda73106e21cb87b0510f89f74111f2c845ae272aa6fe3d09874eff07ef79`  
		Last Modified: Thu, 05 Nov 2026 18:52:22 GMT  
		Size: 6.7 MB (6712481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2c73ba14b3978cf886b3c0e183faab14f0bc6f66bb586d3d9b1723283a1b7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdbd46d4658fa5af6081a346a879880ec8065d7737d051f1de780c1894f5ff7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:55d58ccc39cccd95aae8a5899641df8db3ae2868c3f4232923f095569dfee9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78db36b3707d553d5228e482c8705fa237db5585cf036a0890da90b0d91b90b`

```dockerfile
```

-	Layers:
	-	`sha256:116b6967ff6b39b2bd6f37e970935f169509e10e1dcc35fa87cf9fe146dc8ad4`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 14.3 KB (14306 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:7e8da8f793f5acc565281076d540ba93a1a831db37b69b6ada5a28fb80535c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d732da709fd85acb2784c278f4b10e0f85d1b9eb34db4c8376db6998a528d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301901c0b9f850d031804387d58e5802ed40ae2d134d4faf2dc0c1176d311c3f`  
		Last Modified: Tue, 27 Oct 2026 19:28:32 GMT  
		Size: 6.8 MB (6783790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a483fa50b174f5a22e91ecc9074dc610fa9d7f2d9976eccfa26ce2751391851b`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d915179dc15c7a1844852bb92aebb7ee42a042ed58dccb9419e809d37477e3e9`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:a2f8a8a2eede8e5b98ea410bd6c4d9fc77bcc18f06d3592ec366cbaffe9ae367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3adc35d5ac4c7c86a433f9aedaf05b9826fdfbba5935a77068a9046657405e`

```dockerfile
```

-	Layers:
	-	`sha256:a5291fd40fe09f44ee75fd30d4eedbf8141968ff82b179c560a2f43890f383de`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:2063b77b8158f3be15a289b4e1bbf41553c413d2797da822450e297b9b3224ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50cb74d69a7f56425725526c40468d0cad2e884928fd7240959f47cc22e5bc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:17:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aced84b49bc2db9c143ab78074fff4fc975146094b8adff2d3f91457e5f255c`  
		Last Modified: Thu, 05 Nov 2026 18:17:20 GMT  
		Size: 7.2 MB (7180809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41c1d0f83e1f636d100ff4e549184d7d87940324d95f3e3ea58e4cd53c6fc5`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b13dc670b84a543704279ec85a6d091eaf341f62947240067735d16b45b1c87`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1c41c7adbad6ae77707ec218ee0a8f7446259d659cd73f1b4e59fc53fdfca5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1eab4a8a84b94ccf4f7ff01ce84e496abbc4ff2dd448b6e4ff66c918df6b4f`

```dockerfile
```

-	Layers:
	-	`sha256:1166f29b24e1689afc37139960a80c4a1bf3a9e477dca3f4cb809d004eb30df0`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:9cf367643ce1f585a71620940c71bd82f3cb4c20aa59d114e112dbcb5a88121b
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
$ docker pull nats@sha256:c20b78366bab4531b2ae36e660f7cb7e533d956fc927aaf5c88e6ba6e5e054e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48efdba32ce312d569f4432689dd9121c9cc725257e8eff84239d3ea00a168be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281bb07e97fa272cdc79ad90115d1012c129315fc65171249c4f7c4a05434e6e`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 7.4 MB (7364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b572431e36f18754392f715304b9bc51806510ef3ac93f7837c9b697b85cd4`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4671bd839a0f80ab4350afd94bcdd4ac5d5b3d60734b11fa2c9c2cc6db217655`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fc78019adb4e0ca36b5dee65a8987179d6b87a5b0fb78853cea55ef39d694b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5b6c193bcca08670fcd975de9650f0b7f7748f9b897ff682df4ddb9f8415f0`

```dockerfile
```

-	Layers:
	-	`sha256:b6dcc2f1a988e0fed721a2ab65954bc10ccfbcdfea75f2365cc172270ddc4a5c`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:7e92ddec8099c5bb0ea110713c31267992a7e7ad2a0f03161c14d41c209787a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e927f4c6bc87dbb82900311dc3eeddad0235383d9c25ebef16491d0a6f01f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2d67580a5b190e859017e474f954fe05e3aba588d7e45746a84d60a62cd6b8`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 7.1 MB (7105258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2872dcd147e1265d87f37965cf5ec472d4541590daf7ee73e2f68028d5b0fa`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e90b249c484cc4066fcdd691aa7b4ea640845c80d003ed6caccf79a9203c4f7`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b90c92352a64c58676a277b72857aac3e6c11de8f4fe34a33cceaa3fc6d32ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e400bc96c22904cc7098ac23190a34a3d458f39bb44b0867613a885dfdc079`

```dockerfile
```

-	Layers:
	-	`sha256:1f0236e11fd00cf6192dac9b538ec42a416e18540a7b5bfa78b69f70bc2653f0`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:8f82a780a97a229fceba744d494dd74ced0925184df296595f3428a2a4d79ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1a49367ddcff8c9203190d28eb7ef3dff038b8008d83d3c24b88096507215f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c910c6c828f3fce0fcbba38bd31a2c4dbdf67989dbe8d46f9038a5050584a6b0`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 7.1 MB (7092438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87efdb27a786ca4c58b7f81ad15839f70ba0fae456530f328628fb95594953`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b2893063a1030978eacdbd2cd40ab9df1203a0d46ddbc884cbf871f4d71555`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0b92d36da9c5ddda8c8b76a4c75a852d00d43cd98423fbff18578fc0f868bded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4173fa6de7e2fbd5c7f28ea2c614cfd3eccd2126f4ec8e96ff046966604c9e65`

```dockerfile
```

-	Layers:
	-	`sha256:e630926ee0aadd4bcba25a3cc3867f886582cdf544ab3a59d91019e502176920`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:5e09808726b0d7500a68b07998e14a5f6d4109956d17ac221d180bc995eef314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da19f6fde71d29dab4c31de22562bb4eed2d638b78252733555ae7f0d227597f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147eda73106e21cb87b0510f89f74111f2c845ae272aa6fe3d09874eff07ef79`  
		Last Modified: Thu, 05 Nov 2026 18:52:22 GMT  
		Size: 6.7 MB (6712481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2c73ba14b3978cf886b3c0e183faab14f0bc6f66bb586d3d9b1723283a1b7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdbd46d4658fa5af6081a346a879880ec8065d7737d051f1de780c1894f5ff7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:55d58ccc39cccd95aae8a5899641df8db3ae2868c3f4232923f095569dfee9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78db36b3707d553d5228e482c8705fa237db5585cf036a0890da90b0d91b90b`

```dockerfile
```

-	Layers:
	-	`sha256:116b6967ff6b39b2bd6f37e970935f169509e10e1dcc35fa87cf9fe146dc8ad4`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 14.3 KB (14306 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:7e8da8f793f5acc565281076d540ba93a1a831db37b69b6ada5a28fb80535c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d732da709fd85acb2784c278f4b10e0f85d1b9eb34db4c8376db6998a528d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301901c0b9f850d031804387d58e5802ed40ae2d134d4faf2dc0c1176d311c3f`  
		Last Modified: Tue, 27 Oct 2026 19:28:32 GMT  
		Size: 6.8 MB (6783790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a483fa50b174f5a22e91ecc9074dc610fa9d7f2d9976eccfa26ce2751391851b`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d915179dc15c7a1844852bb92aebb7ee42a042ed58dccb9419e809d37477e3e9`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:a2f8a8a2eede8e5b98ea410bd6c4d9fc77bcc18f06d3592ec366cbaffe9ae367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3adc35d5ac4c7c86a433f9aedaf05b9826fdfbba5935a77068a9046657405e`

```dockerfile
```

-	Layers:
	-	`sha256:a5291fd40fe09f44ee75fd30d4eedbf8141968ff82b179c560a2f43890f383de`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:2063b77b8158f3be15a289b4e1bbf41553c413d2797da822450e297b9b3224ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50cb74d69a7f56425725526c40468d0cad2e884928fd7240959f47cc22e5bc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:17:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aced84b49bc2db9c143ab78074fff4fc975146094b8adff2d3f91457e5f255c`  
		Last Modified: Thu, 05 Nov 2026 18:17:20 GMT  
		Size: 7.2 MB (7180809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41c1d0f83e1f636d100ff4e549184d7d87940324d95f3e3ea58e4cd53c6fc5`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b13dc670b84a543704279ec85a6d091eaf341f62947240067735d16b45b1c87`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1c41c7adbad6ae77707ec218ee0a8f7446259d659cd73f1b4e59fc53fdfca5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1eab4a8a84b94ccf4f7ff01ce84e496abbc4ff2dd448b6e4ff66c918df6b4f`

```dockerfile
```

-	Layers:
	-	`sha256:1166f29b24e1689afc37139960a80c4a1bf3a9e477dca3f4cb809d004eb30df0`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:3b57134a9b1e9672038adba17d98ba96f743ab3adb08df0501bd86f236499ee4
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
$ docker pull nats@sha256:edfe36d0f411924217498574b853343aacde06ebb46516bcb9e858d17104eaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6367824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc16e7ee1093aebb4fe8cf874ebc6e0a082aadefb7da05ee67bc7015e1a7d19`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:55 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bc216edebe55496e857994949c9f3da3ee08b9f6b992112d698a6196b06256e3`  
		Last Modified: Mon, 26 Oct 2026 17:00:56 GMT  
		Size: 6.4 MB (6367314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:bd50742ab4f4dc0eb78ad2a5485f4de7d92895e8284ff756737b5418441bebba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2005e1ff0a576055897dd8e6b4e39fddce651f267ac2fb3701c427b582c35`

```dockerfile
```

-	Layers:
	-	`sha256:40bb8fe928baf749a9d621d48343bcac0a793a6873439f8104626106032b7d1c`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 8.7 KB (8715 bytes)  
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
$ docker pull nats@sha256:3b57134a9b1e9672038adba17d98ba96f743ab3adb08df0501bd86f236499ee4
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
$ docker pull nats@sha256:edfe36d0f411924217498574b853343aacde06ebb46516bcb9e858d17104eaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6367824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc16e7ee1093aebb4fe8cf874ebc6e0a082aadefb7da05ee67bc7015e1a7d19`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:55 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bc216edebe55496e857994949c9f3da3ee08b9f6b992112d698a6196b06256e3`  
		Last Modified: Mon, 26 Oct 2026 17:00:56 GMT  
		Size: 6.4 MB (6367314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:bd50742ab4f4dc0eb78ad2a5485f4de7d92895e8284ff756737b5418441bebba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2005e1ff0a576055897dd8e6b4e39fddce651f267ac2fb3701c427b582c35`

```dockerfile
```

-	Layers:
	-	`sha256:40bb8fe928baf749a9d621d48343bcac0a793a6873439f8104626106032b7d1c`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 8.7 KB (8715 bytes)  
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
$ docker pull nats@sha256:2721e37c651cb38039c583b0ee1b7248155e607ccaabfea19b38eb95a86fc3ff
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

### `nats:2.14.9` - linux; ppc64le

```console
$ docker pull nats@sha256:edfe36d0f411924217498574b853343aacde06ebb46516bcb9e858d17104eaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6367824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc16e7ee1093aebb4fe8cf874ebc6e0a082aadefb7da05ee67bc7015e1a7d19`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:55 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bc216edebe55496e857994949c9f3da3ee08b9f6b992112d698a6196b06256e3`  
		Last Modified: Mon, 26 Oct 2026 17:00:56 GMT  
		Size: 6.4 MB (6367314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9` - unknown; unknown

```console
$ docker pull nats@sha256:bd50742ab4f4dc0eb78ad2a5485f4de7d92895e8284ff756737b5418441bebba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2005e1ff0a576055897dd8e6b4e39fddce651f267ac2fb3701c427b582c35`

```dockerfile
```

-	Layers:
	-	`sha256:40bb8fe928baf749a9d621d48343bcac0a793a6873439f8104626106032b7d1c`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 8.7 KB (8715 bytes)  
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
$ docker pull nats@sha256:9cf367643ce1f585a71620940c71bd82f3cb4c20aa59d114e112dbcb5a88121b
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

### `nats:2.14.9-alpine` - linux; amd64

```console
$ docker pull nats@sha256:c20b78366bab4531b2ae36e660f7cb7e533d956fc927aaf5c88e6ba6e5e054e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48efdba32ce312d569f4432689dd9121c9cc725257e8eff84239d3ea00a168be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281bb07e97fa272cdc79ad90115d1012c129315fc65171249c4f7c4a05434e6e`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 7.4 MB (7364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b572431e36f18754392f715304b9bc51806510ef3ac93f7837c9b697b85cd4`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4671bd839a0f80ab4350afd94bcdd4ac5d5b3d60734b11fa2c9c2cc6db217655`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fc78019adb4e0ca36b5dee65a8987179d6b87a5b0fb78853cea55ef39d694b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5b6c193bcca08670fcd975de9650f0b7f7748f9b897ff682df4ddb9f8415f0`

```dockerfile
```

-	Layers:
	-	`sha256:b6dcc2f1a988e0fed721a2ab65954bc10ccfbcdfea75f2365cc172270ddc4a5c`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:7e92ddec8099c5bb0ea110713c31267992a7e7ad2a0f03161c14d41c209787a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e927f4c6bc87dbb82900311dc3eeddad0235383d9c25ebef16491d0a6f01f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2d67580a5b190e859017e474f954fe05e3aba588d7e45746a84d60a62cd6b8`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 7.1 MB (7105258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2872dcd147e1265d87f37965cf5ec472d4541590daf7ee73e2f68028d5b0fa`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e90b249c484cc4066fcdd691aa7b4ea640845c80d003ed6caccf79a9203c4f7`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:b90c92352a64c58676a277b72857aac3e6c11de8f4fe34a33cceaa3fc6d32ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e400bc96c22904cc7098ac23190a34a3d458f39bb44b0867613a885dfdc079`

```dockerfile
```

-	Layers:
	-	`sha256:1f0236e11fd00cf6192dac9b538ec42a416e18540a7b5bfa78b69f70bc2653f0`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:8f82a780a97a229fceba744d494dd74ced0925184df296595f3428a2a4d79ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1a49367ddcff8c9203190d28eb7ef3dff038b8008d83d3c24b88096507215f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c910c6c828f3fce0fcbba38bd31a2c4dbdf67989dbe8d46f9038a5050584a6b0`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 7.1 MB (7092438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87efdb27a786ca4c58b7f81ad15839f70ba0fae456530f328628fb95594953`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b2893063a1030978eacdbd2cd40ab9df1203a0d46ddbc884cbf871f4d71555`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0b92d36da9c5ddda8c8b76a4c75a852d00d43cd98423fbff18578fc0f868bded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4173fa6de7e2fbd5c7f28ea2c614cfd3eccd2126f4ec8e96ff046966604c9e65`

```dockerfile
```

-	Layers:
	-	`sha256:e630926ee0aadd4bcba25a3cc3867f886582cdf544ab3a59d91019e502176920`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:5e09808726b0d7500a68b07998e14a5f6d4109956d17ac221d180bc995eef314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da19f6fde71d29dab4c31de22562bb4eed2d638b78252733555ae7f0d227597f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147eda73106e21cb87b0510f89f74111f2c845ae272aa6fe3d09874eff07ef79`  
		Last Modified: Thu, 05 Nov 2026 18:52:22 GMT  
		Size: 6.7 MB (6712481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2c73ba14b3978cf886b3c0e183faab14f0bc6f66bb586d3d9b1723283a1b7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdbd46d4658fa5af6081a346a879880ec8065d7737d051f1de780c1894f5ff7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:55d58ccc39cccd95aae8a5899641df8db3ae2868c3f4232923f095569dfee9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78db36b3707d553d5228e482c8705fa237db5585cf036a0890da90b0d91b90b`

```dockerfile
```

-	Layers:
	-	`sha256:116b6967ff6b39b2bd6f37e970935f169509e10e1dcc35fa87cf9fe146dc8ad4`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 14.3 KB (14306 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:7e8da8f793f5acc565281076d540ba93a1a831db37b69b6ada5a28fb80535c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d732da709fd85acb2784c278f4b10e0f85d1b9eb34db4c8376db6998a528d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301901c0b9f850d031804387d58e5802ed40ae2d134d4faf2dc0c1176d311c3f`  
		Last Modified: Tue, 27 Oct 2026 19:28:32 GMT  
		Size: 6.8 MB (6783790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a483fa50b174f5a22e91ecc9074dc610fa9d7f2d9976eccfa26ce2751391851b`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d915179dc15c7a1844852bb92aebb7ee42a042ed58dccb9419e809d37477e3e9`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:a2f8a8a2eede8e5b98ea410bd6c4d9fc77bcc18f06d3592ec366cbaffe9ae367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3adc35d5ac4c7c86a433f9aedaf05b9826fdfbba5935a77068a9046657405e`

```dockerfile
```

-	Layers:
	-	`sha256:a5291fd40fe09f44ee75fd30d4eedbf8141968ff82b179c560a2f43890f383de`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine` - linux; s390x

```console
$ docker pull nats@sha256:2063b77b8158f3be15a289b4e1bbf41553c413d2797da822450e297b9b3224ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50cb74d69a7f56425725526c40468d0cad2e884928fd7240959f47cc22e5bc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:17:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aced84b49bc2db9c143ab78074fff4fc975146094b8adff2d3f91457e5f255c`  
		Last Modified: Thu, 05 Nov 2026 18:17:20 GMT  
		Size: 7.2 MB (7180809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41c1d0f83e1f636d100ff4e549184d7d87940324d95f3e3ea58e4cd53c6fc5`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b13dc670b84a543704279ec85a6d091eaf341f62947240067735d16b45b1c87`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1c41c7adbad6ae77707ec218ee0a8f7446259d659cd73f1b4e59fc53fdfca5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1eab4a8a84b94ccf4f7ff01ce84e496abbc4ff2dd448b6e4ff66c918df6b4f`

```dockerfile
```

-	Layers:
	-	`sha256:1166f29b24e1689afc37139960a80c4a1bf3a9e477dca3f4cb809d004eb30df0`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.9-alpine3.22`

```console
$ docker pull nats@sha256:9cf367643ce1f585a71620940c71bd82f3cb4c20aa59d114e112dbcb5a88121b
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

### `nats:2.14.9-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:c20b78366bab4531b2ae36e660f7cb7e533d956fc927aaf5c88e6ba6e5e054e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11160161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48efdba32ce312d569f4432689dd9121c9cc725257e8eff84239d3ea00a168be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:56:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281bb07e97fa272cdc79ad90115d1012c129315fc65171249c4f7c4a05434e6e`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 7.4 MB (7364817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b572431e36f18754392f715304b9bc51806510ef3ac93f7837c9b697b85cd4`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4671bd839a0f80ab4350afd94bcdd4ac5d5b3d60734b11fa2c9c2cc6db217655`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fc78019adb4e0ca36b5dee65a8987179d6b87a5b0fb78853cea55ef39d694b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5b6c193bcca08670fcd975de9650f0b7f7748f9b897ff682df4ddb9f8415f0`

```dockerfile
```

-	Layers:
	-	`sha256:b6dcc2f1a988e0fed721a2ab65954bc10ccfbcdfea75f2365cc172270ddc4a5c`  
		Last Modified: Thu, 05 Nov 2026 18:56:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:7e92ddec8099c5bb0ea110713c31267992a7e7ad2a0f03161c14d41c209787a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10607760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e927f4c6bc87dbb82900311dc3eeddad0235383d9c25ebef16491d0a6f01f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2d67580a5b190e859017e474f954fe05e3aba588d7e45746a84d60a62cd6b8`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 7.1 MB (7105258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2872dcd147e1265d87f37965cf5ec472d4541590daf7ee73e2f68028d5b0fa`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e90b249c484cc4066fcdd691aa7b4ea640845c80d003ed6caccf79a9203c4f7`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b90c92352a64c58676a277b72857aac3e6c11de8f4fe34a33cceaa3fc6d32ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19e400bc96c22904cc7098ac23190a34a3d458f39bb44b0867613a885dfdc079`

```dockerfile
```

-	Layers:
	-	`sha256:1f0236e11fd00cf6192dac9b538ec42a416e18540a7b5bfa78b69f70bc2653f0`  
		Last Modified: Thu, 05 Nov 2026 18:19:24 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:8f82a780a97a229fceba744d494dd74ced0925184df296595f3428a2a4d79ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10308876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd1a49367ddcff8c9203190d28eb7ef3dff038b8008d83d3c24b88096507215f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:19:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c910c6c828f3fce0fcbba38bd31a2c4dbdf67989dbe8d46f9038a5050584a6b0`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 7.1 MB (7092438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87efdb27a786ca4c58b7f81ad15839f70ba0fae456530f328628fb95594953`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b2893063a1030978eacdbd2cd40ab9df1203a0d46ddbc884cbf871f4d71555`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0b92d36da9c5ddda8c8b76a4c75a852d00d43cd98423fbff18578fc0f868bded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4173fa6de7e2fbd5c7f28ea2c614cfd3eccd2126f4ec8e96ff046966604c9e65`

```dockerfile
```

-	Layers:
	-	`sha256:e630926ee0aadd4bcba25a3cc3867f886582cdf544ab3a59d91019e502176920`  
		Last Modified: Thu, 05 Nov 2026 18:19:08 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:5e09808726b0d7500a68b07998e14a5f6d4109956d17ac221d180bc995eef314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10840833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da19f6fde71d29dab4c31de22562bb4eed2d638b78252733555ae7f0d227597f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:52:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147eda73106e21cb87b0510f89f74111f2c845ae272aa6fe3d09874eff07ef79`  
		Last Modified: Thu, 05 Nov 2026 18:52:22 GMT  
		Size: 6.7 MB (6712481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad2c73ba14b3978cf886b3c0e183faab14f0bc6f66bb586d3d9b1723283a1b7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdbd46d4658fa5af6081a346a879880ec8065d7737d051f1de780c1894f5ff7`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:55d58ccc39cccd95aae8a5899641df8db3ae2868c3f4232923f095569dfee9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78db36b3707d553d5228e482c8705fa237db5585cf036a0890da90b0d91b90b`

```dockerfile
```

-	Layers:
	-	`sha256:116b6967ff6b39b2bd6f37e970935f169509e10e1dcc35fa87cf9fe146dc8ad4`  
		Last Modified: Thu, 05 Nov 2026 18:52:21 GMT  
		Size: 14.3 KB (14306 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:7e8da8f793f5acc565281076d540ba93a1a831db37b69b6ada5a28fb80535c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10510197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d732da709fd85acb2784c278f4b10e0f85d1b9eb34db4c8376db6998a528d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
ENV NATS_SERVER=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Tue, 27 Oct 2026 19:28:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301901c0b9f850d031804387d58e5802ed40ae2d134d4faf2dc0c1176d311c3f`  
		Last Modified: Tue, 27 Oct 2026 19:28:32 GMT  
		Size: 6.8 MB (6783790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a483fa50b174f5a22e91ecc9074dc610fa9d7f2d9976eccfa26ce2751391851b`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d915179dc15c7a1844852bb92aebb7ee42a042ed58dccb9419e809d37477e3e9`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:a2f8a8a2eede8e5b98ea410bd6c4d9fc77bcc18f06d3592ec366cbaffe9ae367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3adc35d5ac4c7c86a433f9aedaf05b9826fdfbba5935a77068a9046657405e`

```dockerfile
```

-	Layers:
	-	`sha256:a5291fd40fe09f44ee75fd30d4eedbf8141968ff82b179c560a2f43890f383de`  
		Last Modified: Tue, 27 Oct 2026 19:28:31 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.9-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:2063b77b8158f3be15a289b4e1bbf41553c413d2797da822450e297b9b3224ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10824982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50cb74d69a7f56425725526c40468d0cad2e884928fd7240959f47cc22e5bc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
ENV NATS_SERVER=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.9
# Thu, 05 Nov 2026 18:17:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e4f437b27c5966f65efdc5c17e5e50a02daea424cd2efc71df2ca514119ee4bc' ;;     armhf) natsArch='arm6'; sha256='f909e0b31875780c8c82841372231bbd8fd064c6085b0dfefec7b31883e9707c' ;;     armv7) natsArch='arm7'; sha256='459a2b21599a02cab61799adb0b950c530bbf81e05a253a42a7f3fa4a0c70ec9' ;;     x86_64) natsArch='amd64'; sha256='74f20433c5b39d7cc6db54155ec1e669671c728f625e54cf307298924b2b4259' ;;     x86) natsArch='386'; sha256='a8777c8673b585760c1e9b431210efe5d45cb21b00eeed93048c54a82cb340ee' ;;     s390x) natsArch='s390x'; sha256='ecfdee73d022cd20361f58fa20913dbb5f743fb42c52cdb60248685917c247f3' ;;     ppc64le) natsArch='ppc64le'; sha256='ba6996ff2b87bf80ea4b2931070cfc2700526170466b8c1ee6446dc377a3e525' ;;     loong64) natsArch='loong64'; sha256='e5522ede01ea910392aa99b549daa43aecb581c4a7dd809cee03b771228d2ecf' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:17:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:17:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:17:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aced84b49bc2db9c143ab78074fff4fc975146094b8adff2d3f91457e5f255c`  
		Last Modified: Thu, 05 Nov 2026 18:17:20 GMT  
		Size: 7.2 MB (7180809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af41c1d0f83e1f636d100ff4e549184d7d87940324d95f3e3ea58e4cd53c6fc5`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b13dc670b84a543704279ec85a6d091eaf341f62947240067735d16b45b1c87`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1c41c7adbad6ae77707ec218ee0a8f7446259d659cd73f1b4e59fc53fdfca5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1eab4a8a84b94ccf4f7ff01ce84e496abbc4ff2dd448b6e4ff66c918df6b4f`

```dockerfile
```

-	Layers:
	-	`sha256:1166f29b24e1689afc37139960a80c4a1bf3a9e477dca3f4cb809d004eb30df0`  
		Last Modified: Thu, 05 Nov 2026 18:17:19 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.9-linux`

```console
$ docker pull nats@sha256:3b57134a9b1e9672038adba17d98ba96f743ab3adb08df0501bd86f236499ee4
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

### `nats:2.14.9-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:edfe36d0f411924217498574b853343aacde06ebb46516bcb9e858d17104eaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6367824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc16e7ee1093aebb4fe8cf874ebc6e0a082aadefb7da05ee67bc7015e1a7d19`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:55 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bc216edebe55496e857994949c9f3da3ee08b9f6b992112d698a6196b06256e3`  
		Last Modified: Mon, 26 Oct 2026 17:00:56 GMT  
		Size: 6.4 MB (6367314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-linux` - unknown; unknown

```console
$ docker pull nats@sha256:bd50742ab4f4dc0eb78ad2a5485f4de7d92895e8284ff756737b5418441bebba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2005e1ff0a576055897dd8e6b4e39fddce651f267ac2fb3701c427b582c35`

```dockerfile
```

-	Layers:
	-	`sha256:40bb8fe928baf749a9d621d48343bcac0a793a6873439f8104626106032b7d1c`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 8.7 KB (8715 bytes)  
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
$ docker pull nats@sha256:3b57134a9b1e9672038adba17d98ba96f743ab3adb08df0501bd86f236499ee4
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

### `nats:2.14.9-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:edfe36d0f411924217498574b853343aacde06ebb46516bcb9e858d17104eaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6367824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc16e7ee1093aebb4fe8cf874ebc6e0a082aadefb7da05ee67bc7015e1a7d19`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:55 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bc216edebe55496e857994949c9f3da3ee08b9f6b992112d698a6196b06256e3`  
		Last Modified: Mon, 26 Oct 2026 17:00:56 GMT  
		Size: 6.4 MB (6367314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.9-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:bd50742ab4f4dc0eb78ad2a5485f4de7d92895e8284ff756737b5418441bebba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2005e1ff0a576055897dd8e6b4e39fddce651f267ac2fb3701c427b582c35`

```dockerfile
```

-	Layers:
	-	`sha256:40bb8fe928baf749a9d621d48343bcac0a793a6873439f8104626106032b7d1c`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 8.7 KB (8715 bytes)  
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
$ docker pull nats@sha256:991242c32d2738ffd358fd6614dd96c735017b4b3b34bfdb2c52a072d66db211
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-alpine3.22`

```console
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-linux`

```console
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:991242c32d2738ffd358fd6614dd96c735017b4b3b34bfdb2c52a072d66db211
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

### `nats:2.15.2` - linux; ppc64le

```console
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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

### `nats:2.15.2-alpine` - linux; amd64

```console
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.2-alpine3.22`

```console
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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

### `nats:2.15.2-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.2-linux`

```console
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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

### `nats:2.15.2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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

### `nats:2.15.2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:15e0c10789cba07289a636efb6906855ff4da7b3ababd87e5b9cb46fdaccb8fb
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
$ docker pull nats@sha256:89c5c61b5969261e05106a98e465ccb85c7f4bf4e94c1e70786c189759d79e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11543969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaf1cb5e75ad9cc23d8833bfc2dbf9a0b763d89d944a253af5f560982c4c6d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:56:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:56:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:56:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:56:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278547e819af5eba5f3087c6e68dd48d3bc0221b7b31df0bd98ef366993cabf1`  
		Last Modified: Thu, 05 Nov 2026 18:56:43 GMT  
		Size: 7.7 MB (7748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd9e4cfb447ee547d5eca07c3362c2c892ec74b52afa8cd466f4ce11d97be09`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2380c5ca2327626ae27b26e6535bdb795606fd96f4b7d4b81983f3a910ae6b28`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c8187bcedd32f23136c7fac564faaf63e763a60a4e6a4c456f32400fbf36478d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64cf706f6c70951bd91806f6f098d6b4c827a2bfcf79b66643d55d0abf133b0c`

```dockerfile
```

-	Layers:
	-	`sha256:41d95bc8b4b21884d7889e131b59dd656756d037e1ad19086a54e1934a2cbbd5`  
		Last Modified: Thu, 05 Nov 2026 18:56:42 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:205da278933ffd535e2e3499be794a80a599a6847a502dbef56e7d12da9f767d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11001726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd8c337c59b9cef05508aebb6fac94e3df4270c984b99decdb44011b9cf042f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:04 GMT
ADD alpine-minirootfs-3.22.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:04 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:19:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:19:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:96eaaef38ddb1a93e79eca26be3ef5d90b755c3c38dedda34d5ad3e46fb46a0e`  
		Last Modified: Thu, 05 Nov 2026 18:01:08 GMT  
		Size: 3.5 MB (3501535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c122c850f49cc9e9a7e26cfbe3d7de30cb1a342f7573cc1afe181dee2e9df3`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 7.5 MB (7499223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a44966c27ff282bf556cd87bc214c9261e20666f81f7fbd3a6ade04bb04f43`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1dc9a87049523265dd83c17bacdc82c7050d04ba65c7cec00d90860d7bace5`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d7f535b03a7136113aef8c8bd27b59ef3c290a2750bb5b0fa38ab38fc983c547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42247081bb74aea8f21ac060f8c0f3a0ea558e40e9d837aa6793c2dc8acf0af4`

```dockerfile
```

-	Layers:
	-	`sha256:7c66a243bd72c94f2bd9ce7601c56ca7b5236bd945e891aa35d2fd514ee4a5be`  
		Last Modified: Thu, 05 Nov 2026 18:19:12 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:ba9006a0a8413a4989a7dbef283debf0fd1bb0833c2da673d5f010bf6aa18135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10703411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc7b8f23fbdaf57319e995461668b666935bc69a6341277d3c4b790b63161ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:32 GMT
ADD alpine-minirootfs-3.22.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:32 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:18:50 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:18:50 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:18:50 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:44a8751e514f2fcb6fe0f5fdecbdf4cdd18e91b3d60788b6589631fbd93720ea`  
		Last Modified: Thu, 05 Nov 2026 18:01:37 GMT  
		Size: 3.2 MB (3215469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df07bf8f7ca5db64d9184a7f11627c9c0c2bec13c35c12014714a0ef89aea1c7`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 7.5 MB (7486974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385905d6ff25d4f7a460df8af5a53e78549c389c0c93aef4dab5031dbc581bc4`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdcc1d96d2dc891b2a34b81412f0959fd8d720cf0eeef35e6de0c3016cb577a`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5f3dd7867d90aa103cfc056ba3b2909c8c34077304857a9a1264fcf36e0d9746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aedbf3fbfc0a84688bfe2baa49956d8398f801d3349116dbb756f381e56fce70`

```dockerfile
```

-	Layers:
	-	`sha256:8f1cef59332b8724a45cd71e510505364d47805852772f3db028e38489fbd9cf`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:20196671f18d72f951ae7c6877cdbad3a6fee55a4b0844b76eb152fa49fbee61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11182175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96d815945a57ca20dae2dbbcbaac196a56ccf1914d9b95595d731f5b475d65c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:52:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:52:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:52:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e17e660534e3ca63b76b524137203098c007d725e60d1f2265f721ded951441e`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 7.1 MB (7053823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50346b9c35fca4a0d7edb441144554706ea0f43be601d2bea86eef8f70e06a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9c2517dcaaf43ad04a2bb57e1bf9f6dab884ada10b01ac210f8fe39cc832a1`  
		Last Modified: Thu, 05 Nov 2026 18:52:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd540ac9f303409e551b1e07fccb3488686ab324a20fd5543703d57a0605da1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d634a274a99a65b2a76fc868ca4212cf7233dd04e877f4aa4bf2d6e37514a2`

```dockerfile
```

-	Layers:
	-	`sha256:5825c5f9a01a421c40ea91537e3074ef1cb06cd2731c6ba23e69a72d9afe8e0a`  
		Last Modified: Thu, 05 Nov 2026 18:52:18 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:9b644653441876a0819a8aec7dd39a2b36f02792669460e557f347cf004679f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10851345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f197776c82a065cdf5e0818cef864c8903db4679cc7da283b720ba0831b39bd2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 19:28:03 GMT
ENV NATS_SERVER=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Tue, 27 Oct 2026 19:28:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Tue, 27 Oct 2026 19:28:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Tue, 27 Oct 2026 19:28:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 19:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:28:04 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b18b25c847fc24f51fadf91d4693851a5391d6c6841b8975a8e43316202d83`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 7.1 MB (7124939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfd66a2f7e16f4074e4bdb788fd0c5f5abdb3e644f17b1ef10c2ecb849beafb`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903903164c4b3a32148b8b0b23587cd80f4df79442e8970b0c58eae101af899d`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:77c2d85714734886ed03e05226ba3a1ac95d58745e1c68ffeb09e075db83f656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896da66121f9f89dc0d31ca0b3dbcc539b80ce4c139f64c4b35de9c05ee7d6b6`

```dockerfile
```

-	Layers:
	-	`sha256:7985c9d5cd20ca73b02223b05100d301be831de9c89d2b2e142aaff5848ac447`  
		Last Modified: Tue, 27 Oct 2026 19:28:11 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:433d6bd1eb645f3c90df9de45091afdc45fd42c68e0107633ae0b41d74ee0f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11186778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704dd01964bbc5af23ad2e4d3a3688251f47650565d133e5ed94d314bd82332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.22.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
ENV NATS_SERVER=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.2
# Thu, 05 Nov 2026 18:16:49 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='bc2c788dcbf2849af749564e06a0d48c19bced851f2d68a2e21c54d078949b28' ;;     armhf) natsArch='arm6'; sha256='ab5a524736eea6a1b03eb6311a176cd3341026210d565328d0479d7ee88cfc68' ;;     armv7) natsArch='arm7'; sha256='1eef4d7dd7f672684f912863c4a86b1a4c52ed8e0ead15ad1f15d054ef2f75d1' ;;     x86_64) natsArch='amd64'; sha256='67cb8e10bc6f0c4b47f75a728529a20953dbae2a4f9a4a52ae8517d65ae303ff' ;;     x86) natsArch='386'; sha256='698dd31da3bcfc24a8021a8791787043425dd82bf83c8b78263d134af7bea388' ;;     s390x) natsArch='s390x'; sha256='c39a78284a5c897ffc5a833e335a67684b292ae9103e910d9f60ca5674856fd1' ;;     ppc64le) natsArch='ppc64le'; sha256='07ca1c55bf5e0ce8ff8d80088779e9049b99a2dfb2dfe0dd4415f34d387a9973' ;;     loong64) natsArch='loong64'; sha256='5937eb155013393e29426fe226bdbaf53a8fe6d1ac02219cd845f0f1dc47a064' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 05 Nov 2026 18:16:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 05 Nov 2026 18:16:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:16:49 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:c84c2ab7c30114184ee4ea1d0a864e8d10523809ecaa3930849515cba09c2490`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.6 MB (3643205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38f97790eb2e376cb2b2bf41344e5e48968a9aff8ad01c91af94307feb37e42`  
		Last Modified: Thu, 05 Nov 2026 18:16:58 GMT  
		Size: 7.5 MB (7542604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee79203b72080cac05d8bfe93d14650aa9f7e6fc24b864c6d101817309788a62`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613a76bdffadea2f0e5fd82145523bea4f32e04954357b4e2cc1d903d0e5404c`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:8f5e7085be204073d7639c3b1958feec99bbce3bf1c16ee9193bedfdc2309ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f552b396da76b829250f24580a8381a8b55069ebb5213735ef0ab5af2d15a6`

```dockerfile
```

-	Layers:
	-	`sha256:81c7fcdad54c2e00eb8ceb690542439324ef1b6976778ce1a217c1b341b2c7fd`  
		Last Modified: Thu, 05 Nov 2026 18:16:57 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:991242c32d2738ffd358fd6614dd96c735017b4b3b34bfdb2c52a072d66db211
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
$ docker pull nats@sha256:fa66a072dc5dc67213f5d3e9b9efbf5b6de73798f8b2f1965727c1bbdf588ff9
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
$ docker pull nats@sha256:86240cd61460f3b0d214d5d2e6cd3944d57580594b4d55542a59a9d01f4f62ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d761077982b2a45e9c5ba52ad237b72780a0fcbe1a8c6ca12cfb4c3d7778fc`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 27 Oct 2026 22:17:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Tue, 27 Oct 2026 22:17:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Tue, 27 Oct 2026 22:17:54 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Tue, 27 Oct 2026 22:17:54 GMT
ENTRYPOINT ["/nats-server"]
# Tue, 27 Oct 2026 22:17:54 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:06333a248f6e021e93922aa4c37bbf90b2a835596acb8dc475104c30d731092c`  
		Last Modified: Mon, 26 Oct 2026 17:00:50 GMT  
		Size: 6.7 MB (6710481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00f059828567cd6df1c659fca44767f5e16c0d5494fa19b5e311bbbef54f4d9`  
		Last Modified: Tue, 27 Oct 2026 22:18:08 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:40109a80ad385168ca468b9d806a788e72f3902295fb97667da82f8c47545e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f67942595bd51bdee80bd90ec406e0a4703ef56c3c676683a409db9e4b0423c`

```dockerfile
```

-	Layers:
	-	`sha256:466ad22f34ff23f722f47eb724890d03a5c7e3e35726da9c626c44612efb6c3d`  
		Last Modified: Tue, 27 Oct 2026 22:18:09 GMT  
		Size: 10.5 KB (10513 bytes)  
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
