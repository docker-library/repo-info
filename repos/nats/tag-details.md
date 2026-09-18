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
$ docker pull nats@sha256:cd3fcd4ecdda44e3a66728a5334af0a959bc3979b32810e033d1c547241cd0f4
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:5a1097cd44e281dd4586a65e0060dc98198bdb7654862ac1df3867e40342d499
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
$ docker pull nats@sha256:8d48ab8cd8857a244008a770f847e614f5f5f2e8e94360b8ee0fbdf2be693fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75326c9ff4bf3bd68c4832fa00ef25c29f16e8a3458ab007dccf7d0959174e34`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e267ea113cb7f3ff61993c0526cb62aeca72cbfd16655f5e5f21ad79e83721`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:84050da6cdd32be4e0542fb850be5bfd3bac42aabf93fec3bcca7cb089e6b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f56ba5ba84f3a63c2828cf622d1edd5dc8302d61fdda97b9ce69e0edc4d587`

```dockerfile
```

-	Layers:
	-	`sha256:a0cb4f6b7ebdfb313e65d8cda925de74b69b425d18d57942610f5c22d0477ae4`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:876da8b4885d60c09494f67e8b4e792f1af1b9d6a7721d02a026079ea10f2465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4e5a9cc6dc29f3ce3b9879f23d112f628a2ce1f38acf15b5147631998c8e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:27 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:698ba616a19107ab8870fab3ac16cbdeb51ce1ca399e76ca8205a55627330fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e89906e85aa55018a868728624b87f73660564a0dd21116208f36a6a926b35d`

```dockerfile
```

-	Layers:
	-	`sha256:454d5a835c0c3c07c1d8f5ada8b9f263abca7e8007139828e8ad41ab771e6b54`  
		Last Modified: Thu, 17 Sep 2026 22:31:31 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:cc14215d745e9bf3ce78435aa096522fdc9443556107f54e44f6b834430f422e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2a69b90cff53d4548e78dbed597af398d4283e3b4579fb4a295c56b45bd9e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:43 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:43 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bcaea29e73a8521f3eb102817ae66ea46fc412939a8f54938ac1cd1fa6c932`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:6dbe8f95ab43dd3a22e10d9e264d9470335e31662e68027f920d7d8c3e188905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32539d82b769189826f022308e00134ce7d7755a352f932699058ae2e791c089`

```dockerfile
```

-	Layers:
	-	`sha256:3baf575cea9f4936756545ef6c3a93beb9e13360e697a2196ddc478f8b0a90f1`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 8.7 KB (8742 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:369a7f6a9f4b3373bf7245ba0d822dd05a132af86db174ee617196c6ff684c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8057ff0b507ce9df1c0e85889b0bf65ec6993aa1bfe4c9bcc26e99e0c9a831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:22 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bbc6c12caa5b113095c5c64f24c9bab3d02cf61ec70a156c830f6c9c51d533`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:52a15f521f1af171465ae78b192fc476412b723c8c54fb39482044a65e2c5723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330d3661440225977d45be4043cf0ba7f19a5a16caba0eb539a04485f33ca5d0`

```dockerfile
```

-	Layers:
	-	`sha256:5952ef4f786fd70ff1b5da8acd4a88d16693d23e0604343d1360f975753f1722`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 8.8 KB (8773 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:d4cb6ecf6b61d1306a28fcdd06d54c8d5e85007fcf6efbe3701a9fcbc5769005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389a8b4624a8ea3c6035ed24a3b5100cd281d63abb8ac07e601cf010ac49c25e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:36 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7be59dbd9bfec6dd5bea6f38f4410ee99c89ece14d1cef77469ac3f82392f`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:1acb76d0ea55be8ea3b222bbfbc150d15cbe4a7eb0472f337bd8c6fe58da4dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ac2caafd56325f2007774b9d519b32bd3c3cbcd58cf2fe1fc5d1f9918532`

```dockerfile
```

-	Layers:
	-	`sha256:cb21ddfab0be8a3c28625fb79b349165d88d183653d4f8a2fbd04a39619cde44`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:91a8b28bc650c5507a799f0707fff2440fd3975a3664cab388476026e298cdd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6738059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe77fb8903aee8770ba6333e429da2816570ef04c57ad5d91d4657f1b3acae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:21 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a05abdd14deac662702670bb393816235bc72755830f7bfd6e3fd8d5cf8dc667`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6737550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d792f0bba2aadf6a862eac3c131954ac9e60976dab28a1ee5cb931cedaacbd32`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:34b77beb88498b88f771c9a2360742e018939a9c7d720081406bdabbd9b391b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0426c3aeeb554ba54ce751f0c0298fab3703fa9fcef53343a8a08e5fa44de218`

```dockerfile
```

-	Layers:
	-	`sha256:954ef8a1c0df2464240608e4d79baae482d4458581a9d650ddfc6325ac58be0c`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 8.7 KB (8661 bytes)  
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
$ docker pull nats@sha256:4063edae0717ba5f7501bfde75f97fd9b57f5b93597b92c70b6a6fbbf6a74e06
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
$ docker pull nats@sha256:b2301863d84fda2cf8260d308203708f5231b2db34d821cc518d5c4c3c79780a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11134934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93684ba80b09bff1213cfddd3dc9a71d75292261991f44bd8759b87f6a391787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a55ae9333b779b5fd7f855ae9cfc97f2d16cfb3fdbff00067b6f454a2b6ac3a`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 7.3 MB (7341889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3104867fb6093de7749039ad0ea1191bf0886827ef927bc603db60474b981cf6`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfe9ebb9be6b7643c1bbec85753267696cdbb26d619e30bd9c9123248321a82`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:01256327eb88c75c0d4cdff160878373d48ffb7f45dd53416cf550bf52238732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a2c8df9fc9ab2b982e33c79a702f743b1db49013759726e6d412d5dbd06a7e`

```dockerfile
```

-	Layers:
	-	`sha256:4833e30c2391626d3c63248b9aca098ccb832d093128dd92c7ace38a5120a595`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:0bc6dbcb1ff4e6f158d420782a459d570f33f951b0ae919b93b5bbb9111e6421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10581361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838f480f1b970c20bcb84e67c9a0a5a594065cfa0f797dd36098c6a9ed36e66d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29bdf87b045bd221f12bdaf9a6b8623d8e3f51364183b3a7fb5592889b9e898f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 7.1 MB (7081909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1c5f82cd106e36020639a424bda4423fd738f4039d361598c62d4d4d88a4a7`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e8da1aef3d6ab0afa0c87c6160c4320e2e0c0e90a9e9950cae8c1e83cb2e20`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c38fe265da263b1303f3e3e7c7a682a4b2c30d453ea28e9aa6bac47225b40fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5130f26d00c0d6a7978f71837e8c696a39187c1565ea0349910c93610c059786`

```dockerfile
```

-	Layers:
	-	`sha256:a1f82ee3e683fcbd66a58a16f615e0b7bd0bc59d65887951694f1284718b5f5f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:256fd1357c5498907ce43247113fa59846fcce1cae9edebf5142c9e4a40740e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10284466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3751424e6798a835d0b4b7c8ef89cdfff43b4e3f4290ef90e9e631eb1d43d5eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977cad016aca801c9fc2c073debf87b4398f6b87eb2b5e82ab0955fbaeabee6`  
		Last Modified: Thu, 17 Sep 2026 21:20:08 GMT  
		Size: 7.1 MB (7071287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac27eefa620ce7ed39de41ba4f360ba6e49f9be11725ab7f8bfe6ef8dd97a7dd`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e64e085938e4f9808d845f164d15b70b92f47f1a3ec3bde7efacfdd1d75280a`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9ca5fbc398f4fe3568d7f893ea421d0e9ba5c05c07f96dcde1a83d9d05fced00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff69044c7bf6fd27f7fd75b3f7bcfa1a117b5447c18dbb174284020907403bc`

```dockerfile
```

-	Layers:
	-	`sha256:242a2e5d744a616ceeb9fb13b567b34482b7af8c7f1934630523f4c8a3bed393`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7db8dc39d5dc71ceb3718b705cd8e176bac506b82c24411e6825a809b02e15f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc4b680f6b2e39dae10284b6a5d2bf10ffc8db2d1505c5a67614a08036d6974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d4561b4674eb9f6f80f1f9e78ecf0c9d9f531de0cb68e1f8f3f78959cdec6f`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 6.7 MB (6690614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b633276e7f09b34c7f54244dd9e9014856951e36cea732f235df1e9dafb4b4b`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f35459f0940c2e59f1e433552cd2a18756547e5486319e764859ece8023721`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0ffefb37d2c84a8125374cee5dffc10f0bdd31c1641b1a4e0b4659a2cd2d4df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce3aa0731bc288a24f1e763e64f8ecbe4d9c1ed92daf88dbbad5f667812c087`

```dockerfile
```

-	Layers:
	-	`sha256:5a3fd01b466f046daad26c1f9aeaa790a2033b63c43efb10cace94ef550506c3`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:29e838b8e3f4031280610bd0ec53a9963a4deffef56a88c1e73abfd0b8b7da44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10478845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67bb25f9ec2df8349b86b99820089309225a233b099f1f9dcdf8b204d0b37ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:47 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:47 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:48 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ed7096123a09fdcc32d1ed384d20d90efb89dcafe0200fd156aa61d61d748d`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 6.8 MB (6755123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1841066bbd1db76ca3fb8912b113dcff589d288ac79c86314c71617d8b9e9d7b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf9b42cfafb5863a81aff9692955dec4e5b0d09039701403e4fb72cc17f4b68`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7535a1294aa9946c6ddd8caf9efa7e8cd9a2cc90e4d84a38d10423119a9271ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75e3f0d02f3af4bff77b1a881e7c041c5727c5db5c1f75ab44347733496f1d`

```dockerfile
```

-	Layers:
	-	`sha256:21494cfcb83a20ccb3caf01d2c6ab60f3d7a154f2ccbbe0f1835e3950e316c0b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:f26fd9396e8affd9b873a4674e040ac248e479e857ad08977d33d8bb7d32ec4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3213ff02dbad84938b7c5fd42b84748c6f40f808d9f38c7fd42f09cca7b864bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768914fc73fd3d1417bf0a56c55d57bb66329bd726f158da35d412c8093647eb`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 7.2 MB (7155245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa306dfd8084ef4d03131192cdc1dc09d2257b070bdec6d7bc47959326aeaff`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e413a1b561122b51a281f1f1f59327480d8caa2bee284152d55aacef6218408`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:21c3f6bd936e1a34fb97b42937236206c6eca20187c971449cb3a8a80d8478f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dea9c7359ffd8b4df9c391029dc0802250ef697dd6b7e412530e4704bf5e83`

```dockerfile
```

-	Layers:
	-	`sha256:c70333cc479f717d398d48cb62dd3620555a8aa81806f406916d1d1a282b185b`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:4063edae0717ba5f7501bfde75f97fd9b57f5b93597b92c70b6a6fbbf6a74e06
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
$ docker pull nats@sha256:b2301863d84fda2cf8260d308203708f5231b2db34d821cc518d5c4c3c79780a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11134934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93684ba80b09bff1213cfddd3dc9a71d75292261991f44bd8759b87f6a391787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a55ae9333b779b5fd7f855ae9cfc97f2d16cfb3fdbff00067b6f454a2b6ac3a`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 7.3 MB (7341889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3104867fb6093de7749039ad0ea1191bf0886827ef927bc603db60474b981cf6`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfe9ebb9be6b7643c1bbec85753267696cdbb26d619e30bd9c9123248321a82`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:01256327eb88c75c0d4cdff160878373d48ffb7f45dd53416cf550bf52238732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a2c8df9fc9ab2b982e33c79a702f743b1db49013759726e6d412d5dbd06a7e`

```dockerfile
```

-	Layers:
	-	`sha256:4833e30c2391626d3c63248b9aca098ccb832d093128dd92c7ace38a5120a595`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:0bc6dbcb1ff4e6f158d420782a459d570f33f951b0ae919b93b5bbb9111e6421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10581361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838f480f1b970c20bcb84e67c9a0a5a594065cfa0f797dd36098c6a9ed36e66d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29bdf87b045bd221f12bdaf9a6b8623d8e3f51364183b3a7fb5592889b9e898f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 7.1 MB (7081909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1c5f82cd106e36020639a424bda4423fd738f4039d361598c62d4d4d88a4a7`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e8da1aef3d6ab0afa0c87c6160c4320e2e0c0e90a9e9950cae8c1e83cb2e20`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c38fe265da263b1303f3e3e7c7a682a4b2c30d453ea28e9aa6bac47225b40fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5130f26d00c0d6a7978f71837e8c696a39187c1565ea0349910c93610c059786`

```dockerfile
```

-	Layers:
	-	`sha256:a1f82ee3e683fcbd66a58a16f615e0b7bd0bc59d65887951694f1284718b5f5f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:256fd1357c5498907ce43247113fa59846fcce1cae9edebf5142c9e4a40740e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10284466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3751424e6798a835d0b4b7c8ef89cdfff43b4e3f4290ef90e9e631eb1d43d5eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977cad016aca801c9fc2c073debf87b4398f6b87eb2b5e82ab0955fbaeabee6`  
		Last Modified: Thu, 17 Sep 2026 21:20:08 GMT  
		Size: 7.1 MB (7071287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac27eefa620ce7ed39de41ba4f360ba6e49f9be11725ab7f8bfe6ef8dd97a7dd`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e64e085938e4f9808d845f164d15b70b92f47f1a3ec3bde7efacfdd1d75280a`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9ca5fbc398f4fe3568d7f893ea421d0e9ba5c05c07f96dcde1a83d9d05fced00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff69044c7bf6fd27f7fd75b3f7bcfa1a117b5447c18dbb174284020907403bc`

```dockerfile
```

-	Layers:
	-	`sha256:242a2e5d744a616ceeb9fb13b567b34482b7af8c7f1934630523f4c8a3bed393`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7db8dc39d5dc71ceb3718b705cd8e176bac506b82c24411e6825a809b02e15f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc4b680f6b2e39dae10284b6a5d2bf10ffc8db2d1505c5a67614a08036d6974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d4561b4674eb9f6f80f1f9e78ecf0c9d9f531de0cb68e1f8f3f78959cdec6f`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 6.7 MB (6690614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b633276e7f09b34c7f54244dd9e9014856951e36cea732f235df1e9dafb4b4b`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f35459f0940c2e59f1e433552cd2a18756547e5486319e764859ece8023721`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0ffefb37d2c84a8125374cee5dffc10f0bdd31c1641b1a4e0b4659a2cd2d4df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce3aa0731bc288a24f1e763e64f8ecbe4d9c1ed92daf88dbbad5f667812c087`

```dockerfile
```

-	Layers:
	-	`sha256:5a3fd01b466f046daad26c1f9aeaa790a2033b63c43efb10cace94ef550506c3`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:29e838b8e3f4031280610bd0ec53a9963a4deffef56a88c1e73abfd0b8b7da44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10478845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67bb25f9ec2df8349b86b99820089309225a233b099f1f9dcdf8b204d0b37ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:47 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:47 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:48 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ed7096123a09fdcc32d1ed384d20d90efb89dcafe0200fd156aa61d61d748d`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 6.8 MB (6755123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1841066bbd1db76ca3fb8912b113dcff589d288ac79c86314c71617d8b9e9d7b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf9b42cfafb5863a81aff9692955dec4e5b0d09039701403e4fb72cc17f4b68`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7535a1294aa9946c6ddd8caf9efa7e8cd9a2cc90e4d84a38d10423119a9271ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75e3f0d02f3af4bff77b1a881e7c041c5727c5db5c1f75ab44347733496f1d`

```dockerfile
```

-	Layers:
	-	`sha256:21494cfcb83a20ccb3caf01d2c6ab60f3d7a154f2ccbbe0f1835e3950e316c0b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:f26fd9396e8affd9b873a4674e040ac248e479e857ad08977d33d8bb7d32ec4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3213ff02dbad84938b7c5fd42b84748c6f40f808d9f38c7fd42f09cca7b864bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768914fc73fd3d1417bf0a56c55d57bb66329bd726f158da35d412c8093647eb`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 7.2 MB (7155245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa306dfd8084ef4d03131192cdc1dc09d2257b070bdec6d7bc47959326aeaff`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e413a1b561122b51a281f1f1f59327480d8caa2bee284152d55aacef6218408`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:21c3f6bd936e1a34fb97b42937236206c6eca20187c971449cb3a8a80d8478f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dea9c7359ffd8b4df9c391029dc0802250ef697dd6b7e412530e4704bf5e83`

```dockerfile
```

-	Layers:
	-	`sha256:c70333cc479f717d398d48cb62dd3620555a8aa81806f406916d1d1a282b185b`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:0a79eb414d66c1b3985e3e98d531f20c597f3219b831942d776912fc4ed6d212
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
$ docker pull nats@sha256:8d48ab8cd8857a244008a770f847e614f5f5f2e8e94360b8ee0fbdf2be693fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75326c9ff4bf3bd68c4832fa00ef25c29f16e8a3458ab007dccf7d0959174e34`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e267ea113cb7f3ff61993c0526cb62aeca72cbfd16655f5e5f21ad79e83721`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:84050da6cdd32be4e0542fb850be5bfd3bac42aabf93fec3bcca7cb089e6b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f56ba5ba84f3a63c2828cf622d1edd5dc8302d61fdda97b9ce69e0edc4d587`

```dockerfile
```

-	Layers:
	-	`sha256:a0cb4f6b7ebdfb313e65d8cda925de74b69b425d18d57942610f5c22d0477ae4`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:876da8b4885d60c09494f67e8b4e792f1af1b9d6a7721d02a026079ea10f2465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4e5a9cc6dc29f3ce3b9879f23d112f628a2ce1f38acf15b5147631998c8e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:27 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:698ba616a19107ab8870fab3ac16cbdeb51ce1ca399e76ca8205a55627330fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e89906e85aa55018a868728624b87f73660564a0dd21116208f36a6a926b35d`

```dockerfile
```

-	Layers:
	-	`sha256:454d5a835c0c3c07c1d8f5ada8b9f263abca7e8007139828e8ad41ab771e6b54`  
		Last Modified: Thu, 17 Sep 2026 22:31:31 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:cc14215d745e9bf3ce78435aa096522fdc9443556107f54e44f6b834430f422e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2a69b90cff53d4548e78dbed597af398d4283e3b4579fb4a295c56b45bd9e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:43 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:43 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bcaea29e73a8521f3eb102817ae66ea46fc412939a8f54938ac1cd1fa6c932`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6dbe8f95ab43dd3a22e10d9e264d9470335e31662e68027f920d7d8c3e188905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32539d82b769189826f022308e00134ce7d7755a352f932699058ae2e791c089`

```dockerfile
```

-	Layers:
	-	`sha256:3baf575cea9f4936756545ef6c3a93beb9e13360e697a2196ddc478f8b0a90f1`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 8.7 KB (8742 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:369a7f6a9f4b3373bf7245ba0d822dd05a132af86db174ee617196c6ff684c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8057ff0b507ce9df1c0e85889b0bf65ec6993aa1bfe4c9bcc26e99e0c9a831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:22 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bbc6c12caa5b113095c5c64f24c9bab3d02cf61ec70a156c830f6c9c51d533`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:52a15f521f1af171465ae78b192fc476412b723c8c54fb39482044a65e2c5723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330d3661440225977d45be4043cf0ba7f19a5a16caba0eb539a04485f33ca5d0`

```dockerfile
```

-	Layers:
	-	`sha256:5952ef4f786fd70ff1b5da8acd4a88d16693d23e0604343d1360f975753f1722`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 8.8 KB (8773 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:d4cb6ecf6b61d1306a28fcdd06d54c8d5e85007fcf6efbe3701a9fcbc5769005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389a8b4624a8ea3c6035ed24a3b5100cd281d63abb8ac07e601cf010ac49c25e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:36 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7be59dbd9bfec6dd5bea6f38f4410ee99c89ece14d1cef77469ac3f82392f`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1acb76d0ea55be8ea3b222bbfbc150d15cbe4a7eb0472f337bd8c6fe58da4dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ac2caafd56325f2007774b9d519b32bd3c3cbcd58cf2fe1fc5d1f9918532`

```dockerfile
```

-	Layers:
	-	`sha256:cb21ddfab0be8a3c28625fb79b349165d88d183653d4f8a2fbd04a39619cde44`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:91a8b28bc650c5507a799f0707fff2440fd3975a3664cab388476026e298cdd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6738059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe77fb8903aee8770ba6333e429da2816570ef04c57ad5d91d4657f1b3acae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:21 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a05abdd14deac662702670bb393816235bc72755830f7bfd6e3fd8d5cf8dc667`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6737550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d792f0bba2aadf6a862eac3c131954ac9e60976dab28a1ee5cb931cedaacbd32`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:34b77beb88498b88f771c9a2360742e018939a9c7d720081406bdabbd9b391b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0426c3aeeb554ba54ce751f0c0298fab3703fa9fcef53343a8a08e5fa44de218`

```dockerfile
```

-	Layers:
	-	`sha256:954ef8a1c0df2464240608e4d79baae482d4458581a9d650ddfc6325ac58be0c`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 8.7 KB (8661 bytes)  
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
$ docker pull nats@sha256:0a79eb414d66c1b3985e3e98d531f20c597f3219b831942d776912fc4ed6d212
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
$ docker pull nats@sha256:8d48ab8cd8857a244008a770f847e614f5f5f2e8e94360b8ee0fbdf2be693fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75326c9ff4bf3bd68c4832fa00ef25c29f16e8a3458ab007dccf7d0959174e34`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e267ea113cb7f3ff61993c0526cb62aeca72cbfd16655f5e5f21ad79e83721`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:84050da6cdd32be4e0542fb850be5bfd3bac42aabf93fec3bcca7cb089e6b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f56ba5ba84f3a63c2828cf622d1edd5dc8302d61fdda97b9ce69e0edc4d587`

```dockerfile
```

-	Layers:
	-	`sha256:a0cb4f6b7ebdfb313e65d8cda925de74b69b425d18d57942610f5c22d0477ae4`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:876da8b4885d60c09494f67e8b4e792f1af1b9d6a7721d02a026079ea10f2465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4e5a9cc6dc29f3ce3b9879f23d112f628a2ce1f38acf15b5147631998c8e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:27 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:698ba616a19107ab8870fab3ac16cbdeb51ce1ca399e76ca8205a55627330fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e89906e85aa55018a868728624b87f73660564a0dd21116208f36a6a926b35d`

```dockerfile
```

-	Layers:
	-	`sha256:454d5a835c0c3c07c1d8f5ada8b9f263abca7e8007139828e8ad41ab771e6b54`  
		Last Modified: Thu, 17 Sep 2026 22:31:31 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:cc14215d745e9bf3ce78435aa096522fdc9443556107f54e44f6b834430f422e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2a69b90cff53d4548e78dbed597af398d4283e3b4579fb4a295c56b45bd9e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:43 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:43 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bcaea29e73a8521f3eb102817ae66ea46fc412939a8f54938ac1cd1fa6c932`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6dbe8f95ab43dd3a22e10d9e264d9470335e31662e68027f920d7d8c3e188905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32539d82b769189826f022308e00134ce7d7755a352f932699058ae2e791c089`

```dockerfile
```

-	Layers:
	-	`sha256:3baf575cea9f4936756545ef6c3a93beb9e13360e697a2196ddc478f8b0a90f1`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 8.7 KB (8742 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:369a7f6a9f4b3373bf7245ba0d822dd05a132af86db174ee617196c6ff684c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8057ff0b507ce9df1c0e85889b0bf65ec6993aa1bfe4c9bcc26e99e0c9a831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:22 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bbc6c12caa5b113095c5c64f24c9bab3d02cf61ec70a156c830f6c9c51d533`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:52a15f521f1af171465ae78b192fc476412b723c8c54fb39482044a65e2c5723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330d3661440225977d45be4043cf0ba7f19a5a16caba0eb539a04485f33ca5d0`

```dockerfile
```

-	Layers:
	-	`sha256:5952ef4f786fd70ff1b5da8acd4a88d16693d23e0604343d1360f975753f1722`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 8.8 KB (8773 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:d4cb6ecf6b61d1306a28fcdd06d54c8d5e85007fcf6efbe3701a9fcbc5769005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389a8b4624a8ea3c6035ed24a3b5100cd281d63abb8ac07e601cf010ac49c25e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:36 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7be59dbd9bfec6dd5bea6f38f4410ee99c89ece14d1cef77469ac3f82392f`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1acb76d0ea55be8ea3b222bbfbc150d15cbe4a7eb0472f337bd8c6fe58da4dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ac2caafd56325f2007774b9d519b32bd3c3cbcd58cf2fe1fc5d1f9918532`

```dockerfile
```

-	Layers:
	-	`sha256:cb21ddfab0be8a3c28625fb79b349165d88d183653d4f8a2fbd04a39619cde44`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:91a8b28bc650c5507a799f0707fff2440fd3975a3664cab388476026e298cdd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6738059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe77fb8903aee8770ba6333e429da2816570ef04c57ad5d91d4657f1b3acae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:21 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a05abdd14deac662702670bb393816235bc72755830f7bfd6e3fd8d5cf8dc667`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6737550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d792f0bba2aadf6a862eac3c131954ac9e60976dab28a1ee5cb931cedaacbd32`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:34b77beb88498b88f771c9a2360742e018939a9c7d720081406bdabbd9b391b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0426c3aeeb554ba54ce751f0c0298fab3703fa9fcef53343a8a08e5fa44de218`

```dockerfile
```

-	Layers:
	-	`sha256:954ef8a1c0df2464240608e4d79baae482d4458581a9d650ddfc6325ac58be0c`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 8.7 KB (8661 bytes)  
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
$ docker pull nats@sha256:5a1097cd44e281dd4586a65e0060dc98198bdb7654862ac1df3867e40342d499
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

### `nats:2.14.7` - linux; amd64

```console
$ docker pull nats@sha256:8d48ab8cd8857a244008a770f847e614f5f5f2e8e94360b8ee0fbdf2be693fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75326c9ff4bf3bd68c4832fa00ef25c29f16e8a3458ab007dccf7d0959174e34`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e267ea113cb7f3ff61993c0526cb62aeca72cbfd16655f5e5f21ad79e83721`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:84050da6cdd32be4e0542fb850be5bfd3bac42aabf93fec3bcca7cb089e6b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f56ba5ba84f3a63c2828cf622d1edd5dc8302d61fdda97b9ce69e0edc4d587`

```dockerfile
```

-	Layers:
	-	`sha256:a0cb4f6b7ebdfb313e65d8cda925de74b69b425d18d57942610f5c22d0477ae4`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; arm variant v6

```console
$ docker pull nats@sha256:876da8b4885d60c09494f67e8b4e792f1af1b9d6a7721d02a026079ea10f2465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4e5a9cc6dc29f3ce3b9879f23d112f628a2ce1f38acf15b5147631998c8e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:27 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:698ba616a19107ab8870fab3ac16cbdeb51ce1ca399e76ca8205a55627330fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e89906e85aa55018a868728624b87f73660564a0dd21116208f36a6a926b35d`

```dockerfile
```

-	Layers:
	-	`sha256:454d5a835c0c3c07c1d8f5ada8b9f263abca7e8007139828e8ad41ab771e6b54`  
		Last Modified: Thu, 17 Sep 2026 22:31:31 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; arm variant v7

```console
$ docker pull nats@sha256:cc14215d745e9bf3ce78435aa096522fdc9443556107f54e44f6b834430f422e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2a69b90cff53d4548e78dbed597af398d4283e3b4579fb4a295c56b45bd9e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:43 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:43 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bcaea29e73a8521f3eb102817ae66ea46fc412939a8f54938ac1cd1fa6c932`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:6dbe8f95ab43dd3a22e10d9e264d9470335e31662e68027f920d7d8c3e188905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32539d82b769189826f022308e00134ce7d7755a352f932699058ae2e791c089`

```dockerfile
```

-	Layers:
	-	`sha256:3baf575cea9f4936756545ef6c3a93beb9e13360e697a2196ddc478f8b0a90f1`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 8.7 KB (8742 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:369a7f6a9f4b3373bf7245ba0d822dd05a132af86db174ee617196c6ff684c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8057ff0b507ce9df1c0e85889b0bf65ec6993aa1bfe4c9bcc26e99e0c9a831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:22 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bbc6c12caa5b113095c5c64f24c9bab3d02cf61ec70a156c830f6c9c51d533`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:52a15f521f1af171465ae78b192fc476412b723c8c54fb39482044a65e2c5723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330d3661440225977d45be4043cf0ba7f19a5a16caba0eb539a04485f33ca5d0`

```dockerfile
```

-	Layers:
	-	`sha256:5952ef4f786fd70ff1b5da8acd4a88d16693d23e0604343d1360f975753f1722`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 8.8 KB (8773 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; ppc64le

```console
$ docker pull nats@sha256:d4cb6ecf6b61d1306a28fcdd06d54c8d5e85007fcf6efbe3701a9fcbc5769005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389a8b4624a8ea3c6035ed24a3b5100cd281d63abb8ac07e601cf010ac49c25e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:36 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7be59dbd9bfec6dd5bea6f38f4410ee99c89ece14d1cef77469ac3f82392f`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:1acb76d0ea55be8ea3b222bbfbc150d15cbe4a7eb0472f337bd8c6fe58da4dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ac2caafd56325f2007774b9d519b32bd3c3cbcd58cf2fe1fc5d1f9918532`

```dockerfile
```

-	Layers:
	-	`sha256:cb21ddfab0be8a3c28625fb79b349165d88d183653d4f8a2fbd04a39619cde44`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7` - linux; s390x

```console
$ docker pull nats@sha256:91a8b28bc650c5507a799f0707fff2440fd3975a3664cab388476026e298cdd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6738059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe77fb8903aee8770ba6333e429da2816570ef04c57ad5d91d4657f1b3acae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:21 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a05abdd14deac662702670bb393816235bc72755830f7bfd6e3fd8d5cf8dc667`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6737550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d792f0bba2aadf6a862eac3c131954ac9e60976dab28a1ee5cb931cedaacbd32`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7` - unknown; unknown

```console
$ docker pull nats@sha256:34b77beb88498b88f771c9a2360742e018939a9c7d720081406bdabbd9b391b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0426c3aeeb554ba54ce751f0c0298fab3703fa9fcef53343a8a08e5fa44de218`

```dockerfile
```

-	Layers:
	-	`sha256:954ef8a1c0df2464240608e4d79baae482d4458581a9d650ddfc6325ac58be0c`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 8.7 KB (8661 bytes)  
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
$ docker pull nats@sha256:4063edae0717ba5f7501bfde75f97fd9b57f5b93597b92c70b6a6fbbf6a74e06
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

### `nats:2.14.7-alpine` - linux; amd64

```console
$ docker pull nats@sha256:b2301863d84fda2cf8260d308203708f5231b2db34d821cc518d5c4c3c79780a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11134934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93684ba80b09bff1213cfddd3dc9a71d75292261991f44bd8759b87f6a391787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a55ae9333b779b5fd7f855ae9cfc97f2d16cfb3fdbff00067b6f454a2b6ac3a`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 7.3 MB (7341889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3104867fb6093de7749039ad0ea1191bf0886827ef927bc603db60474b981cf6`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfe9ebb9be6b7643c1bbec85753267696cdbb26d619e30bd9c9123248321a82`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:01256327eb88c75c0d4cdff160878373d48ffb7f45dd53416cf550bf52238732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a2c8df9fc9ab2b982e33c79a702f743b1db49013759726e6d412d5dbd06a7e`

```dockerfile
```

-	Layers:
	-	`sha256:4833e30c2391626d3c63248b9aca098ccb832d093128dd92c7ace38a5120a595`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:0bc6dbcb1ff4e6f158d420782a459d570f33f951b0ae919b93b5bbb9111e6421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10581361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838f480f1b970c20bcb84e67c9a0a5a594065cfa0f797dd36098c6a9ed36e66d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29bdf87b045bd221f12bdaf9a6b8623d8e3f51364183b3a7fb5592889b9e898f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 7.1 MB (7081909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1c5f82cd106e36020639a424bda4423fd738f4039d361598c62d4d4d88a4a7`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e8da1aef3d6ab0afa0c87c6160c4320e2e0c0e90a9e9950cae8c1e83cb2e20`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c38fe265da263b1303f3e3e7c7a682a4b2c30d453ea28e9aa6bac47225b40fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5130f26d00c0d6a7978f71837e8c696a39187c1565ea0349910c93610c059786`

```dockerfile
```

-	Layers:
	-	`sha256:a1f82ee3e683fcbd66a58a16f615e0b7bd0bc59d65887951694f1284718b5f5f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:256fd1357c5498907ce43247113fa59846fcce1cae9edebf5142c9e4a40740e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10284466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3751424e6798a835d0b4b7c8ef89cdfff43b4e3f4290ef90e9e631eb1d43d5eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977cad016aca801c9fc2c073debf87b4398f6b87eb2b5e82ab0955fbaeabee6`  
		Last Modified: Thu, 17 Sep 2026 21:20:08 GMT  
		Size: 7.1 MB (7071287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac27eefa620ce7ed39de41ba4f360ba6e49f9be11725ab7f8bfe6ef8dd97a7dd`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e64e085938e4f9808d845f164d15b70b92f47f1a3ec3bde7efacfdd1d75280a`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9ca5fbc398f4fe3568d7f893ea421d0e9ba5c05c07f96dcde1a83d9d05fced00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff69044c7bf6fd27f7fd75b3f7bcfa1a117b5447c18dbb174284020907403bc`

```dockerfile
```

-	Layers:
	-	`sha256:242a2e5d744a616ceeb9fb13b567b34482b7af8c7f1934630523f4c8a3bed393`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7db8dc39d5dc71ceb3718b705cd8e176bac506b82c24411e6825a809b02e15f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc4b680f6b2e39dae10284b6a5d2bf10ffc8db2d1505c5a67614a08036d6974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d4561b4674eb9f6f80f1f9e78ecf0c9d9f531de0cb68e1f8f3f78959cdec6f`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 6.7 MB (6690614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b633276e7f09b34c7f54244dd9e9014856951e36cea732f235df1e9dafb4b4b`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f35459f0940c2e59f1e433552cd2a18756547e5486319e764859ece8023721`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0ffefb37d2c84a8125374cee5dffc10f0bdd31c1641b1a4e0b4659a2cd2d4df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce3aa0731bc288a24f1e763e64f8ecbe4d9c1ed92daf88dbbad5f667812c087`

```dockerfile
```

-	Layers:
	-	`sha256:5a3fd01b466f046daad26c1f9aeaa790a2033b63c43efb10cace94ef550506c3`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:29e838b8e3f4031280610bd0ec53a9963a4deffef56a88c1e73abfd0b8b7da44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10478845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67bb25f9ec2df8349b86b99820089309225a233b099f1f9dcdf8b204d0b37ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:47 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:47 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:48 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ed7096123a09fdcc32d1ed384d20d90efb89dcafe0200fd156aa61d61d748d`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 6.8 MB (6755123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1841066bbd1db76ca3fb8912b113dcff589d288ac79c86314c71617d8b9e9d7b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf9b42cfafb5863a81aff9692955dec4e5b0d09039701403e4fb72cc17f4b68`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7535a1294aa9946c6ddd8caf9efa7e8cd9a2cc90e4d84a38d10423119a9271ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75e3f0d02f3af4bff77b1a881e7c041c5727c5db5c1f75ab44347733496f1d`

```dockerfile
```

-	Layers:
	-	`sha256:21494cfcb83a20ccb3caf01d2c6ab60f3d7a154f2ccbbe0f1835e3950e316c0b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine` - linux; s390x

```console
$ docker pull nats@sha256:f26fd9396e8affd9b873a4674e040ac248e479e857ad08977d33d8bb7d32ec4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3213ff02dbad84938b7c5fd42b84748c6f40f808d9f38c7fd42f09cca7b864bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768914fc73fd3d1417bf0a56c55d57bb66329bd726f158da35d412c8093647eb`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 7.2 MB (7155245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa306dfd8084ef4d03131192cdc1dc09d2257b070bdec6d7bc47959326aeaff`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e413a1b561122b51a281f1f1f59327480d8caa2bee284152d55aacef6218408`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:21c3f6bd936e1a34fb97b42937236206c6eca20187c971449cb3a8a80d8478f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dea9c7359ffd8b4df9c391029dc0802250ef697dd6b7e412530e4704bf5e83`

```dockerfile
```

-	Layers:
	-	`sha256:c70333cc479f717d398d48cb62dd3620555a8aa81806f406916d1d1a282b185b`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.7-alpine3.22`

```console
$ docker pull nats@sha256:4063edae0717ba5f7501bfde75f97fd9b57f5b93597b92c70b6a6fbbf6a74e06
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

### `nats:2.14.7-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:b2301863d84fda2cf8260d308203708f5231b2db34d821cc518d5c4c3c79780a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11134934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93684ba80b09bff1213cfddd3dc9a71d75292261991f44bd8759b87f6a391787`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a55ae9333b779b5fd7f855ae9cfc97f2d16cfb3fdbff00067b6f454a2b6ac3a`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 7.3 MB (7341889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3104867fb6093de7749039ad0ea1191bf0886827ef927bc603db60474b981cf6`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfe9ebb9be6b7643c1bbec85753267696cdbb26d619e30bd9c9123248321a82`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:01256327eb88c75c0d4cdff160878373d48ffb7f45dd53416cf550bf52238732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a2c8df9fc9ab2b982e33c79a702f743b1db49013759726e6d412d5dbd06a7e`

```dockerfile
```

-	Layers:
	-	`sha256:4833e30c2391626d3c63248b9aca098ccb832d093128dd92c7ace38a5120a595`  
		Last Modified: Thu, 17 Sep 2026 21:16:44 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:0bc6dbcb1ff4e6f158d420782a459d570f33f951b0ae919b93b5bbb9111e6421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10581361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838f480f1b970c20bcb84e67c9a0a5a594065cfa0f797dd36098c6a9ed36e66d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:21:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29bdf87b045bd221f12bdaf9a6b8623d8e3f51364183b3a7fb5592889b9e898f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 7.1 MB (7081909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1c5f82cd106e36020639a424bda4423fd738f4039d361598c62d4d4d88a4a7`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e8da1aef3d6ab0afa0c87c6160c4320e2e0c0e90a9e9950cae8c1e83cb2e20`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c38fe265da263b1303f3e3e7c7a682a4b2c30d453ea28e9aa6bac47225b40fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5130f26d00c0d6a7978f71837e8c696a39187c1565ea0349910c93610c059786`

```dockerfile
```

-	Layers:
	-	`sha256:a1f82ee3e683fcbd66a58a16f615e0b7bd0bc59d65887951694f1284718b5f5f`  
		Last Modified: Thu, 17 Sep 2026 21:21:32 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:256fd1357c5498907ce43247113fa59846fcce1cae9edebf5142c9e4a40740e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10284466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3751424e6798a835d0b4b7c8ef89cdfff43b4e3f4290ef90e9e631eb1d43d5eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:20:03 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:20:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:20:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:20:03 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977cad016aca801c9fc2c073debf87b4398f6b87eb2b5e82ab0955fbaeabee6`  
		Last Modified: Thu, 17 Sep 2026 21:20:08 GMT  
		Size: 7.1 MB (7071287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac27eefa620ce7ed39de41ba4f360ba6e49f9be11725ab7f8bfe6ef8dd97a7dd`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e64e085938e4f9808d845f164d15b70b92f47f1a3ec3bde7efacfdd1d75280a`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9ca5fbc398f4fe3568d7f893ea421d0e9ba5c05c07f96dcde1a83d9d05fced00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff69044c7bf6fd27f7fd75b3f7bcfa1a117b5447c18dbb174284020907403bc`

```dockerfile
```

-	Layers:
	-	`sha256:242a2e5d744a616ceeb9fb13b567b34482b7af8c7f1934630523f4c8a3bed393`  
		Last Modified: Thu, 17 Sep 2026 21:20:07 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7db8dc39d5dc71ceb3718b705cd8e176bac506b82c24411e6825a809b02e15f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10814665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc4b680f6b2e39dae10284b6a5d2bf10ffc8db2d1505c5a67614a08036d6974`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:16:07 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:07 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d4561b4674eb9f6f80f1f9e78ecf0c9d9f531de0cb68e1f8f3f78959cdec6f`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 6.7 MB (6690614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b633276e7f09b34c7f54244dd9e9014856951e36cea732f235df1e9dafb4b4b`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f35459f0940c2e59f1e433552cd2a18756547e5486319e764859ece8023721`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0ffefb37d2c84a8125374cee5dffc10f0bdd31c1641b1a4e0b4659a2cd2d4df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce3aa0731bc288a24f1e763e64f8ecbe4d9c1ed92daf88dbbad5f667812c087`

```dockerfile
```

-	Layers:
	-	`sha256:5a3fd01b466f046daad26c1f9aeaa790a2033b63c43efb10cace94ef550506c3`  
		Last Modified: Thu, 17 Sep 2026 21:16:11 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:29e838b8e3f4031280610bd0ec53a9963a4deffef56a88c1e73abfd0b8b7da44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10478845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67bb25f9ec2df8349b86b99820089309225a233b099f1f9dcdf8b204d0b37ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:47 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 21:31:47 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:47 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:48 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ed7096123a09fdcc32d1ed384d20d90efb89dcafe0200fd156aa61d61d748d`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 6.8 MB (6755123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1841066bbd1db76ca3fb8912b113dcff589d288ac79c86314c71617d8b9e9d7b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf9b42cfafb5863a81aff9692955dec4e5b0d09039701403e4fb72cc17f4b68`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7535a1294aa9946c6ddd8caf9efa7e8cd9a2cc90e4d84a38d10423119a9271ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75e3f0d02f3af4bff77b1a881e7c041c5727c5db5c1f75ab44347733496f1d`

```dockerfile
```

-	Layers:
	-	`sha256:21494cfcb83a20ccb3caf01d2c6ab60f3d7a154f2ccbbe0f1835e3950e316c0b`  
		Last Modified: Thu, 17 Sep 2026 21:31:53 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:f26fd9396e8affd9b873a4674e040ac248e479e857ad08977d33d8bb7d32ec4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10796326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3213ff02dbad84938b7c5fd42b84748c6f40f808d9f38c7fd42f09cca7b864bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
ENV NATS_SERVER=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.7
# Thu, 17 Sep 2026 22:25:25 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='50e0258a1b7290f3fe2e4f17506b74a90ffb1dd77867ae3a402eb0c9e2b0d40f' ;;     armhf) natsArch='arm6'; sha256='f50c6351e03c238ea93f5d6c8fcea8c95179c6f8fd67858dc23acdce95b5b131' ;;     armv7) natsArch='arm7'; sha256='820339a81ac3321a47ed1ebd2aabeebfb23544da13d6ec2c5fda115b5af8948d' ;;     x86_64) natsArch='amd64'; sha256='e5c20b1cb2c0566b54c544312e91e011f9e130c5c80f16a14f4cf28ef30b8be2' ;;     x86) natsArch='386'; sha256='7c2b34da982d10fd5c6e51ad38035efe659fb4050b5f0873977297eb0a75a866' ;;     s390x) natsArch='s390x'; sha256='81634eac81dce5ffdcd74d6786f55e97db8af474b1a3c863bdcd2a73ad2e4c16' ;;     ppc64le) natsArch='ppc64le'; sha256='7db5df67900443ee4dc93fb0bb134c68ee7c09501956dbcf12e4e9ec05c32913' ;;     loong64) natsArch='loong64'; sha256='f37e3c23053c52b1295da78e2318aa4dbc83e5fecfb4f3fb1b3cb219b5f0b5af' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:25:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:25:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768914fc73fd3d1417bf0a56c55d57bb66329bd726f158da35d412c8093647eb`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 7.2 MB (7155245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aa306dfd8084ef4d03131192cdc1dc09d2257b070bdec6d7bc47959326aeaff`  
		Last Modified: Thu, 17 Sep 2026 22:25:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e413a1b561122b51a281f1f1f59327480d8caa2bee284152d55aacef6218408`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:21c3f6bd936e1a34fb97b42937236206c6eca20187c971449cb3a8a80d8478f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25dea9c7359ffd8b4df9c391029dc0802250ef697dd6b7e412530e4704bf5e83`

```dockerfile
```

-	Layers:
	-	`sha256:c70333cc479f717d398d48cb62dd3620555a8aa81806f406916d1d1a282b185b`  
		Last Modified: Thu, 17 Sep 2026 22:25:32 GMT  
		Size: 14.2 KB (14203 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.7-linux`

```console
$ docker pull nats@sha256:0a79eb414d66c1b3985e3e98d531f20c597f3219b831942d776912fc4ed6d212
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

### `nats:2.14.7-linux` - linux; amd64

```console
$ docker pull nats@sha256:8d48ab8cd8857a244008a770f847e614f5f5f2e8e94360b8ee0fbdf2be693fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75326c9ff4bf3bd68c4832fa00ef25c29f16e8a3458ab007dccf7d0959174e34`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e267ea113cb7f3ff61993c0526cb62aeca72cbfd16655f5e5f21ad79e83721`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:84050da6cdd32be4e0542fb850be5bfd3bac42aabf93fec3bcca7cb089e6b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f56ba5ba84f3a63c2828cf622d1edd5dc8302d61fdda97b9ce69e0edc4d587`

```dockerfile
```

-	Layers:
	-	`sha256:a0cb4f6b7ebdfb313e65d8cda925de74b69b425d18d57942610f5c22d0477ae4`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:876da8b4885d60c09494f67e8b4e792f1af1b9d6a7721d02a026079ea10f2465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4e5a9cc6dc29f3ce3b9879f23d112f628a2ce1f38acf15b5147631998c8e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:27 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:698ba616a19107ab8870fab3ac16cbdeb51ce1ca399e76ca8205a55627330fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e89906e85aa55018a868728624b87f73660564a0dd21116208f36a6a926b35d`

```dockerfile
```

-	Layers:
	-	`sha256:454d5a835c0c3c07c1d8f5ada8b9f263abca7e8007139828e8ad41ab771e6b54`  
		Last Modified: Thu, 17 Sep 2026 22:31:31 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:cc14215d745e9bf3ce78435aa096522fdc9443556107f54e44f6b834430f422e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2a69b90cff53d4548e78dbed597af398d4283e3b4579fb4a295c56b45bd9e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:43 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:43 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bcaea29e73a8521f3eb102817ae66ea46fc412939a8f54938ac1cd1fa6c932`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6dbe8f95ab43dd3a22e10d9e264d9470335e31662e68027f920d7d8c3e188905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32539d82b769189826f022308e00134ce7d7755a352f932699058ae2e791c089`

```dockerfile
```

-	Layers:
	-	`sha256:3baf575cea9f4936756545ef6c3a93beb9e13360e697a2196ddc478f8b0a90f1`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 8.7 KB (8742 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:369a7f6a9f4b3373bf7245ba0d822dd05a132af86db174ee617196c6ff684c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8057ff0b507ce9df1c0e85889b0bf65ec6993aa1bfe4c9bcc26e99e0c9a831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:22 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bbc6c12caa5b113095c5c64f24c9bab3d02cf61ec70a156c830f6c9c51d533`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:52a15f521f1af171465ae78b192fc476412b723c8c54fb39482044a65e2c5723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330d3661440225977d45be4043cf0ba7f19a5a16caba0eb539a04485f33ca5d0`

```dockerfile
```

-	Layers:
	-	`sha256:5952ef4f786fd70ff1b5da8acd4a88d16693d23e0604343d1360f975753f1722`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 8.8 KB (8773 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:d4cb6ecf6b61d1306a28fcdd06d54c8d5e85007fcf6efbe3701a9fcbc5769005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389a8b4624a8ea3c6035ed24a3b5100cd281d63abb8ac07e601cf010ac49c25e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:36 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7be59dbd9bfec6dd5bea6f38f4410ee99c89ece14d1cef77469ac3f82392f`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1acb76d0ea55be8ea3b222bbfbc150d15cbe4a7eb0472f337bd8c6fe58da4dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ac2caafd56325f2007774b9d519b32bd3c3cbcd58cf2fe1fc5d1f9918532`

```dockerfile
```

-	Layers:
	-	`sha256:cb21ddfab0be8a3c28625fb79b349165d88d183653d4f8a2fbd04a39619cde44`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-linux` - linux; s390x

```console
$ docker pull nats@sha256:91a8b28bc650c5507a799f0707fff2440fd3975a3664cab388476026e298cdd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6738059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe77fb8903aee8770ba6333e429da2816570ef04c57ad5d91d4657f1b3acae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:21 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a05abdd14deac662702670bb393816235bc72755830f7bfd6e3fd8d5cf8dc667`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6737550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d792f0bba2aadf6a862eac3c131954ac9e60976dab28a1ee5cb931cedaacbd32`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-linux` - unknown; unknown

```console
$ docker pull nats@sha256:34b77beb88498b88f771c9a2360742e018939a9c7d720081406bdabbd9b391b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0426c3aeeb554ba54ce751f0c0298fab3703fa9fcef53343a8a08e5fa44de218`

```dockerfile
```

-	Layers:
	-	`sha256:954ef8a1c0df2464240608e4d79baae482d4458581a9d650ddfc6325ac58be0c`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 8.7 KB (8661 bytes)  
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
$ docker pull nats@sha256:0a79eb414d66c1b3985e3e98d531f20c597f3219b831942d776912fc4ed6d212
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

### `nats:2.14.7-scratch` - linux; amd64

```console
$ docker pull nats@sha256:8d48ab8cd8857a244008a770f847e614f5f5f2e8e94360b8ee0fbdf2be693fff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6925491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75326c9ff4bf3bd68c4832fa00ef25c29f16e8a3458ab007dccf7d0959174e34`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:6fbfb246eef90093c60ea8b2b9ce455bdd8ae7fed3e6449681d11a7745574bf2`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.9 MB (6924982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e267ea113cb7f3ff61993c0526cb62aeca72cbfd16655f5e5f21ad79e83721`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:84050da6cdd32be4e0542fb850be5bfd3bac42aabf93fec3bcca7cb089e6b4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f56ba5ba84f3a63c2828cf622d1edd5dc8302d61fdda97b9ce69e0edc4d587`

```dockerfile
```

-	Layers:
	-	`sha256:a0cb4f6b7ebdfb313e65d8cda925de74b69b425d18d57942610f5c22d0477ae4`  
		Last Modified: Thu, 17 Sep 2026 22:19:11 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:876da8b4885d60c09494f67e8b4e792f1af1b9d6a7721d02a026079ea10f2465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6664922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c4e5a9cc6dc29f3ce3b9879f23d112f628a2ce1f38acf15b5147631998c8e1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:27 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9df1dc1f978dddc87764780ed353855d12453b6430d573fcd9827c161a698ad7`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.7 MB (6664412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:698ba616a19107ab8870fab3ac16cbdeb51ce1ca399e76ca8205a55627330fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e89906e85aa55018a868728624b87f73660564a0dd21116208f36a6a926b35d`

```dockerfile
```

-	Layers:
	-	`sha256:454d5a835c0c3c07c1d8f5ada8b9f263abca7e8007139828e8ad41ab771e6b54`  
		Last Modified: Thu, 17 Sep 2026 22:31:31 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:cc14215d745e9bf3ce78435aa096522fdc9443556107f54e44f6b834430f422e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6655337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2a69b90cff53d4548e78dbed597af398d4283e3b4579fb4a295c56b45bd9e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:43 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:43 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1cd10e7ab63536be0a6825461386cffb39a844f5c26530556f984066214a3a79`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6654828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bcaea29e73a8521f3eb102817ae66ea46fc412939a8f54938ac1cd1fa6c932`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6dbe8f95ab43dd3a22e10d9e264d9470335e31662e68027f920d7d8c3e188905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32539d82b769189826f022308e00134ce7d7755a352f932699058ae2e791c089`

```dockerfile
```

-	Layers:
	-	`sha256:3baf575cea9f4936756545ef6c3a93beb9e13360e697a2196ddc478f8b0a90f1`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 8.7 KB (8742 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:369a7f6a9f4b3373bf7245ba0d822dd05a132af86db174ee617196c6ff684c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6273450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8057ff0b507ce9df1c0e85889b0bf65ec6993aa1bfe4c9bcc26e99e0c9a831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:22 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c01b539ef423a9efec5a4ca6d3fd6865d84f4a930f77e3237b4517ea6fcea9d1`  
		Last Modified: Tue, 15 Sep 2026 15:36:23 GMT  
		Size: 6.3 MB (6272941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3bbc6c12caa5b113095c5c64f24c9bab3d02cf61ec70a156c830f6c9c51d533`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:52a15f521f1af171465ae78b192fc476412b723c8c54fb39482044a65e2c5723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330d3661440225977d45be4043cf0ba7f19a5a16caba0eb539a04485f33ca5d0`

```dockerfile
```

-	Layers:
	-	`sha256:5952ef4f786fd70ff1b5da8acd4a88d16693d23e0604343d1360f975753f1722`  
		Last Modified: Thu, 17 Sep 2026 22:39:26 GMT  
		Size: 8.8 KB (8773 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:d4cb6ecf6b61d1306a28fcdd06d54c8d5e85007fcf6efbe3701a9fcbc5769005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6336828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389a8b4624a8ea3c6035ed24a3b5100cd281d63abb8ac07e601cf010ac49c25e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:36 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4a0faf6b4ccb0ebd9bb6fa1962dc0869beded3e5295085a1649514bbaafa7fa8`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.3 MB (6336318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7be59dbd9bfec6dd5bea6f38f4410ee99c89ece14d1cef77469ac3f82392f`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1acb76d0ea55be8ea3b222bbfbc150d15cbe4a7eb0472f337bd8c6fe58da4dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ee1ac2caafd56325f2007774b9d519b32bd3c3cbcd58cf2fe1fc5d1f9918532`

```dockerfile
```

-	Layers:
	-	`sha256:cb21ddfab0be8a3c28625fb79b349165d88d183653d4f8a2fbd04a39619cde44`  
		Last Modified: Fri, 18 Sep 2026 01:11:42 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.7-scratch` - linux; s390x

```console
$ docker pull nats@sha256:91a8b28bc650c5507a799f0707fff2440fd3975a3664cab388476026e298cdd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6738059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34fe77fb8903aee8770ba6333e429da2816570ef04c57ad5d91d4657f1b3acae`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:21 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a05abdd14deac662702670bb393816235bc72755830f7bfd6e3fd8d5cf8dc667`  
		Last Modified: Tue, 15 Sep 2026 15:36:26 GMT  
		Size: 6.7 MB (6737550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d792f0bba2aadf6a862eac3c131954ac9e60976dab28a1ee5cb931cedaacbd32`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.7-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:34b77beb88498b88f771c9a2360742e018939a9c7d720081406bdabbd9b391b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0426c3aeeb554ba54ce751f0c0298fab3703fa9fcef53343a8a08e5fa44de218`

```dockerfile
```

-	Layers:
	-	`sha256:954ef8a1c0df2464240608e4d79baae482d4458581a9d650ddfc6325ac58be0c`  
		Last Modified: Fri, 18 Sep 2026 01:53:29 GMT  
		Size: 8.7 KB (8661 bytes)  
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

```console
$ docker pull nats@sha256:cd3fcd4ecdda44e3a66728a5334af0a959bc3979b32810e033d1c547241cd0f4
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

### `nats:2.15` - linux; amd64

```console
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-alpine`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-alpine3.22`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-linux`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-nanoserver`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-scratch`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-windowsservercore`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.0`

```console
$ docker pull nats@sha256:cd3fcd4ecdda44e3a66728a5334af0a959bc3979b32810e033d1c547241cd0f4
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

### `nats:2.15.0` - linux; amd64

```console
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.0-alpine`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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

### `nats:2.15.0-alpine` - linux; amd64

```console
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.0-alpine3.22`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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

### `nats:2.15.0-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.0-linux`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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

### `nats:2.15.0-linux` - linux; amd64

```console
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-linux` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-linux` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-linux` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.0-nanoserver`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.0-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.0-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.0-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.0-scratch`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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

### `nats:2.15.0-scratch` - linux; amd64

```console
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.0-scratch` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.0-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.0-windowsservercore`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.0-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.0-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:ac8f88a6494bffc2c2a5289a0ca61cb28a9145c11ba5677cf24265d07f46d8d4
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
$ docker pull nats@sha256:eda962d67930eda338222072d9a9f3818855d922ad224c399b0b01d251e9b91b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11481954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fba79b99cb8c01be0a0b9d85cc90fa648f79c1d1d4ab4d56c753874e4c19bd7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:37 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:37 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85ab5e64ac8cf7e05341ffa3f97e7cabb7e9ef0c60d4bd0b33736d0b924965`  
		Last Modified: Thu, 17 Sep 2026 21:16:42 GMT  
		Size: 7.7 MB (7688912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fda42364ac81932aca9b351419b2bd5e21cd7451efedbefb079d99ca91734b`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533547350bb69f285e0e39126451d93273bbaed0d7b1278a7762f81681cdc42`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:97374839153f29ed2a5b0a6e1906940c9a7a54021566b7d405bce76e9e90f51f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453bb5c65042babe68225fd226a5ef2f0f16232b1da678d8555c364f2a548279`

```dockerfile
```

-	Layers:
	-	`sha256:f54ef9d135377c67175c9e924f943c38f19cbaeccb4557ae7346e95fe68f5b74`  
		Last Modified: Thu, 17 Sep 2026 21:16:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:185fe42f6e8c0c9038d6b4c26020aaba78c8a00d5df0ba1a4fa8ef9d81f42e9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10947156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2d1e3e4f3dc24c555c130cdd23c35463420bfe9bd54372617971d1e8afbc50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:21:13 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:21:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:21:13 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5976d34b9adf92ca202cd8d4381c728aebaf9e680c0398725fc47093001b070`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 7.4 MB (7447705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b211f7fab44c047b87838803359202447f7a7852d03f55405607a6042f578d`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553072cf95c03673aa46b4a954f35af351a48125a0d836597799c683d70abb7`  
		Last Modified: Thu, 17 Sep 2026 21:21:18 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1ef5b9e270b69b77e7d611e1ca21f064f5688dd0c569abc5fc64d1ece4ec42f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971bc345466f0833b851e5cb3b4967249f78896832d485f67a06766f53dfd921`

```dockerfile
```

-	Layers:
	-	`sha256:84faa83b4941e84fd310d92ee994da9e32c1ac805128a916d200d7e0b7f9c498`  
		Last Modified: Thu, 17 Sep 2026 21:21:19 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:55c41cf330baf8eea9faafed9d7656fd61a0f477a03e7602de8810cda1d34efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10647663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0533bdef0d25dd3d2a8aa392a4d3f2a3a7939432ec300756cd0d5ad98abd85e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:19:56 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:19:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:19:56 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e082eaca1bd9c6eead22d9bd1e7f0fbff358536e888264c9b7b7a5ea7f4ea7`  
		Last Modified: Thu, 17 Sep 2026 21:20:01 GMT  
		Size: 7.4 MB (7434481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba5f2d5318a30c85d4cc6d2eac49d4bedcaee2ccebce230f6fcdcc996a2ad9`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed79b3a99601c7c103104852d6bec59890944c23f18aaf04804338891e3cf25`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d36a52e666cbdf11217ab4d32e31531ee4a50093ecd7930666f8cc91e5994b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac7fa392dd697923d27c2a1b3c1911be4cb652048982ec056415a9f635d594e`

```dockerfile
```

-	Layers:
	-	`sha256:fdb874bdd7449412de5b1ee181e0b1cc619eaaadb1bfeb00d6603bd8a268b3d1`  
		Last Modified: Thu, 17 Sep 2026 21:20:00 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:d5091b05d2033732bf4b282301e4d588f49e8fa9bb58ea0387a0ecea08277bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74710ffaf7db696488288a2e90e9910dfe423adcd3a3c85ec086f5f2713bf8f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:16:05 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:16:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:16:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:16:05 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f782b92e57be0c7c46c6a4066152a37c0f6ec4f3c925a2c11dc92252f844260`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 7.0 MB (7004752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d4ce5e606a685e009b6181ac37b080f22e6e1bfd4c4b4f0a1e037bd2f8088c`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd85e46f172544b8261a2ee8d1bc30eaef38d27d3648ec024c105aabd3506353`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2e2ecf3b79581a9bc24848e648607161ea69e151806425b6066a614e3b8f0514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3a20e799527edb3858e59ad43a0e7f88cc7f55583fc77f466d4f31bb0443e7`

```dockerfile
```

-	Layers:
	-	`sha256:5cbea8f1a420f5e7604219e41895140db567eb753772b1598de33288bda7d047`  
		Last Modified: Thu, 17 Sep 2026 21:16:09 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:29a79f82704f33dd6a1f23c3795e2a69a8fcad90dddb58f90c42cf2b21b29615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10794706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7655462b1179f57ef901d464c7ef538f40f4dda8f99adc66c3f7bc93dc582`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:31:17 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 21:31:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 21:31:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 21:31:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 21:31:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:31:25 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7caa576504016e595d634b405593cfae32ab03229fefb80f9caec767b3cad2a6`  
		Last Modified: Thu, 17 Sep 2026 21:31:36 GMT  
		Size: 7.1 MB (7070982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c0519cc7e8d82c3cee65edca4f9da1f03f5627c0570f92c0f3283b64e4b9d0`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5746f97d2e5ed6b75cbbaac75bbdc4ec5ba927a4c9bd3591ab128aa401e8b`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1e38c2050760a36e122e12776ea6c729a88beae7dc7add8f297c369dc71b4bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b2051bc677477ecce3e144451772b399a80375df506a6ee12e4c2ae647324`

```dockerfile
```

-	Layers:
	-	`sha256:7e93695ac17654429f88cfc2d756d25ea61dc3fe5c17b0e5785b990dad601550`  
		Last Modified: Thu, 17 Sep 2026 21:31:35 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:c3831b05ae8bdb471cf552f17ee37b4436e34218d0d9817cc9401eb193d137b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11128691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015ccd8e1b3eb58e94c2f2c4291f452735a127e27c771aa6f99a3c8b0df09bca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:58 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 22:24:58 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='cdc208f5a3f42963a52b6ab06ef65626bb870315dc936e26ba571780c6351112' ;;     armhf) natsArch='arm6'; sha256='e29421c251dda2003d16b8d503124a0d690d05f4e018923be7e5e64b446e42c2' ;;     armv7) natsArch='arm7'; sha256='ec5f4689d017e07cfa18442e10da051c0f3f9dd2e7f4dc7cdb55a11f1303c952' ;;     x86_64) natsArch='amd64'; sha256='5d2c51caca950333aba84911df7d377f826f3a59ec36061c6539105084f65c92' ;;     x86) natsArch='386'; sha256='f572eccdbb35ab5c7fef7703a5b6ca49e55d039e441920ba5478972ecdcf7a47' ;;     s390x) natsArch='s390x'; sha256='ac50bf4adc8fa6db575ed9293417b6fbec746e71cc9d360aea5cd447e4207bfc' ;;     ppc64le) natsArch='ppc64le'; sha256='a402bf73f91f674735cc85aa0e7d06d5dfa3044b98cda6ea9937cfee4e05a266' ;;     loong64) natsArch='loong64'; sha256='fdce4b595b4b3a9f83d07ee310334b68a0723c799e969c9ab77f3105158fd64e' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 17 Sep 2026 22:24:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:24:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:24:59 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66773d18223ef8c1052192c03559c7f80dee59a57236605ea6b455ca310a7641`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 7.5 MB (7487609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef6b59c87d565531b39e354b8c641f470f5d183aa37d0605e74d11162823e4f`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc195559b7b93c410616cb639d2281246feba15c3a333b73ff41415e47aea4c`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fd3bae157fce8de271a65c5c9a2e5256afbe1fab9fdde35c3f619f59a9e3a093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddcaee61f24cf3395b80888b28767b986105c956d21ecde60721b4fc73b528b`

```dockerfile
```

-	Layers:
	-	`sha256:0f4f66a79a5715394a31ab9957fa3661566b2337a3b4e5fd2f2e6f8106953482`  
		Last Modified: Thu, 17 Sep 2026 22:25:06 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:cd3fcd4ecdda44e3a66728a5334af0a959bc3979b32810e033d1c547241cd0f4
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:f0c603550cbbaad92844f9e2452951b5e6c58477fda49473702e189de73e445f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:b22c2c2a2be1fc5a2f6f29f830736443f1512c3c41487367319c454d3a88a2d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132110727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376f7af13bc7087027d0f24cb4b0f42cd1e4ba94b955157cb62d6be05a190ac6`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 17 Sep 2026 20:09:25 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 20:09:26 GMT
RUN cmd /S /C #(nop) COPY file:32abf8c11bcb2379acc6e6e9dfe27f5a66762f67ad688875c22a0866e043a6e1 in C:\nats-server.exe 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 20:09:27 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 20:09:28 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 20:09:30 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0767d6b8774f5fce59a4c2f7579017aee0255784a633c053ed8077b2fc59d884`  
		Last Modified: Thu, 17 Sep 2026 20:09:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54ff132f3572be02ed51683c66c88b8371a8025e7e3efa8b33c542de7f50f2`  
		Last Modified: Thu, 17 Sep 2026 20:09:40 GMT  
		Size: 7.5 MB (7467361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a85df080703beab2be06b1c33b385d7b2bed831253f47ea4f82ee596286938`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569c9894b412c089ecf6009e223f5e3732b23b3ff0fdc1ffa6d7210c5fe95df2`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457210bb1a15e3a12b720d64a5656992b6bc16f259ca348cdd01471bd3b32653`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8ce13853db1b2f6e62b5b15b63b0c50a46afd765a1c0b44007ad67481b8955`  
		Last Modified: Thu, 17 Sep 2026 20:09:34 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:c0d27f3054601a99055aa5ec897b0a55bf1869ae50f454e659acfbbea11d2ab7
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
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:8a6dfc66d21a1b04d3cb8a0d022da508a5b94b70cdedba9c7082ce6c8a46a3e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e078f964d9bae057cfd54411a5babd428a64d4d3d5a581c2ffa6e09a3ac3fe`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:11:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:11:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:11:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:11:35 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:11:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a941c52b7095d768daefc1a76ed43263c4d7920a378307b0c2c1f73c89c96e11`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5fe01f4781d07301627b408ff67f8487c273a34867fc85677a78fef30a893f83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2de8f2ac0094ef916c7a88f7475b6f7b571721b029a83fd392dc7df42555238`

```dockerfile
```

-	Layers:
	-	`sha256:7f0bd81a2b7c5c26991cc358c373083fb4b500a406673853e65273cc2070f452`  
		Last Modified: Fri, 18 Sep 2026 01:11:41 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:e90269dd48129f62b15e814a1031d3f0d7a7cb93fc133f4ae336933b2735a665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae08666ba44acfc75e2b1dbe706a3115671b02f67cc8e5f438d37ee8f1802a47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 18 Sep 2026 01:53:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 18 Sep 2026 01:53:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Fri, 18 Sep 2026 01:53:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Fri, 18 Sep 2026 01:53:11 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 18 Sep 2026 01:53:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:00c9d53d31f5563e03ccafa0781a1bf04de398f29cd756c88ce883aca74c6588`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 7.1 MB (7069504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376b90e925e21803f992c8cb1b8ab86bd097a1f65677ff18bad17805b872b18a`  
		Last Modified: Fri, 18 Sep 2026 01:53:18 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1627425530c46792a0935023ad5487d5853ff319b258ad0582d4dfd1ed0e62aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175a573482a72ab2b90b45b4e8d4eca51b0dc42273a93c9c07700466a9680497`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bea8b93ed890531705d8b3d0d2cc488b582b6f243b1b4ca47ff0e829bdcc8`  
		Last Modified: Fri, 18 Sep 2026 01:53:19 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1562c750d2842ca43a319af0f319593cf9af0efe5330506f653e65aaa32ebc9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:99acf3446693dc79e3c85732d06f79ef7f5cfe44e84f39c97b5cc9e8c31e2695
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227681683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4471c1c64552f5c35ee9dbe0a38693d363a42bd36bb436c8aa9f4020f4fbc68`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 17 Sep 2026 19:39:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 17 Sep 2026 19:39:06 GMT
ENV NATS_DOCKERIZED=1
# Thu, 17 Sep 2026 19:39:08 GMT
ENV NATS_SERVER=2.15.0
# Thu, 17 Sep 2026 19:39:10 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.0
# Thu, 17 Sep 2026 19:39:13 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.0/nats-server-v2.15.0-windows-amd64.zip
# Thu, 17 Sep 2026 19:39:15 GMT
ENV NATS_SERVER_SHASUM=2d0861dc2ca3567d17f7d19611d7b346cc2ccbd7086a0a77cc957a2c71663200
# Thu, 17 Sep 2026 19:40:23 GMT
RUN Set-PSDebug -Trace 2
# Thu, 17 Sep 2026 19:40:51 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 17 Sep 2026 19:40:52 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 17 Sep 2026 19:40:52 GMT
EXPOSE 4222 6222 8222
# Thu, 17 Sep 2026 19:40:53 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 17 Sep 2026 19:40:54 GMT
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
	-	`sha256:d8dca68142a1e3d92f31d1bae914e81d03c630c528661ddfefdeae5b9e2767ac`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e6c71217347ef833c9c0c0c7a5f0ec8ccf151cb8e5a64a3ab8f57e5a0e415c`  
		Last Modified: Thu, 17 Sep 2026 19:41:02 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4e9db20f95ba4b1d20e4b2235730b123beed70e80d9591bee6b054bd01b37c`  
		Last Modified: Thu, 17 Sep 2026 19:41:01 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c83d8a64bd29c508507c50788e6092a7fddf345ff2131f8a9a766176c007312`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120bc8ef89d3c4b800c76b49267ec82bf6308641a4b7ae10a5266c273b96912d`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b834f3ee485b86b47daa370bc372f562266446c83370b91658054addbd1b966`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711d37a445e927e917458b707b50d01edc116638813ac0c6716e28e6018536fd`  
		Last Modified: Thu, 17 Sep 2026 19:41:00 GMT  
		Size: 358.2 KB (358152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435eac6c72f4fc16aba5fcb65d2f7d0b504805b55c565f8372b788c838171bd3`  
		Last Modified: Thu, 17 Sep 2026 19:41:04 GMT  
		Size: 7.8 MB (7821128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec29e5dc23fc570318174267f2a1588a14a0f729703a63e1bab6d2d5f73116e`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df26d7bb1e5a3fa8e813477c7b2ca0e6e2b7e1d601312b16e53bf401b2f1e44`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6df0de0d89aa8833a1862b2244698217f62208abeeacf615f72df053aede42`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df905541c6130d1b399f06ff39350897d399b4f45bd0206eea1f4b7dc3307a`  
		Last Modified: Thu, 17 Sep 2026 19:40:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
