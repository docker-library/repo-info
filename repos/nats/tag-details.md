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
-	[`nats:2.14.8`](#nats2148)
-	[`nats:2.14.8-alpine`](#nats2148-alpine)
-	[`nats:2.14.8-alpine3.22`](#nats2148-alpine322)
-	[`nats:2.14.8-linux`](#nats2148-linux)
-	[`nats:2.14.8-nanoserver`](#nats2148-nanoserver)
-	[`nats:2.14.8-nanoserver-ltsc2022`](#nats2148-nanoserver-ltsc2022)
-	[`nats:2.14.8-scratch`](#nats2148-scratch)
-	[`nats:2.14.8-windowsservercore`](#nats2148-windowsservercore)
-	[`nats:2.14.8-windowsservercore-ltsc2022`](#nats2148-windowsservercore-ltsc2022)
-	[`nats:2.15`](#nats215)
-	[`nats:2.15-alpine`](#nats215-alpine)
-	[`nats:2.15-alpine3.22`](#nats215-alpine322)
-	[`nats:2.15-linux`](#nats215-linux)
-	[`nats:2.15-nanoserver`](#nats215-nanoserver)
-	[`nats:2.15-nanoserver-ltsc2022`](#nats215-nanoserver-ltsc2022)
-	[`nats:2.15-scratch`](#nats215-scratch)
-	[`nats:2.15-windowsservercore`](#nats215-windowsservercore)
-	[`nats:2.15-windowsservercore-ltsc2022`](#nats215-windowsservercore-ltsc2022)
-	[`nats:2.15.1`](#nats2151)
-	[`nats:2.15.1-alpine`](#nats2151-alpine)
-	[`nats:2.15.1-alpine3.22`](#nats2151-alpine322)
-	[`nats:2.15.1-linux`](#nats2151-linux)
-	[`nats:2.15.1-nanoserver`](#nats2151-nanoserver)
-	[`nats:2.15.1-nanoserver-ltsc2022`](#nats2151-nanoserver-ltsc2022)
-	[`nats:2.15.1-scratch`](#nats2151-scratch)
-	[`nats:2.15.1-windowsservercore`](#nats2151-windowsservercore)
-	[`nats:2.15.1-windowsservercore-ltsc2022`](#nats2151-windowsservercore-ltsc2022)
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
$ docker pull nats@sha256:bc11c3038667593d748ef5cf8741d718df9c3038cf0e10087608148c95a8f572
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
	-	windows version 10.0.20348.5761; amd64

### `nats:2` - linux; amd64

```console
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:cd9f7847804d9978d0a41e6674ffa134dd920a852a608f256cab4ee90c8c1ff3
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
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14` - linux; amd64

```console
$ docker pull nats@sha256:aab5a9b216ce3bbaee7a7f0846ac58aa568c879dedfa6c79a454479b390038e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c6bc37fed17ce4bac124a77b2c592075094cf656f19847561921bcc10ea06b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:28 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:28 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223cc0fe14f756356390ca397287a333f35321ee7aa5d078a791444fd33b389`  
		Last Modified: Wed, 21 Oct 2026 21:39:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:6c2e609ce4610f4193affb5c4b46a9c0196cd5e1057f6de9408302b80b7d318a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5beef052115ebb87e7f216c95b267caae2553e16e8a541ebbd2a7728ccd0de`

```dockerfile
```

-	Layers:
	-	`sha256:9669f08d9d6c44aa287d96a252bb949b73c72491a12b0ac73ed4b654acf9d349`  
		Last Modified: Wed, 21 Oct 2026 21:39:33 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:a9f620c9f651d2e612d103bbbe865ba3a260ec990cbf3d759fb139d839ae7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec52afa8f7184abed680497a3fc4c5ada38580b474317e61a7c2f470631b68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c883fb5dd378b12615cdf94cb3c70e6ddbd0e34605b93717a0df774d0f8f8d7`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:38259cc9ae9227f8c4437510458f1b0abacaa232c6c5b9b3cc7bf15f97f0d6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caeb47aa938d90afcfe1fbed9c3e791c24700cff10de9d5af0643ff70bc4a00`

```dockerfile
```

-	Layers:
	-	`sha256:0a2575a801f7f640586a380f7fbfea6cd11cf3556514ff1238ff33f66fe7a7e0`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:4504273f14ab3199d9abe0ff3facc634e25810c25a4b45cddb32c71a4483e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee00439f5e75275db825793e6ff09a9cf901147aa3a051b1740718cbcb76216`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:53 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:53 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa19010a0adad6d7398eba080b700e1176bd837f1d0722e51ce3920cda93ee`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:e8219d37fbcd7ab6057b6aa7e5d7ba9a34eae9c866d4b5bcdae4eae196cedb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457395febc366a8c314da384daf9452f29957145a6fd39d6eebf6ea4070f362c`

```dockerfile
```

-	Layers:
	-	`sha256:874cfbe4e24c1a1f6a104c49137fd22ba7ffcfcccdf2f68d0ded585afa974e0a`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:4e0bfde3368e2659cafb1d4a7a3f4da1c9317b4489fd5d8f0cbf2078c31c968e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e15f8e5ef4b5a447f0784c5739993d54dbd1b9af3ce75748d0e1f94cda56ef`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:05 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:05 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf83515a8192c3c97dcae6f0ab56b56ea8167ea0fdae5ea9d60c9610964340e`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:5dc16e06f0029f12423087c0b718fa756beebe334e8d46e3d663f10708220790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d5c2e9b347d243084f92da974adec92cf065998906412937da25719c661d75`

```dockerfile
```

-	Layers:
	-	`sha256:2bb860c658981b26fc64e11a5e7b92fe28fa01031c53d3c0e5476a6b99493b6a`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 8.8 KB (8772 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:1c35ed5bcd47a38014d6c5695243b37385386728bb453eab0fd4c990579719e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9c24137b73331eb37bd439c6805c54c05ffb1144ca12868174f31a6821ae9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:55 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b135fa1ffd3266668e8c8eb14e76afff775562dc18726b5e27d4a8b0a54626f`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:8d8af66f10bf95d4a872588d861b8ef43992c6a774dcfb0cc4db84d55969bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d08489f3b54d61e9515168b1c746e47da74a2b28cb99f97f46b9a207ea003`

```dockerfile
```

-	Layers:
	-	`sha256:e2c41b3ca516add59888f2ae95c261aa0e56500bee1d0f37c4ae9b500b00421e`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:35873279f8321d59b0a2e2b696907f865e6935a3e22f1018100bb5e4280ec37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f78d7da0d010c71e1615bb359a533fdd9b3e73bff64db295c6ba42a0db1f4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c6bc1b4f36c69a56ccda9abdc0891e9b3a139162ce7dd4a9dd73542b77fa9`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:140cde56951200b7c327ab99fcad7f77e90ece8e8f44c4ba6e5720116d443e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617988311d35fa4ea09ca95797c7543025cf192a0b700950f2f94a68fa1f88b`

```dockerfile
```

-	Layers:
	-	`sha256:d98a9f8aefade9e748dbb6eb30a626a725d91af7ac8a233772cd218f2d001965`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:ef5db7544301a94decbd80e2a0e1ca29d1876b8cfd8ae43fe0c5fec230027230
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132952095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db84094fe99fb6eb40016e0d3204a428727b0dad54cd18e3cd9737818db24bc7`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:17:53 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:17:57 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba03ab62f64ad469caaf36a33570e01c7e4d5fc2459a791483a1fcd0b92b3`  
		Last Modified: Wed, 14 Oct 2026 00:18:05 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6422390f3d783628201decfb19456261171b57bb5d474a7f5dad4bbf8049a`  
		Last Modified: Wed, 14 Oct 2026 00:18:06 GMT  
		Size: 7.2 MB (7150228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7764ed6e6efa458302c767331096f08be3f30b5d741b655d438d94e18d9e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47786cf967ece81c463164ed19b4fd48ad1f5f5f89f2f89604123068b9c88888`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f329c6591d0944e403444dc893637483ca8e8358d7cebd569e976c7aac54c`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341b54545677fd007a68fc4529ed03224049bd813ff71977758ac4aaa6fd7a00`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:85afd2041c88687ef65d5170a9e4cb16e5bc02d3b753d34aee14336db8720b3c
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
$ docker pull nats@sha256:12f2961f14c98a174431c7692853e59808db8b3ef2c94f2196c7378dbacc9942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6344e625cd75436cfd736beff133f83043ddbf4d1a8c846ee869edd74e63ccb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5271332cdb059e878e2c7798f6e22aa7579805a92255476e7b306c30d30ba36e`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 7.4 MB (7362201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5e082d572a21cca315d03f967b6d4b476bd2df90b4cb165c32490010c4d72c`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059132919cb5da11a5f0de51abe75da9643291e846cdd96686f1dc2f7cded894`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:35cc69d0d268f43b3b2d071da14e2f8e0491f144e84f65b8a59178e9afa206eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076e6d7c4b49ca67162b51bf1048176ca1aa2f6ff1a400571477286ed63098e2`

```dockerfile
```

-	Layers:
	-	`sha256:6e5191ce4adf4d8b6c03cb64aeb54aa4168b3b8eb3825bd228ac7777c56857a9`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:1e285872ddf35648b7032ce8f5123f5040ca4a5b9d0f59d4b455a7b6bac8d685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098bc76eef0e155b0594589f629ef5f9a9cb417cbdf0e5b1ee57593a278fe7ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7859b64665eb40e7ead7904e3778c114ce1cb428012a1ba297b59356d01433`  
		Last Modified: Wed, 21 Oct 2026 21:13:20 GMT  
		Size: 7.1 MB (7102140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a45e00fcff2d0db010c1c0d89adb85f10ff19c106979c8adcbac9b0f1e86e6`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370317a20d7f3c013e6d28fc5f3f0783e4ff3e905bfcb93744b581fe82afbffa`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fa0e9523c4c19eb1bdfaadfcc303ce62c83dbc6bc181773d7a4465996a009896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fd298691f434d9210ccf489f2960663da1dbebbdcf13784a36db9efc60b410`

```dockerfile
```

-	Layers:
	-	`sha256:6e10cae3eb69049db10b30ee2f9c4870ded0e3070bbcac84d0fd9f68177feaf4`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8a50b46237c0175084692db8edb2025abda49648f08b37ac1861b355deaa8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10305138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf22f20fdf72a5ba2c39778462ac8286a0cfddec3b01a5dc79ba9203e79c1b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f4d992bdbadae5a2b261e763b2a51fb63bf70ff20bb7f55ce36727ee95f2d`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 7.1 MB (7088762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9cbd3e39dfb6d636008d64295d4c1504b0fb6e894d9bc29acf41589ea068a8`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6877937f4d96a43ce758a6ddecdb430e529bcd1f0880565d3c0bd34d278c20`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:19f022aadc1b6a84dcf31f2cbea75337c52563841faa1e84bebcf9868b53a8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f8f85c0cf528edf9992f19af28798cddcd4b60ec075f659c747cc48ca3763f`

```dockerfile
```

-	Layers:
	-	`sha256:7ce704fc3561d52fb6f92bad67706df6a239a8454e53d35625159cdfa1468e93`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7bf6a80dc39377f2e35accd7a674f03c329d501b7b7b4a7b777d6a19cd17fad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10838026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef458968936c7b240e0f6b77b3f7709569aaca6e1dd51bd03efc49f564fd7b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d14f3db5df0344964f5258f2e5386b22fc51bc6323b7816a0c73bc7c2c2eb9e`  
		Last Modified: Wed, 21 Oct 2026 21:06:22 GMT  
		Size: 6.7 MB (6709678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d4b03a26c768a0135f17d2af429de9eb51634442e68d256e45db598fa5b93f`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992e17fe5e242e429af20f08dd79251d7dde83da05c0949fd6f615a4c6cda50`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:ec0cb82a46704f143f518d2ed5aeec1949374857c6b4ec15123a5880e5aed442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ecc2e8fa2e356de109aa7f2f7f0671982f5db47cd83f0578135070f75cea7b`

```dockerfile
```

-	Layers:
	-	`sha256:d4444de4d41300ff680a4d7a8bd8107667a85054ae923becf8d8d52d67cd8a92`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:81345cbd60073d1eed2e4cab4177e36e2882b2037e153b223dee90b0b06e6272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10507441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df361f50956f983565b1710ebaebc68af0115a3c2fc12cb8f904990bd459acc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:43 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ad46264e73dae72c2561c954e9817ff4235e79a0fd49ad38f3873a6c5aa9d1`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 6.8 MB (6783714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988bffa69da6735eb2f06fc8c97a1c3959b677389f519a32b3c211ec9dbfb70a`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:945fc536708ad9c2879c4876a2d65b16b9a8a7132f4a3f0da90c05c2537d7106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59709a200d1a474fe600f7c0d6585fc2aa51ca96992f7655a3e62fa617947250`

```dockerfile
```

-	Layers:
	-	`sha256:dbc9aea91757d6ec8f1f663f3b2a03b0285b174bc198cc45dc03da10f24e439e`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8aa833fc66d26e899f75e3f9f945ba5fa76265e983237a345505f0ca995203ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f126e03cc14257e4807d8cd26a4c1d8067559d06221b9eeaf9be3beee3ec74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6427f946cee9b0618c4d069e80d844144d03a456dbdf744500000c1f641cdde2`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 7.2 MB (7178561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f02ed152cea3bfd32caf8aab068be9fdb2156aab2271497dd43d7ae814e7d1c`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb21f8bef9be9756f5e583d32df515dcbfbd450ba977f837cb0f63f857d0261`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:b0a86f6504b12a8107913b63855c39003be872db6ac415280e135888c0e472d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f70605d314f9661c23bde602d0dc3524968caf3f9818ec164a5f5f1d189b84`

```dockerfile
```

-	Layers:
	-	`sha256:b7423aca0cfcf54f0735cae150130f3b6d3a531ef7d52ddf1052d8433a8dc361`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:85afd2041c88687ef65d5170a9e4cb16e5bc02d3b753d34aee14336db8720b3c
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
$ docker pull nats@sha256:12f2961f14c98a174431c7692853e59808db8b3ef2c94f2196c7378dbacc9942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6344e625cd75436cfd736beff133f83043ddbf4d1a8c846ee869edd74e63ccb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5271332cdb059e878e2c7798f6e22aa7579805a92255476e7b306c30d30ba36e`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 7.4 MB (7362201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5e082d572a21cca315d03f967b6d4b476bd2df90b4cb165c32490010c4d72c`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059132919cb5da11a5f0de51abe75da9643291e846cdd96686f1dc2f7cded894`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:35cc69d0d268f43b3b2d071da14e2f8e0491f144e84f65b8a59178e9afa206eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076e6d7c4b49ca67162b51bf1048176ca1aa2f6ff1a400571477286ed63098e2`

```dockerfile
```

-	Layers:
	-	`sha256:6e5191ce4adf4d8b6c03cb64aeb54aa4168b3b8eb3825bd228ac7777c56857a9`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:1e285872ddf35648b7032ce8f5123f5040ca4a5b9d0f59d4b455a7b6bac8d685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098bc76eef0e155b0594589f629ef5f9a9cb417cbdf0e5b1ee57593a278fe7ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7859b64665eb40e7ead7904e3778c114ce1cb428012a1ba297b59356d01433`  
		Last Modified: Wed, 21 Oct 2026 21:13:20 GMT  
		Size: 7.1 MB (7102140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a45e00fcff2d0db010c1c0d89adb85f10ff19c106979c8adcbac9b0f1e86e6`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370317a20d7f3c013e6d28fc5f3f0783e4ff3e905bfcb93744b581fe82afbffa`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fa0e9523c4c19eb1bdfaadfcc303ce62c83dbc6bc181773d7a4465996a009896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fd298691f434d9210ccf489f2960663da1dbebbdcf13784a36db9efc60b410`

```dockerfile
```

-	Layers:
	-	`sha256:6e10cae3eb69049db10b30ee2f9c4870ded0e3070bbcac84d0fd9f68177feaf4`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8a50b46237c0175084692db8edb2025abda49648f08b37ac1861b355deaa8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10305138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf22f20fdf72a5ba2c39778462ac8286a0cfddec3b01a5dc79ba9203e79c1b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f4d992bdbadae5a2b261e763b2a51fb63bf70ff20bb7f55ce36727ee95f2d`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 7.1 MB (7088762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9cbd3e39dfb6d636008d64295d4c1504b0fb6e894d9bc29acf41589ea068a8`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6877937f4d96a43ce758a6ddecdb430e529bcd1f0880565d3c0bd34d278c20`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:19f022aadc1b6a84dcf31f2cbea75337c52563841faa1e84bebcf9868b53a8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f8f85c0cf528edf9992f19af28798cddcd4b60ec075f659c747cc48ca3763f`

```dockerfile
```

-	Layers:
	-	`sha256:7ce704fc3561d52fb6f92bad67706df6a239a8454e53d35625159cdfa1468e93`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7bf6a80dc39377f2e35accd7a674f03c329d501b7b7b4a7b777d6a19cd17fad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10838026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef458968936c7b240e0f6b77b3f7709569aaca6e1dd51bd03efc49f564fd7b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d14f3db5df0344964f5258f2e5386b22fc51bc6323b7816a0c73bc7c2c2eb9e`  
		Last Modified: Wed, 21 Oct 2026 21:06:22 GMT  
		Size: 6.7 MB (6709678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d4b03a26c768a0135f17d2af429de9eb51634442e68d256e45db598fa5b93f`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992e17fe5e242e429af20f08dd79251d7dde83da05c0949fd6f615a4c6cda50`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:ec0cb82a46704f143f518d2ed5aeec1949374857c6b4ec15123a5880e5aed442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ecc2e8fa2e356de109aa7f2f7f0671982f5db47cd83f0578135070f75cea7b`

```dockerfile
```

-	Layers:
	-	`sha256:d4444de4d41300ff680a4d7a8bd8107667a85054ae923becf8d8d52d67cd8a92`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:81345cbd60073d1eed2e4cab4177e36e2882b2037e153b223dee90b0b06e6272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10507441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df361f50956f983565b1710ebaebc68af0115a3c2fc12cb8f904990bd459acc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:43 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ad46264e73dae72c2561c954e9817ff4235e79a0fd49ad38f3873a6c5aa9d1`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 6.8 MB (6783714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988bffa69da6735eb2f06fc8c97a1c3959b677389f519a32b3c211ec9dbfb70a`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:945fc536708ad9c2879c4876a2d65b16b9a8a7132f4a3f0da90c05c2537d7106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59709a200d1a474fe600f7c0d6585fc2aa51ca96992f7655a3e62fa617947250`

```dockerfile
```

-	Layers:
	-	`sha256:dbc9aea91757d6ec8f1f663f3b2a03b0285b174bc198cc45dc03da10f24e439e`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8aa833fc66d26e899f75e3f9f945ba5fa76265e983237a345505f0ca995203ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f126e03cc14257e4807d8cd26a4c1d8067559d06221b9eeaf9be3beee3ec74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6427f946cee9b0618c4d069e80d844144d03a456dbdf744500000c1f641cdde2`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 7.2 MB (7178561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f02ed152cea3bfd32caf8aab068be9fdb2156aab2271497dd43d7ae814e7d1c`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb21f8bef9be9756f5e583d32df515dcbfbd450ba977f837cb0f63f857d0261`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b0a86f6504b12a8107913b63855c39003be872db6ac415280e135888c0e472d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f70605d314f9661c23bde602d0dc3524968caf3f9818ec164a5f5f1d189b84`

```dockerfile
```

-	Layers:
	-	`sha256:b7423aca0cfcf54f0735cae150130f3b6d3a531ef7d52ddf1052d8433a8dc361`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:5e4bc289a6876662bd34eb6efdd9d1fa02805938399806dae8b2e491d4611b2d
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
$ docker pull nats@sha256:aab5a9b216ce3bbaee7a7f0846ac58aa568c879dedfa6c79a454479b390038e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c6bc37fed17ce4bac124a77b2c592075094cf656f19847561921bcc10ea06b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:28 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:28 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223cc0fe14f756356390ca397287a333f35321ee7aa5d078a791444fd33b389`  
		Last Modified: Wed, 21 Oct 2026 21:39:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6c2e609ce4610f4193affb5c4b46a9c0196cd5e1057f6de9408302b80b7d318a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5beef052115ebb87e7f216c95b267caae2553e16e8a541ebbd2a7728ccd0de`

```dockerfile
```

-	Layers:
	-	`sha256:9669f08d9d6c44aa287d96a252bb949b73c72491a12b0ac73ed4b654acf9d349`  
		Last Modified: Wed, 21 Oct 2026 21:39:33 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:a9f620c9f651d2e612d103bbbe865ba3a260ec990cbf3d759fb139d839ae7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec52afa8f7184abed680497a3fc4c5ada38580b474317e61a7c2f470631b68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c883fb5dd378b12615cdf94cb3c70e6ddbd0e34605b93717a0df774d0f8f8d7`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:38259cc9ae9227f8c4437510458f1b0abacaa232c6c5b9b3cc7bf15f97f0d6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caeb47aa938d90afcfe1fbed9c3e791c24700cff10de9d5af0643ff70bc4a00`

```dockerfile
```

-	Layers:
	-	`sha256:0a2575a801f7f640586a380f7fbfea6cd11cf3556514ff1238ff33f66fe7a7e0`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:4504273f14ab3199d9abe0ff3facc634e25810c25a4b45cddb32c71a4483e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee00439f5e75275db825793e6ff09a9cf901147aa3a051b1740718cbcb76216`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:53 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:53 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa19010a0adad6d7398eba080b700e1176bd837f1d0722e51ce3920cda93ee`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e8219d37fbcd7ab6057b6aa7e5d7ba9a34eae9c866d4b5bcdae4eae196cedb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457395febc366a8c314da384daf9452f29957145a6fd39d6eebf6ea4070f362c`

```dockerfile
```

-	Layers:
	-	`sha256:874cfbe4e24c1a1f6a104c49137fd22ba7ffcfcccdf2f68d0ded585afa974e0a`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:4e0bfde3368e2659cafb1d4a7a3f4da1c9317b4489fd5d8f0cbf2078c31c968e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e15f8e5ef4b5a447f0784c5739993d54dbd1b9af3ce75748d0e1f94cda56ef`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:05 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:05 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf83515a8192c3c97dcae6f0ab56b56ea8167ea0fdae5ea9d60c9610964340e`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5dc16e06f0029f12423087c0b718fa756beebe334e8d46e3d663f10708220790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d5c2e9b347d243084f92da974adec92cf065998906412937da25719c661d75`

```dockerfile
```

-	Layers:
	-	`sha256:2bb860c658981b26fc64e11a5e7b92fe28fa01031c53d3c0e5476a6b99493b6a`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 8.8 KB (8772 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:1c35ed5bcd47a38014d6c5695243b37385386728bb453eab0fd4c990579719e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9c24137b73331eb37bd439c6805c54c05ffb1144ca12868174f31a6821ae9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:55 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b135fa1ffd3266668e8c8eb14e76afff775562dc18726b5e27d4a8b0a54626f`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d8af66f10bf95d4a872588d861b8ef43992c6a774dcfb0cc4db84d55969bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d08489f3b54d61e9515168b1c746e47da74a2b28cb99f97f46b9a207ea003`

```dockerfile
```

-	Layers:
	-	`sha256:e2c41b3ca516add59888f2ae95c261aa0e56500bee1d0f37c4ae9b500b00421e`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:35873279f8321d59b0a2e2b696907f865e6935a3e22f1018100bb5e4280ec37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f78d7da0d010c71e1615bb359a533fdd9b3e73bff64db295c6ba42a0db1f4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c6bc1b4f36c69a56ccda9abdc0891e9b3a139162ce7dd4a9dd73542b77fa9`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:140cde56951200b7c327ab99fcad7f77e90ece8e8f44c4ba6e5720116d443e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617988311d35fa4ea09ca95797c7543025cf192a0b700950f2f94a68fa1f88b`

```dockerfile
```

-	Layers:
	-	`sha256:d98a9f8aefade9e748dbb6eb30a626a725d91af7ac8a233772cd218f2d001965`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:405fa303153185db4c2dc6f97b8e6c9adbcc73d203f10f781934eb773f52f946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:ef5db7544301a94decbd80e2a0e1ca29d1876b8cfd8ae43fe0c5fec230027230
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132952095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db84094fe99fb6eb40016e0d3204a428727b0dad54cd18e3cd9737818db24bc7`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:17:53 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:17:57 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba03ab62f64ad469caaf36a33570e01c7e4d5fc2459a791483a1fcd0b92b3`  
		Last Modified: Wed, 14 Oct 2026 00:18:05 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6422390f3d783628201decfb19456261171b57bb5d474a7f5dad4bbf8049a`  
		Last Modified: Wed, 14 Oct 2026 00:18:06 GMT  
		Size: 7.2 MB (7150228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7764ed6e6efa458302c767331096f08be3f30b5d741b655d438d94e18d9e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47786cf967ece81c463164ed19b4fd48ad1f5f5f89f2f89604123068b9c88888`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f329c6591d0944e403444dc893637483ca8e8358d7cebd569e976c7aac54c`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341b54545677fd007a68fc4529ed03224049bd813ff71977758ac4aaa6fd7a00`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:405fa303153185db4c2dc6f97b8e6c9adbcc73d203f10f781934eb773f52f946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:ef5db7544301a94decbd80e2a0e1ca29d1876b8cfd8ae43fe0c5fec230027230
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132952095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db84094fe99fb6eb40016e0d3204a428727b0dad54cd18e3cd9737818db24bc7`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:17:53 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:17:57 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba03ab62f64ad469caaf36a33570e01c7e4d5fc2459a791483a1fcd0b92b3`  
		Last Modified: Wed, 14 Oct 2026 00:18:05 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6422390f3d783628201decfb19456261171b57bb5d474a7f5dad4bbf8049a`  
		Last Modified: Wed, 14 Oct 2026 00:18:06 GMT  
		Size: 7.2 MB (7150228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7764ed6e6efa458302c767331096f08be3f30b5d741b655d438d94e18d9e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47786cf967ece81c463164ed19b4fd48ad1f5f5f89f2f89604123068b9c88888`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f329c6591d0944e403444dc893637483ca8e8358d7cebd569e976c7aac54c`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341b54545677fd007a68fc4529ed03224049bd813ff71977758ac4aaa6fd7a00`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:5e4bc289a6876662bd34eb6efdd9d1fa02805938399806dae8b2e491d4611b2d
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
$ docker pull nats@sha256:aab5a9b216ce3bbaee7a7f0846ac58aa568c879dedfa6c79a454479b390038e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c6bc37fed17ce4bac124a77b2c592075094cf656f19847561921bcc10ea06b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:28 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:28 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223cc0fe14f756356390ca397287a333f35321ee7aa5d078a791444fd33b389`  
		Last Modified: Wed, 21 Oct 2026 21:39:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6c2e609ce4610f4193affb5c4b46a9c0196cd5e1057f6de9408302b80b7d318a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5beef052115ebb87e7f216c95b267caae2553e16e8a541ebbd2a7728ccd0de`

```dockerfile
```

-	Layers:
	-	`sha256:9669f08d9d6c44aa287d96a252bb949b73c72491a12b0ac73ed4b654acf9d349`  
		Last Modified: Wed, 21 Oct 2026 21:39:33 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:a9f620c9f651d2e612d103bbbe865ba3a260ec990cbf3d759fb139d839ae7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec52afa8f7184abed680497a3fc4c5ada38580b474317e61a7c2f470631b68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c883fb5dd378b12615cdf94cb3c70e6ddbd0e34605b93717a0df774d0f8f8d7`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:38259cc9ae9227f8c4437510458f1b0abacaa232c6c5b9b3cc7bf15f97f0d6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caeb47aa938d90afcfe1fbed9c3e791c24700cff10de9d5af0643ff70bc4a00`

```dockerfile
```

-	Layers:
	-	`sha256:0a2575a801f7f640586a380f7fbfea6cd11cf3556514ff1238ff33f66fe7a7e0`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:4504273f14ab3199d9abe0ff3facc634e25810c25a4b45cddb32c71a4483e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee00439f5e75275db825793e6ff09a9cf901147aa3a051b1740718cbcb76216`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:53 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:53 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa19010a0adad6d7398eba080b700e1176bd837f1d0722e51ce3920cda93ee`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e8219d37fbcd7ab6057b6aa7e5d7ba9a34eae9c866d4b5bcdae4eae196cedb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457395febc366a8c314da384daf9452f29957145a6fd39d6eebf6ea4070f362c`

```dockerfile
```

-	Layers:
	-	`sha256:874cfbe4e24c1a1f6a104c49137fd22ba7ffcfcccdf2f68d0ded585afa974e0a`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:4e0bfde3368e2659cafb1d4a7a3f4da1c9317b4489fd5d8f0cbf2078c31c968e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e15f8e5ef4b5a447f0784c5739993d54dbd1b9af3ce75748d0e1f94cda56ef`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:05 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:05 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf83515a8192c3c97dcae6f0ab56b56ea8167ea0fdae5ea9d60c9610964340e`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5dc16e06f0029f12423087c0b718fa756beebe334e8d46e3d663f10708220790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d5c2e9b347d243084f92da974adec92cf065998906412937da25719c661d75`

```dockerfile
```

-	Layers:
	-	`sha256:2bb860c658981b26fc64e11a5e7b92fe28fa01031c53d3c0e5476a6b99493b6a`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 8.8 KB (8772 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:1c35ed5bcd47a38014d6c5695243b37385386728bb453eab0fd4c990579719e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9c24137b73331eb37bd439c6805c54c05ffb1144ca12868174f31a6821ae9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:55 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b135fa1ffd3266668e8c8eb14e76afff775562dc18726b5e27d4a8b0a54626f`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8d8af66f10bf95d4a872588d861b8ef43992c6a774dcfb0cc4db84d55969bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d08489f3b54d61e9515168b1c746e47da74a2b28cb99f97f46b9a207ea003`

```dockerfile
```

-	Layers:
	-	`sha256:e2c41b3ca516add59888f2ae95c261aa0e56500bee1d0f37c4ae9b500b00421e`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:35873279f8321d59b0a2e2b696907f865e6935a3e22f1018100bb5e4280ec37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f78d7da0d010c71e1615bb359a533fdd9b3e73bff64db295c6ba42a0db1f4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c6bc1b4f36c69a56ccda9abdc0891e9b3a139162ce7dd4a9dd73542b77fa9`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:140cde56951200b7c327ab99fcad7f77e90ece8e8f44c4ba6e5720116d443e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617988311d35fa4ea09ca95797c7543025cf192a0b700950f2f94a68fa1f88b`

```dockerfile
```

-	Layers:
	-	`sha256:d98a9f8aefade9e748dbb6eb30a626a725d91af7ac8a233772cd218f2d001965`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:b2287dbcfb5d6109989f461722491e838a4f0a1d5e2e1378bf8aec586c51ce92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:96327073d302690b35229a0b4744f61dbb798fd84f134ed19334919d64e971b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234114894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c51a5e1696c014b8a7d3a77363579d5ce5bd6de3f3e4535d2470a852c8aa14`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:37 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.14.8
# Tue, 13 Oct 2026 23:04:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Tue, 13 Oct 2026 23:04:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:11 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a410971d94e44d881512d8c1ef628611e50b8250facd3b0314b24e49b23f19`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b03a2a6c8f68961e29e10671a35601b34b2097c277d03d0fd1f62b4214a357`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28c79a2f78e4e687f0c4c9f6a33bcf8a4b5d26f41e03999df7e7472306334d9`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e89c021fe467b771dd7f19cdac0f060fa9a1f9fe836b953b087ecdbf06328e6`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1077df809bad88b5601e4d1b1914f9b3505ce05d4ec12d9ab180f5426e2cd8`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf51c023b435659fabc1d18ef9c280dd88686ee6b6163938d509e4a89d95a28`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9863d3e47a46aabbaa79a0ac1430cc17301338b8e1d7e5c04779cc8e999447`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 334.2 KB (334164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401277b881d6f96990d448deaba1e5c9f41545c42876c774585ac4a9c5bf99`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 7.5 MB (7481651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4218bf48adc505814a193e9b6dc746190499fcb779bff409b590e90d9492af9a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288993825a41ba7cfc5779b70f5abb54a6a5c2ee6dd4840fc861cc745afe294a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f91fdf3ab63b82bd69fd8a3d9d30a68fde93479f1995f77963341943a8ba4e1`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979828ab00791cee5ae186dff785acd2ec4d51eb3d00886dd3cb1c8a62aff10e`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:b2287dbcfb5d6109989f461722491e838a4f0a1d5e2e1378bf8aec586c51ce92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:96327073d302690b35229a0b4744f61dbb798fd84f134ed19334919d64e971b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234114894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c51a5e1696c014b8a7d3a77363579d5ce5bd6de3f3e4535d2470a852c8aa14`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:37 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.14.8
# Tue, 13 Oct 2026 23:04:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Tue, 13 Oct 2026 23:04:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:11 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a410971d94e44d881512d8c1ef628611e50b8250facd3b0314b24e49b23f19`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b03a2a6c8f68961e29e10671a35601b34b2097c277d03d0fd1f62b4214a357`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28c79a2f78e4e687f0c4c9f6a33bcf8a4b5d26f41e03999df7e7472306334d9`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e89c021fe467b771dd7f19cdac0f060fa9a1f9fe836b953b087ecdbf06328e6`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1077df809bad88b5601e4d1b1914f9b3505ce05d4ec12d9ab180f5426e2cd8`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf51c023b435659fabc1d18ef9c280dd88686ee6b6163938d509e4a89d95a28`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9863d3e47a46aabbaa79a0ac1430cc17301338b8e1d7e5c04779cc8e999447`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 334.2 KB (334164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401277b881d6f96990d448deaba1e5c9f41545c42876c774585ac4a9c5bf99`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 7.5 MB (7481651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4218bf48adc505814a193e9b6dc746190499fcb779bff409b590e90d9492af9a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288993825a41ba7cfc5779b70f5abb54a6a5c2ee6dd4840fc861cc745afe294a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f91fdf3ab63b82bd69fd8a3d9d30a68fde93479f1995f77963341943a8ba4e1`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979828ab00791cee5ae186dff785acd2ec4d51eb3d00886dd3cb1c8a62aff10e`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8`

```console
$ docker pull nats@sha256:cd9f7847804d9978d0a41e6674ffa134dd920a852a608f256cab4ee90c8c1ff3
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
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14.8` - linux; amd64

```console
$ docker pull nats@sha256:aab5a9b216ce3bbaee7a7f0846ac58aa568c879dedfa6c79a454479b390038e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c6bc37fed17ce4bac124a77b2c592075094cf656f19847561921bcc10ea06b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:28 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:28 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223cc0fe14f756356390ca397287a333f35321ee7aa5d078a791444fd33b389`  
		Last Modified: Wed, 21 Oct 2026 21:39:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:6c2e609ce4610f4193affb5c4b46a9c0196cd5e1057f6de9408302b80b7d318a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5beef052115ebb87e7f216c95b267caae2553e16e8a541ebbd2a7728ccd0de`

```dockerfile
```

-	Layers:
	-	`sha256:9669f08d9d6c44aa287d96a252bb949b73c72491a12b0ac73ed4b654acf9d349`  
		Last Modified: Wed, 21 Oct 2026 21:39:33 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; arm variant v6

```console
$ docker pull nats@sha256:a9f620c9f651d2e612d103bbbe865ba3a260ec990cbf3d759fb139d839ae7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec52afa8f7184abed680497a3fc4c5ada38580b474317e61a7c2f470631b68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c883fb5dd378b12615cdf94cb3c70e6ddbd0e34605b93717a0df774d0f8f8d7`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:38259cc9ae9227f8c4437510458f1b0abacaa232c6c5b9b3cc7bf15f97f0d6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caeb47aa938d90afcfe1fbed9c3e791c24700cff10de9d5af0643ff70bc4a00`

```dockerfile
```

-	Layers:
	-	`sha256:0a2575a801f7f640586a380f7fbfea6cd11cf3556514ff1238ff33f66fe7a7e0`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; arm variant v7

```console
$ docker pull nats@sha256:4504273f14ab3199d9abe0ff3facc634e25810c25a4b45cddb32c71a4483e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee00439f5e75275db825793e6ff09a9cf901147aa3a051b1740718cbcb76216`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:53 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:53 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa19010a0adad6d7398eba080b700e1176bd837f1d0722e51ce3920cda93ee`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:e8219d37fbcd7ab6057b6aa7e5d7ba9a34eae9c866d4b5bcdae4eae196cedb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457395febc366a8c314da384daf9452f29957145a6fd39d6eebf6ea4070f362c`

```dockerfile
```

-	Layers:
	-	`sha256:874cfbe4e24c1a1f6a104c49137fd22ba7ffcfcccdf2f68d0ded585afa974e0a`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:4e0bfde3368e2659cafb1d4a7a3f4da1c9317b4489fd5d8f0cbf2078c31c968e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e15f8e5ef4b5a447f0784c5739993d54dbd1b9af3ce75748d0e1f94cda56ef`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:05 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:05 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf83515a8192c3c97dcae6f0ab56b56ea8167ea0fdae5ea9d60c9610964340e`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:5dc16e06f0029f12423087c0b718fa756beebe334e8d46e3d663f10708220790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d5c2e9b347d243084f92da974adec92cf065998906412937da25719c661d75`

```dockerfile
```

-	Layers:
	-	`sha256:2bb860c658981b26fc64e11a5e7b92fe28fa01031c53d3c0e5476a6b99493b6a`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 8.8 KB (8772 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; ppc64le

```console
$ docker pull nats@sha256:1c35ed5bcd47a38014d6c5695243b37385386728bb453eab0fd4c990579719e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9c24137b73331eb37bd439c6805c54c05ffb1144ca12868174f31a6821ae9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:55 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b135fa1ffd3266668e8c8eb14e76afff775562dc18726b5e27d4a8b0a54626f`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:8d8af66f10bf95d4a872588d861b8ef43992c6a774dcfb0cc4db84d55969bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d08489f3b54d61e9515168b1c746e47da74a2b28cb99f97f46b9a207ea003`

```dockerfile
```

-	Layers:
	-	`sha256:e2c41b3ca516add59888f2ae95c261aa0e56500bee1d0f37c4ae9b500b00421e`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; s390x

```console
$ docker pull nats@sha256:35873279f8321d59b0a2e2b696907f865e6935a3e22f1018100bb5e4280ec37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f78d7da0d010c71e1615bb359a533fdd9b3e73bff64db295c6ba42a0db1f4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c6bc1b4f36c69a56ccda9abdc0891e9b3a139162ce7dd4a9dd73542b77fa9`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:140cde56951200b7c327ab99fcad7f77e90ece8e8f44c4ba6e5720116d443e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617988311d35fa4ea09ca95797c7543025cf192a0b700950f2f94a68fa1f88b`

```dockerfile
```

-	Layers:
	-	`sha256:d98a9f8aefade9e748dbb6eb30a626a725d91af7ac8a233772cd218f2d001965`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:ef5db7544301a94decbd80e2a0e1ca29d1876b8cfd8ae43fe0c5fec230027230
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132952095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db84094fe99fb6eb40016e0d3204a428727b0dad54cd18e3cd9737818db24bc7`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:17:53 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:17:57 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba03ab62f64ad469caaf36a33570e01c7e4d5fc2459a791483a1fcd0b92b3`  
		Last Modified: Wed, 14 Oct 2026 00:18:05 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6422390f3d783628201decfb19456261171b57bb5d474a7f5dad4bbf8049a`  
		Last Modified: Wed, 14 Oct 2026 00:18:06 GMT  
		Size: 7.2 MB (7150228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7764ed6e6efa458302c767331096f08be3f30b5d741b655d438d94e18d9e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47786cf967ece81c463164ed19b4fd48ad1f5f5f89f2f89604123068b9c88888`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f329c6591d0944e403444dc893637483ca8e8358d7cebd569e976c7aac54c`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341b54545677fd007a68fc4529ed03224049bd813ff71977758ac4aaa6fd7a00`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-alpine`

```console
$ docker pull nats@sha256:85afd2041c88687ef65d5170a9e4cb16e5bc02d3b753d34aee14336db8720b3c
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

### `nats:2.14.8-alpine` - linux; amd64

```console
$ docker pull nats@sha256:12f2961f14c98a174431c7692853e59808db8b3ef2c94f2196c7378dbacc9942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6344e625cd75436cfd736beff133f83043ddbf4d1a8c846ee869edd74e63ccb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5271332cdb059e878e2c7798f6e22aa7579805a92255476e7b306c30d30ba36e`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 7.4 MB (7362201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5e082d572a21cca315d03f967b6d4b476bd2df90b4cb165c32490010c4d72c`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059132919cb5da11a5f0de51abe75da9643291e846cdd96686f1dc2f7cded894`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:35cc69d0d268f43b3b2d071da14e2f8e0491f144e84f65b8a59178e9afa206eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076e6d7c4b49ca67162b51bf1048176ca1aa2f6ff1a400571477286ed63098e2`

```dockerfile
```

-	Layers:
	-	`sha256:6e5191ce4adf4d8b6c03cb64aeb54aa4168b3b8eb3825bd228ac7777c56857a9`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:1e285872ddf35648b7032ce8f5123f5040ca4a5b9d0f59d4b455a7b6bac8d685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098bc76eef0e155b0594589f629ef5f9a9cb417cbdf0e5b1ee57593a278fe7ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7859b64665eb40e7ead7904e3778c114ce1cb428012a1ba297b59356d01433`  
		Last Modified: Wed, 21 Oct 2026 21:13:20 GMT  
		Size: 7.1 MB (7102140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a45e00fcff2d0db010c1c0d89adb85f10ff19c106979c8adcbac9b0f1e86e6`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370317a20d7f3c013e6d28fc5f3f0783e4ff3e905bfcb93744b581fe82afbffa`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:fa0e9523c4c19eb1bdfaadfcc303ce62c83dbc6bc181773d7a4465996a009896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fd298691f434d9210ccf489f2960663da1dbebbdcf13784a36db9efc60b410`

```dockerfile
```

-	Layers:
	-	`sha256:6e10cae3eb69049db10b30ee2f9c4870ded0e3070bbcac84d0fd9f68177feaf4`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8a50b46237c0175084692db8edb2025abda49648f08b37ac1861b355deaa8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10305138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf22f20fdf72a5ba2c39778462ac8286a0cfddec3b01a5dc79ba9203e79c1b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f4d992bdbadae5a2b261e763b2a51fb63bf70ff20bb7f55ce36727ee95f2d`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 7.1 MB (7088762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9cbd3e39dfb6d636008d64295d4c1504b0fb6e894d9bc29acf41589ea068a8`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6877937f4d96a43ce758a6ddecdb430e529bcd1f0880565d3c0bd34d278c20`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:19f022aadc1b6a84dcf31f2cbea75337c52563841faa1e84bebcf9868b53a8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f8f85c0cf528edf9992f19af28798cddcd4b60ec075f659c747cc48ca3763f`

```dockerfile
```

-	Layers:
	-	`sha256:7ce704fc3561d52fb6f92bad67706df6a239a8454e53d35625159cdfa1468e93`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7bf6a80dc39377f2e35accd7a674f03c329d501b7b7b4a7b777d6a19cd17fad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10838026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef458968936c7b240e0f6b77b3f7709569aaca6e1dd51bd03efc49f564fd7b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d14f3db5df0344964f5258f2e5386b22fc51bc6323b7816a0c73bc7c2c2eb9e`  
		Last Modified: Wed, 21 Oct 2026 21:06:22 GMT  
		Size: 6.7 MB (6709678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d4b03a26c768a0135f17d2af429de9eb51634442e68d256e45db598fa5b93f`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992e17fe5e242e429af20f08dd79251d7dde83da05c0949fd6f615a4c6cda50`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:ec0cb82a46704f143f518d2ed5aeec1949374857c6b4ec15123a5880e5aed442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ecc2e8fa2e356de109aa7f2f7f0671982f5db47cd83f0578135070f75cea7b`

```dockerfile
```

-	Layers:
	-	`sha256:d4444de4d41300ff680a4d7a8bd8107667a85054ae923becf8d8d52d67cd8a92`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:81345cbd60073d1eed2e4cab4177e36e2882b2037e153b223dee90b0b06e6272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10507441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df361f50956f983565b1710ebaebc68af0115a3c2fc12cb8f904990bd459acc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:43 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ad46264e73dae72c2561c954e9817ff4235e79a0fd49ad38f3873a6c5aa9d1`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 6.8 MB (6783714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988bffa69da6735eb2f06fc8c97a1c3959b677389f519a32b3c211ec9dbfb70a`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:945fc536708ad9c2879c4876a2d65b16b9a8a7132f4a3f0da90c05c2537d7106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59709a200d1a474fe600f7c0d6585fc2aa51ca96992f7655a3e62fa617947250`

```dockerfile
```

-	Layers:
	-	`sha256:dbc9aea91757d6ec8f1f663f3b2a03b0285b174bc198cc45dc03da10f24e439e`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; s390x

```console
$ docker pull nats@sha256:8aa833fc66d26e899f75e3f9f945ba5fa76265e983237a345505f0ca995203ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f126e03cc14257e4807d8cd26a4c1d8067559d06221b9eeaf9be3beee3ec74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6427f946cee9b0618c4d069e80d844144d03a456dbdf744500000c1f641cdde2`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 7.2 MB (7178561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f02ed152cea3bfd32caf8aab068be9fdb2156aab2271497dd43d7ae814e7d1c`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb21f8bef9be9756f5e583d32df515dcbfbd450ba977f837cb0f63f857d0261`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:b0a86f6504b12a8107913b63855c39003be872db6ac415280e135888c0e472d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f70605d314f9661c23bde602d0dc3524968caf3f9818ec164a5f5f1d189b84`

```dockerfile
```

-	Layers:
	-	`sha256:b7423aca0cfcf54f0735cae150130f3b6d3a531ef7d52ddf1052d8433a8dc361`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-alpine3.22`

```console
$ docker pull nats@sha256:85afd2041c88687ef65d5170a9e4cb16e5bc02d3b753d34aee14336db8720b3c
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

### `nats:2.14.8-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:12f2961f14c98a174431c7692853e59808db8b3ef2c94f2196c7378dbacc9942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6344e625cd75436cfd736beff133f83043ddbf4d1a8c846ee869edd74e63ccb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5271332cdb059e878e2c7798f6e22aa7579805a92255476e7b306c30d30ba36e`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 7.4 MB (7362201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5e082d572a21cca315d03f967b6d4b476bd2df90b4cb165c32490010c4d72c`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059132919cb5da11a5f0de51abe75da9643291e846cdd96686f1dc2f7cded894`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:35cc69d0d268f43b3b2d071da14e2f8e0491f144e84f65b8a59178e9afa206eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076e6d7c4b49ca67162b51bf1048176ca1aa2f6ff1a400571477286ed63098e2`

```dockerfile
```

-	Layers:
	-	`sha256:6e5191ce4adf4d8b6c03cb64aeb54aa4168b3b8eb3825bd228ac7777c56857a9`  
		Last Modified: Wed, 21 Oct 2026 21:06:57 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:1e285872ddf35648b7032ce8f5123f5040ca4a5b9d0f59d4b455a7b6bac8d685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098bc76eef0e155b0594589f629ef5f9a9cb417cbdf0e5b1ee57593a278fe7ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:13:15 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:13:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:13:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:15 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f7859b64665eb40e7ead7904e3778c114ce1cb428012a1ba297b59356d01433`  
		Last Modified: Wed, 21 Oct 2026 21:13:20 GMT  
		Size: 7.1 MB (7102140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a45e00fcff2d0db010c1c0d89adb85f10ff19c106979c8adcbac9b0f1e86e6`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370317a20d7f3c013e6d28fc5f3f0783e4ff3e905bfcb93744b581fe82afbffa`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:fa0e9523c4c19eb1bdfaadfcc303ce62c83dbc6bc181773d7a4465996a009896
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fd298691f434d9210ccf489f2960663da1dbebbdcf13784a36db9efc60b410`

```dockerfile
```

-	Layers:
	-	`sha256:6e10cae3eb69049db10b30ee2f9c4870ded0e3070bbcac84d0fd9f68177feaf4`  
		Last Modified: Wed, 21 Oct 2026 21:13:19 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:c8a50b46237c0175084692db8edb2025abda49648f08b37ac1861b355deaa8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10305138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf22f20fdf72a5ba2c39778462ac8286a0cfddec3b01a5dc79ba9203e79c1b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:09:34 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:34 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52f4d992bdbadae5a2b261e763b2a51fb63bf70ff20bb7f55ce36727ee95f2d`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 7.1 MB (7088762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9cbd3e39dfb6d636008d64295d4c1504b0fb6e894d9bc29acf41589ea068a8`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6877937f4d96a43ce758a6ddecdb430e529bcd1f0880565d3c0bd34d278c20`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:19f022aadc1b6a84dcf31f2cbea75337c52563841faa1e84bebcf9868b53a8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f8f85c0cf528edf9992f19af28798cddcd4b60ec075f659c747cc48ca3763f`

```dockerfile
```

-	Layers:
	-	`sha256:7ce704fc3561d52fb6f92bad67706df6a239a8454e53d35625159cdfa1468e93`  
		Last Modified: Wed, 21 Oct 2026 21:09:39 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:7bf6a80dc39377f2e35accd7a674f03c329d501b7b7b4a7b777d6a19cd17fad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10838026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef458968936c7b240e0f6b77b3f7709569aaca6e1dd51bd03efc49f564fd7b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:17 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:17 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:17 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d14f3db5df0344964f5258f2e5386b22fc51bc6323b7816a0c73bc7c2c2eb9e`  
		Last Modified: Wed, 21 Oct 2026 21:06:22 GMT  
		Size: 6.7 MB (6709678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d4b03a26c768a0135f17d2af429de9eb51634442e68d256e45db598fa5b93f`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992e17fe5e242e429af20f08dd79251d7dde83da05c0949fd6f615a4c6cda50`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:ec0cb82a46704f143f518d2ed5aeec1949374857c6b4ec15123a5880e5aed442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ecc2e8fa2e356de109aa7f2f7f0671982f5db47cd83f0578135070f75cea7b`

```dockerfile
```

-	Layers:
	-	`sha256:d4444de4d41300ff680a4d7a8bd8107667a85054ae923becf8d8d52d67cd8a92`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 14.3 KB (14308 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:81345cbd60073d1eed2e4cab4177e36e2882b2037e153b223dee90b0b06e6272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10507441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df361f50956f983565b1710ebaebc68af0115a3c2fc12cb8f904990bd459acc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:43 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ad46264e73dae72c2561c954e9817ff4235e79a0fd49ad38f3873a6c5aa9d1`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 6.8 MB (6783714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988bffa69da6735eb2f06fc8c97a1c3959b677389f519a32b3c211ec9dbfb70a`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:945fc536708ad9c2879c4876a2d65b16b9a8a7132f4a3f0da90c05c2537d7106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59709a200d1a474fe600f7c0d6585fc2aa51ca96992f7655a3e62fa617947250`

```dockerfile
```

-	Layers:
	-	`sha256:dbc9aea91757d6ec8f1f663f3b2a03b0285b174bc198cc45dc03da10f24e439e`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 14.2 KB (14248 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:8aa833fc66d26e899f75e3f9f945ba5fa76265e983237a345505f0ca995203ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f126e03cc14257e4807d8cd26a4c1d8067559d06221b9eeaf9be3beee3ec74d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
ENV NATS_SERVER=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Wed, 21 Oct 2026 21:06:53 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6427f946cee9b0618c4d069e80d844144d03a456dbdf744500000c1f641cdde2`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 7.2 MB (7178561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f02ed152cea3bfd32caf8aab068be9fdb2156aab2271497dd43d7ae814e7d1c`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 558.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb21f8bef9be9756f5e583d32df515dcbfbd450ba977f837cb0f63f857d0261`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:b0a86f6504b12a8107913b63855c39003be872db6ac415280e135888c0e472d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56f70605d314f9661c23bde602d0dc3524968caf3f9818ec164a5f5f1d189b84`

```dockerfile
```

-	Layers:
	-	`sha256:b7423aca0cfcf54f0735cae150130f3b6d3a531ef7d52ddf1052d8433a8dc361`  
		Last Modified: Wed, 21 Oct 2026 21:07:01 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-linux`

```console
$ docker pull nats@sha256:5e4bc289a6876662bd34eb6efdd9d1fa02805938399806dae8b2e491d4611b2d
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

### `nats:2.14.8-linux` - linux; amd64

```console
$ docker pull nats@sha256:aab5a9b216ce3bbaee7a7f0846ac58aa568c879dedfa6c79a454479b390038e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c6bc37fed17ce4bac124a77b2c592075094cf656f19847561921bcc10ea06b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:28 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:28 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223cc0fe14f756356390ca397287a333f35321ee7aa5d078a791444fd33b389`  
		Last Modified: Wed, 21 Oct 2026 21:39:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6c2e609ce4610f4193affb5c4b46a9c0196cd5e1057f6de9408302b80b7d318a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5beef052115ebb87e7f216c95b267caae2553e16e8a541ebbd2a7728ccd0de`

```dockerfile
```

-	Layers:
	-	`sha256:9669f08d9d6c44aa287d96a252bb949b73c72491a12b0ac73ed4b654acf9d349`  
		Last Modified: Wed, 21 Oct 2026 21:39:33 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:a9f620c9f651d2e612d103bbbe865ba3a260ec990cbf3d759fb139d839ae7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec52afa8f7184abed680497a3fc4c5ada38580b474317e61a7c2f470631b68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c883fb5dd378b12615cdf94cb3c70e6ddbd0e34605b93717a0df774d0f8f8d7`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:38259cc9ae9227f8c4437510458f1b0abacaa232c6c5b9b3cc7bf15f97f0d6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caeb47aa938d90afcfe1fbed9c3e791c24700cff10de9d5af0643ff70bc4a00`

```dockerfile
```

-	Layers:
	-	`sha256:0a2575a801f7f640586a380f7fbfea6cd11cf3556514ff1238ff33f66fe7a7e0`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:4504273f14ab3199d9abe0ff3facc634e25810c25a4b45cddb32c71a4483e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee00439f5e75275db825793e6ff09a9cf901147aa3a051b1740718cbcb76216`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:53 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:53 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa19010a0adad6d7398eba080b700e1176bd837f1d0722e51ce3920cda93ee`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:e8219d37fbcd7ab6057b6aa7e5d7ba9a34eae9c866d4b5bcdae4eae196cedb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457395febc366a8c314da384daf9452f29957145a6fd39d6eebf6ea4070f362c`

```dockerfile
```

-	Layers:
	-	`sha256:874cfbe4e24c1a1f6a104c49137fd22ba7ffcfcccdf2f68d0ded585afa974e0a`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:4e0bfde3368e2659cafb1d4a7a3f4da1c9317b4489fd5d8f0cbf2078c31c968e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e15f8e5ef4b5a447f0784c5739993d54dbd1b9af3ce75748d0e1f94cda56ef`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:05 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:05 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf83515a8192c3c97dcae6f0ab56b56ea8167ea0fdae5ea9d60c9610964340e`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5dc16e06f0029f12423087c0b718fa756beebe334e8d46e3d663f10708220790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d5c2e9b347d243084f92da974adec92cf065998906412937da25719c661d75`

```dockerfile
```

-	Layers:
	-	`sha256:2bb860c658981b26fc64e11a5e7b92fe28fa01031c53d3c0e5476a6b99493b6a`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 8.8 KB (8772 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:1c35ed5bcd47a38014d6c5695243b37385386728bb453eab0fd4c990579719e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9c24137b73331eb37bd439c6805c54c05ffb1144ca12868174f31a6821ae9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:55 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b135fa1ffd3266668e8c8eb14e76afff775562dc18726b5e27d4a8b0a54626f`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d8af66f10bf95d4a872588d861b8ef43992c6a774dcfb0cc4db84d55969bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d08489f3b54d61e9515168b1c746e47da74a2b28cb99f97f46b9a207ea003`

```dockerfile
```

-	Layers:
	-	`sha256:e2c41b3ca516add59888f2ae95c261aa0e56500bee1d0f37c4ae9b500b00421e`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; s390x

```console
$ docker pull nats@sha256:35873279f8321d59b0a2e2b696907f865e6935a3e22f1018100bb5e4280ec37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f78d7da0d010c71e1615bb359a533fdd9b3e73bff64db295c6ba42a0db1f4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c6bc1b4f36c69a56ccda9abdc0891e9b3a139162ce7dd4a9dd73542b77fa9`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:140cde56951200b7c327ab99fcad7f77e90ece8e8f44c4ba6e5720116d443e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617988311d35fa4ea09ca95797c7543025cf192a0b700950f2f94a68fa1f88b`

```dockerfile
```

-	Layers:
	-	`sha256:d98a9f8aefade9e748dbb6eb30a626a725d91af7ac8a233772cd218f2d001965`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-nanoserver`

```console
$ docker pull nats@sha256:405fa303153185db4c2dc6f97b8e6c9adbcc73d203f10f781934eb773f52f946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14.8-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:ef5db7544301a94decbd80e2a0e1ca29d1876b8cfd8ae43fe0c5fec230027230
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132952095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db84094fe99fb6eb40016e0d3204a428727b0dad54cd18e3cd9737818db24bc7`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:17:53 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:17:57 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba03ab62f64ad469caaf36a33570e01c7e4d5fc2459a791483a1fcd0b92b3`  
		Last Modified: Wed, 14 Oct 2026 00:18:05 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6422390f3d783628201decfb19456261171b57bb5d474a7f5dad4bbf8049a`  
		Last Modified: Wed, 14 Oct 2026 00:18:06 GMT  
		Size: 7.2 MB (7150228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7764ed6e6efa458302c767331096f08be3f30b5d741b655d438d94e18d9e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47786cf967ece81c463164ed19b4fd48ad1f5f5f89f2f89604123068b9c88888`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f329c6591d0944e403444dc893637483ca8e8358d7cebd569e976c7aac54c`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341b54545677fd007a68fc4529ed03224049bd813ff71977758ac4aaa6fd7a00`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:405fa303153185db4c2dc6f97b8e6c9adbcc73d203f10f781934eb773f52f946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14.8-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:ef5db7544301a94decbd80e2a0e1ca29d1876b8cfd8ae43fe0c5fec230027230
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.0 MB (132952095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db84094fe99fb6eb40016e0d3204a428727b0dad54cd18e3cd9737818db24bc7`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:17:53 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:17:57 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:17:58 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:17:59 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba03ab62f64ad469caaf36a33570e01c7e4d5fc2459a791483a1fcd0b92b3`  
		Last Modified: Wed, 14 Oct 2026 00:18:05 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6422390f3d783628201decfb19456261171b57bb5d474a7f5dad4bbf8049a`  
		Last Modified: Wed, 14 Oct 2026 00:18:06 GMT  
		Size: 7.2 MB (7150228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7764ed6e6efa458302c767331096f08be3f30b5d741b655d438d94e18d9e6`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47786cf967ece81c463164ed19b4fd48ad1f5f5f89f2f89604123068b9c88888`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f329c6591d0944e403444dc893637483ca8e8358d7cebd569e976c7aac54c`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341b54545677fd007a68fc4529ed03224049bd813ff71977758ac4aaa6fd7a00`  
		Last Modified: Wed, 14 Oct 2026 00:18:04 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-scratch`

```console
$ docker pull nats@sha256:5e4bc289a6876662bd34eb6efdd9d1fa02805938399806dae8b2e491d4611b2d
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

### `nats:2.14.8-scratch` - linux; amd64

```console
$ docker pull nats@sha256:aab5a9b216ce3bbaee7a7f0846ac58aa568c879dedfa6c79a454479b390038e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56c6bc37fed17ce4bac124a77b2c592075094cf656f19847561921bcc10ea06b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:28 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:28 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:28 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:28 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223cc0fe14f756356390ca397287a333f35321ee7aa5d078a791444fd33b389`  
		Last Modified: Wed, 21 Oct 2026 21:39:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6c2e609ce4610f4193affb5c4b46a9c0196cd5e1057f6de9408302b80b7d318a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5beef052115ebb87e7f216c95b267caae2553e16e8a541ebbd2a7728ccd0de`

```dockerfile
```

-	Layers:
	-	`sha256:9669f08d9d6c44aa287d96a252bb949b73c72491a12b0ac73ed4b654acf9d349`  
		Last Modified: Wed, 21 Oct 2026 21:39:33 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:a9f620c9f651d2e612d103bbbe865ba3a260ec990cbf3d759fb139d839ae7b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec52afa8f7184abed680497a3fc4c5ada38580b474317e61a7c2f470631b68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:48 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:48 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:48 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:48 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c883fb5dd378b12615cdf94cb3c70e6ddbd0e34605b93717a0df774d0f8f8d7`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:38259cc9ae9227f8c4437510458f1b0abacaa232c6c5b9b3cc7bf15f97f0d6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6caeb47aa938d90afcfe1fbed9c3e791c24700cff10de9d5af0643ff70bc4a00`

```dockerfile
```

-	Layers:
	-	`sha256:0a2575a801f7f640586a380f7fbfea6cd11cf3556514ff1238ff33f66fe7a7e0`  
		Last Modified: Wed, 21 Oct 2026 22:09:52 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:4504273f14ab3199d9abe0ff3facc634e25810c25a4b45cddb32c71a4483e6b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee00439f5e75275db825793e6ff09a9cf901147aa3a051b1740718cbcb76216`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:53 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:53 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:53 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:53 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aa19010a0adad6d7398eba080b700e1176bd837f1d0722e51ce3920cda93ee`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:e8219d37fbcd7ab6057b6aa7e5d7ba9a34eae9c866d4b5bcdae4eae196cedb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457395febc366a8c314da384daf9452f29957145a6fd39d6eebf6ea4070f362c`

```dockerfile
```

-	Layers:
	-	`sha256:874cfbe4e24c1a1f6a104c49137fd22ba7ffcfcccdf2f68d0ded585afa974e0a`  
		Last Modified: Wed, 21 Oct 2026 22:01:58 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:4e0bfde3368e2659cafb1d4a7a3f4da1c9317b4489fd5d8f0cbf2078c31c968e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e15f8e5ef4b5a447f0784c5739993d54dbd1b9af3ce75748d0e1f94cda56ef`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:05 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:05 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:05 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:05 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf83515a8192c3c97dcae6f0ab56b56ea8167ea0fdae5ea9d60c9610964340e`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5dc16e06f0029f12423087c0b718fa756beebe334e8d46e3d663f10708220790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d5c2e9b347d243084f92da974adec92cf065998906412937da25719c661d75`

```dockerfile
```

-	Layers:
	-	`sha256:2bb860c658981b26fc64e11a5e7b92fe28fa01031c53d3c0e5476a6b99493b6a`  
		Last Modified: Wed, 21 Oct 2026 22:17:10 GMT  
		Size: 8.8 KB (8772 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:1c35ed5bcd47a38014d6c5695243b37385386728bb453eab0fd4c990579719e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6365209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a9c24137b73331eb37bd439c6805c54c05ffb1144ca12868174f31a6821ae9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:54 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:55 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:55 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:8e733d2dabe5b50ef253d4c7d0ad01b0f7479fea77abbaa19e06e89a3d8376ac`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.4 MB (6364700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b135fa1ffd3266668e8c8eb14e76afff775562dc18726b5e27d4a8b0a54626f`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8d8af66f10bf95d4a872588d861b8ef43992c6a774dcfb0cc4db84d55969bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068d08489f3b54d61e9515168b1c746e47da74a2b28cb99f97f46b9a207ea003`

```dockerfile
```

-	Layers:
	-	`sha256:e2c41b3ca516add59888f2ae95c261aa0e56500bee1d0f37c4ae9b500b00421e`  
		Last Modified: Mon, 12 Oct 2026 16:59:09 GMT  
		Size: 8.7 KB (8714 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; s390x

```console
$ docker pull nats@sha256:35873279f8321d59b0a2e2b696907f865e6935a3e22f1018100bb5e4280ec37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f78d7da0d010c71e1615bb359a533fdd9b3e73bff64db295c6ba42a0db1f4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c6bc1b4f36c69a56ccda9abdc0891e9b3a139162ce7dd4a9dd73542b77fa9`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:140cde56951200b7c327ab99fcad7f77e90ece8e8f44c4ba6e5720116d443e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2617988311d35fa4ea09ca95797c7543025cf192a0b700950f2f94a68fa1f88b`

```dockerfile
```

-	Layers:
	-	`sha256:d98a9f8aefade9e748dbb6eb30a626a725d91af7ac8a233772cd218f2d001965`  
		Last Modified: Wed, 21 Oct 2026 22:34:32 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-windowsservercore`

```console
$ docker pull nats@sha256:b2287dbcfb5d6109989f461722491e838a4f0a1d5e2e1378bf8aec586c51ce92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14.8-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:96327073d302690b35229a0b4744f61dbb798fd84f134ed19334919d64e971b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234114894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c51a5e1696c014b8a7d3a77363579d5ce5bd6de3f3e4535d2470a852c8aa14`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:37 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.14.8
# Tue, 13 Oct 2026 23:04:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Tue, 13 Oct 2026 23:04:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:11 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a410971d94e44d881512d8c1ef628611e50b8250facd3b0314b24e49b23f19`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b03a2a6c8f68961e29e10671a35601b34b2097c277d03d0fd1f62b4214a357`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28c79a2f78e4e687f0c4c9f6a33bcf8a4b5d26f41e03999df7e7472306334d9`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e89c021fe467b771dd7f19cdac0f060fa9a1f9fe836b953b087ecdbf06328e6`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1077df809bad88b5601e4d1b1914f9b3505ce05d4ec12d9ab180f5426e2cd8`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf51c023b435659fabc1d18ef9c280dd88686ee6b6163938d509e4a89d95a28`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9863d3e47a46aabbaa79a0ac1430cc17301338b8e1d7e5c04779cc8e999447`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 334.2 KB (334164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401277b881d6f96990d448deaba1e5c9f41545c42876c774585ac4a9c5bf99`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 7.5 MB (7481651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4218bf48adc505814a193e9b6dc746190499fcb779bff409b590e90d9492af9a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288993825a41ba7cfc5779b70f5abb54a6a5c2ee6dd4840fc861cc745afe294a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f91fdf3ab63b82bd69fd8a3d9d30a68fde93479f1995f77963341943a8ba4e1`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979828ab00791cee5ae186dff785acd2ec4d51eb3d00886dd3cb1c8a62aff10e`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:b2287dbcfb5d6109989f461722491e838a4f0a1d5e2e1378bf8aec586c51ce92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.14.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:96327073d302690b35229a0b4744f61dbb798fd84f134ed19334919d64e971b1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234114894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c51a5e1696c014b8a7d3a77363579d5ce5bd6de3f3e4535d2470a852c8aa14`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:37 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.14.8
# Tue, 13 Oct 2026 23:04:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Tue, 13 Oct 2026 23:04:56 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:10 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:10 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:11 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:11 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:12 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a410971d94e44d881512d8c1ef628611e50b8250facd3b0314b24e49b23f19`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b03a2a6c8f68961e29e10671a35601b34b2097c277d03d0fd1f62b4214a357`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28c79a2f78e4e687f0c4c9f6a33bcf8a4b5d26f41e03999df7e7472306334d9`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e89c021fe467b771dd7f19cdac0f060fa9a1f9fe836b953b087ecdbf06328e6`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1077df809bad88b5601e4d1b1914f9b3505ce05d4ec12d9ab180f5426e2cd8`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf51c023b435659fabc1d18ef9c280dd88686ee6b6163938d509e4a89d95a28`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9863d3e47a46aabbaa79a0ac1430cc17301338b8e1d7e5c04779cc8e999447`  
		Last Modified: Tue, 13 Oct 2026 23:05:18 GMT  
		Size: 334.2 KB (334164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe401277b881d6f96990d448deaba1e5c9f41545c42876c774585ac4a9c5bf99`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 7.5 MB (7481651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4218bf48adc505814a193e9b6dc746190499fcb779bff409b590e90d9492af9a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.9 KB (1855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288993825a41ba7cfc5779b70f5abb54a6a5c2ee6dd4840fc861cc745afe294a`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f91fdf3ab63b82bd69fd8a3d9d30a68fde93479f1995f77963341943a8ba4e1`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979828ab00791cee5ae186dff785acd2ec4d51eb3d00886dd3cb1c8a62aff10e`  
		Last Modified: Tue, 13 Oct 2026 23:05:16 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15`

```console
$ docker pull nats@sha256:bc11c3038667593d748ef5cf8741d718df9c3038cf0e10087608148c95a8f572
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
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15` - linux; amd64

```console
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-alpine`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-alpine3.22`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-linux`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-nanoserver`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-scratch`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-windowsservercore`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1`

```console
$ docker pull nats@sha256:bc11c3038667593d748ef5cf8741d718df9c3038cf0e10087608148c95a8f572
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
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15.1` - linux; amd64

```console
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-alpine`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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

### `nats:2.15.1-alpine` - linux; amd64

```console
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-alpine3.22`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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

### `nats:2.15.1-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-linux`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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

### `nats:2.15.1-linux` - linux; amd64

```console
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-nanoserver`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15.1-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15.1-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-scratch`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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

### `nats:2.15.1-scratch` - linux; amd64

```console
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-windowsservercore`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15.1-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:2.15.1-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:9830dcddcebfa2ae80df5589985db071bc2f530f1b735a13dd8dfbdadf8e92fa
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
$ docker pull nats@sha256:76a3659dd4c61c32ab7d68c485e2ccb84861a5f1d7d6ba2f9be80b506d0ab7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4466cfaef1905e220fb31d840ed249a07839806e091972e0d9c0bddcb3f6bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:52 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:52 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a403b85ac0ec1793f433bc92129db759c03ebf0dc95d92a71fff2b914b2c5b`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 7.7 MB (7746157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73aaab427492d1ab78949b788a6ac95864a78feac8fe549dd8fd8417f30a675`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a69070fed8ed73238a104b1d7c781fb32c3e4446952b8ca419c3b201eee011`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:398f0787c39e9203a2f05d705e4e505a1733a02ce21a058db45f85ffcb427862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9d5623d1746e1100518312d3c9f5a64600031571051fdb2d2419d0a38a89a`

```dockerfile
```

-	Layers:
	-	`sha256:53ebb76d10888f5d3c0a0d8e2d9baf26c229e1188ff2c77421e3c88026ce7a1e`  
		Last Modified: Wed, 21 Oct 2026 21:06:56 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:6383a5dfcb4d858caf7b8086932fc34ecd7566832f0a666bbd4a60da3992daf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10995262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:025f01f702003035729926e1f44cfeb5f6ab8f49f3dd17f00954e7d00af5f95c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:09 GMT
ADD alpine-minirootfs-3.22.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:09 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8b01c1ccf216e14a38efcddea5c4ad9c08b5f5a4db1c00c8182ceab2fd2aa7f4`  
		Last Modified: Wed, 21 Oct 2026 20:47:14 GMT  
		Size: 3.5 MB (3501394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd305d989a7aa5f0832ec561540e02b74a3889b6175b9d755b654b9c082b88`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 7.5 MB (7492900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd37540e2647a6911a57d23e9a8b0a29eaf6395650833ea953a7aca818d6341a`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8dcaccfb5b11c67143cfcd2102cb3aafa277110b126c3768a1b99bb0f04edb7`  
		Last Modified: Wed, 21 Oct 2026 21:11:44 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:81d7fad3b07263ba61d96bfe0b38d70a7d49996c778995aa53cb060478b280c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d5db178c8e42212086cff63006928b5739ae1b0b282e24e00ba12e230aa110`

```dockerfile
```

-	Layers:
	-	`sha256:5a3badf3d61d4349f9ff67b8cf2a7b35bd34aa412555c9fbb1cd2e379f592193`  
		Last Modified: Wed, 21 Oct 2026 21:11:45 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:bdeaa15019c220dde9a7a85d204fb6f705c96dd6c5a22ca16a71cfa763080a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10700561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75cef5236da332b1971cc80e0bb5ee98d79f916c9a6c3b63f87c73d7fcc2547`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:06 GMT
ADD alpine-minirootfs-3.22.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:06 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:09:31 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:09:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:09:31 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:dae6271babf9f8c3606911d16678c58199058d8b01b54c885c91215787bb7c4f`  
		Last Modified: Wed, 21 Oct 2026 20:47:12 GMT  
		Size: 3.2 MB (3215409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2227d2de5533cbeb0fd411eda9340456aa9cbc9aa362993c3030938f9003972c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 7.5 MB (7484180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe2dde600847a937607cfc129b457e992a616549f1503d1b6e6ce6e7df3c61d`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 563.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86ea4b93d0ca4b8276d6097c44b9f501cff8945027be150957445e136058b7c`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7883f5865192054339e3ffd9f54fd635f3755129cf04f1ad49a6b10fc60d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d1dbf262cb4f6f44f5fdb9c6daa124005ce66132a9abc285f7c81f1cf5a535`

```dockerfile
```

-	Layers:
	-	`sha256:3444354a6b81cd81fb7f51075e9f7be95a98d1da80a5095912da5830023984c0`  
		Last Modified: Wed, 21 Oct 2026 21:09:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:19c6c31ec229c4f9cef92d011761bf3be6e2842d8f6b14f22ce7e8567b0273cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11179703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9533e73ebe089f0505f8647e193ad88cbf0879aee9c13fd044020e58166df9e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:11 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:11 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc669c07c1cdea7d0d4cc31a0f6e02d1a5913d8c27202b35f0260f9bbe56c38b`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 7.1 MB (7051355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cef160573e5d056d9c05515d21ee2e42dcad0a67b940c6822f7d5a8fa4eb64`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb5dea4a48423e24576c75ae61b4fc92e201bfdb0fee6fc43c9aacdb7676028`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:210012870fc9b8ad9664999dfdf603a87aa535f51b326abf03c07bc6ec3f357b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35bf80f68937f2f6d07a6fa2a51fbb9e0bc279452d918c7767db0779fdfe3239`

```dockerfile
```

-	Layers:
	-	`sha256:59748f933c40bcac014a3fcd087637cfee70454662c8e97fba65d37b851676ea`  
		Last Modified: Wed, 21 Oct 2026 21:06:15 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:70d8591237c9c6bbfba1a95fc9f8931bf173f48fe09b69e3d91ea5f71f050226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10848219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5249f9e6a0917b3c2acd599a732666ba4b395560de767517e8dddfc7c5687937`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:41 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e651a5e69d5f7df599578c29097ea833f69fb1b95922b3759765e53af6e3580`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 7.1 MB (7124492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf0d7cd5561651c281d6787003dfbe75813d1a22b29c1500de48d356b8aa785`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a393ac19e53cea80f386ca504c9cc4c0b6803bea5ffd7a4f6ec2e28d27183517`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:6d3d1ea3cdc3d1e636b42e424e43b46bc8abe1177bfa7b97620e3ec81eb4e8ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73611a72fe7d4f19b8505c9af8a7b9fd77c4d4dae39cb89b4bcea452d5801b15`

```dockerfile
```

-	Layers:
	-	`sha256:1d25af5e355210b3dc3f414e5c39be96add9498f1bf919d52edbf6fe23ff88c4`  
		Last Modified: Mon, 12 Oct 2026 16:43:56 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:b42aae79a69444d9b80e42e230f7684e67ca033d1a897897428b3add59d345ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11184154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b880be2482beff073f1b9148e1f6b23a6805b767f1075ac41e8982e525bd79e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:57 GMT
ADD alpine-minirootfs-3.22.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:57 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
ENV NATS_SERVER=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Wed, 21 Oct 2026 21:06:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Wed, 21 Oct 2026 21:06:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:892def9a1862ba6259728562cb792c81f9f0d07f388dcf297647ec5dba45d716`  
		Last Modified: Wed, 21 Oct 2026 20:46:06 GMT  
		Size: 3.6 MB (3643223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3d28a4a803378bc72b337c317567363b15e482d609c1cb3610aae99a5d6dcb`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 7.5 MB (7539962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919309d682847e21e107cc741262017272b8d061578a5be289eec0bc6f4face`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e545134dc5820b90d8eb81bec0cefa5f43ac2089d64493d5dccbe5d43d0362`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:7af084a622a64e0ba225cb31eac58124ba2349bad89d2de8b0b8a02d87b74cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35841f560093ae2039da26c44d801fe77aee513f18077e49c1a3f9218490a89a`

```dockerfile
```

-	Layers:
	-	`sha256:0e9d1839ee66208374de92dfaee272646d4f03c0909e3f378c16246f8e7571fd`  
		Last Modified: Wed, 21 Oct 2026 21:06:49 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:bc11c3038667593d748ef5cf8741d718df9c3038cf0e10087608148c95a8f572
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
	-	windows version 10.0.20348.5761; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:748abbe913d5c77b9b1a7e0f17b8eefb02864793ba39178c14af69111f741c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:c40b08dcb8443538ad8cd9417ace4d450c10a1da0d07aafcdfbea3c4b423bef9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133331055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b91d602bd3c582945c150869040e50fe23f2bed53b5b5521ef4d1911f38b95d9`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:16:38 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 14 Oct 2026 00:16:42 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 14 Oct 2026 00:16:43 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 14 Oct 2026 00:16:44 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:477613da2cf55a0762a61dd5057f1f5d30826a6c32b1bbb500ee1a461ad16ec1`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4694c18d231dbc85ebb2369af1dc5338efa7c35d55ad284f82685e88390d33`  
		Last Modified: Wed, 14 Oct 2026 00:16:50 GMT  
		Size: 7.5 MB (7529071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7e21cccfda8e413a55e0eca1834a9c6758c1d9f09a90d4acdb555061ae104b`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7d92a442c7f2f4373228814ec9cf27603fb193754ee7bce8c68d096e4ff4fb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc5796c1f65bdf4b25a777c940ffa13b3ed43e94af9141e4053c8a3dbdada18`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f552e6daadb8dab572ab49c6ad69757e6ea1a3b75165546f02cc5af622a1aeb`  
		Last Modified: Wed, 14 Oct 2026 00:16:48 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:dcfaf3d4ae4c3e827c416e43b069ac526eb4143a6709684361f04e311e5bb709
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
$ docker pull nats@sha256:fa1b31eb7aad82a03511b3df200f2b7a0c8e740f001f7abe52d28c9619a209b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b0a4334d90c08ac99dece5ce1a0bc22725ed495668b41c76be02be2d9940ab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 21:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 21:39:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 21:39:30 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 21:39:30 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 21:39:30 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d222210f6fab38f6daa14844eacc9463e5d64b3b1e10421808a9f9211d604149`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ae3f8b76b41e3d314b73eebe796dbcc82d1d38d736649bce4096c6fe624fae63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60411b3a9355508a3fc20c5c5b02cc38364d86f6ff57d9071a2b66e1b25ed80`

```dockerfile
```

-	Layers:
	-	`sha256:00e03f00f57820cf1514c30035b3b549438dcd68a4da1f632cb83aeefe0696e8`  
		Last Modified: Wed, 21 Oct 2026 21:39:35 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:90c4a38069b7eb5e1362e6e7ca05a4b29bdb25a82902ac512a8cd151bd3f6cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72a6443f0f86fa838cbc8b17dcba6aade2e9aeb90213df945318e6975ee95cf`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:09:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:09:42 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:09:43 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:09:43 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:09:43 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2189c5b1e0847f29474d9e9edeb6985a498e90972850f6b1668f509cfd74c44`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:955aabcf09432bce150d3fcc62608cd38dbd595561c8acaf0e076e0048a8a64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d256d0bfa3514b037157866f42526f2cb2a6476db4fc74a3d1ea54fffe36f965`

```dockerfile
```

-	Layers:
	-	`sha256:505dd99f9d097a77eb8393d083fa43713852d645a8c536b16ca450f1382daf87`  
		Last Modified: Wed, 21 Oct 2026 22:09:47 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:870a28c346fd7f19692a20b8c1e27485df8ef4cd8a990cc03f64f810532d6191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3b35fc698b91f81ce55198ecffd40ae8919758f03050234e684e79b34dd22`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:01:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:01:30 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:01:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:01:31 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:01:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143a4484d5168d2b4428d18d75e021d6d91ec65650b5692c2ef9919029ef8fb4`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9fa3d1a4b57fddb6d3120c011d78f2262f1bdf15fa55206ecebfc81afefd3d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f87246745ccacbaa5aacb9a01c9f6ccd5f43a571f589b2e4a40d6cbfd0bebce0`

```dockerfile
```

-	Layers:
	-	`sha256:2475aa34526593f0748d41464c7e5fc24e4c3d1b9d7c7c94c6aacaf2e8264087`  
		Last Modified: Wed, 21 Oct 2026 22:01:35 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:8275494ca7c156c2f709e789867b6e6deb0c5ccb872f9dd50ba8b1b2c74106ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63a177b417c7521336ec95c25ccdfd2f7a678f728ab26b02cc2104f6f6bfca`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:17:03 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:17:03 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:17:03 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:17:03 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab5f3272163694e05f2cf4149c67993acaa59d6fb829f0ebbb2a2cdd560464a`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:c1daf76e7f3dcd3e468c5902111d73c2bc0af018bf39de27a3801000e8bc324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951eec3f1303662bcdec8cb88688d9353ad8e6a8db0de7f23bc797237101d838`

```dockerfile
```

-	Layers:
	-	`sha256:0c91949b7fb46e658b2a9adfefef39243991f5c8c2000fbc9fefb85b4a639d24`  
		Last Modified: Wed, 21 Oct 2026 22:17:07 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:fbf2871e573f9bbac4e4ab9a631c60ff6aa11341c03e8a310993ad9cb10e1b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6706131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef37f64c6c2976ec8211ad155b6e228f4400ffa8b81c5adb77e927f256e3596f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:55 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b928af76c6d192b303297d58bc6e8137c28382dee7af1c55281b54d5606936f4`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 6.7 MB (6705622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5facb85856d3367b0d2243662e323c49e410378bb07cdc5b77e113c8f60df906`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:85b096ac248e93573ed6c86bb469efc5c452d84662e6f78d72970fea4af3b209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4eb3745232cfe436d3486e70bb78eedd33ef8117657a7e2a32e556c0183d01`

```dockerfile
```

-	Layers:
	-	`sha256:51787f1c5b74cbb0dca7c52962ad12724bd563ad3c981203df15a50819041e71`  
		Last Modified: Mon, 12 Oct 2026 16:59:13 GMT  
		Size: 10.5 KB (10512 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:832f9023c5b716b278aded150c68998641b3e457700174607a155e0b3ca8410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56aea209a1a21729a3c5c66385b5b091b7ca3f4080feac75d3a7f8f68b03b47`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Wed, 21 Oct 2026 22:34:25 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Wed, 21 Oct 2026 22:34:25 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Wed, 21 Oct 2026 22:34:25 GMT
ENTRYPOINT ["/nats-server"]
# Wed, 21 Oct 2026 22:34:25 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3ba8683fac6e04224e66a21af98f2db14837fa639131cbfaf52e31ae1436f9`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a731fb9575ce162a51f6db5805b95ca213e68c1302e3db059ac52c8c40a32ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0039b62b1fe9b11a07104571ccc83c14a813fe4b82ac7167160db63cf4bbcb85`

```dockerfile
```

-	Layers:
	-	`sha256:8f7646b7e14036023f973dad33825c23df2e09239bd28665ef3709323b89bea0`  
		Last Modified: Wed, 21 Oct 2026 22:34:33 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:cbcefcf4d8d9252bd99cbbe32d21949040e2c1057ed8dbb7ee7ff41ef1d090dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull nats@sha256:1ff1d11aecaf41e7e2159061537ccbbdda1ec7ab42a3d9874b5cabc7d9e40638
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2234480429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f5ee5ebf1d791c156bb328a5a445e60fae3cbb37957df0ec4ccf483cbacf6a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:04:38 GMT
ENV NATS_DOCKERIZED=1
# Tue, 13 Oct 2026 23:04:39 GMT
ENV NATS_SERVER=2.15.1
# Tue, 13 Oct 2026 23:04:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Tue, 13 Oct 2026 23:04:41 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Tue, 13 Oct 2026 23:04:42 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Tue, 13 Oct 2026 23:04:57 GMT
RUN Set-PSDebug -Trace 2
# Tue, 13 Oct 2026 23:05:11 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Tue, 13 Oct 2026 23:05:12 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Tue, 13 Oct 2026 23:05:12 GMT
EXPOSE 4222 6222 8222
# Tue, 13 Oct 2026 23:05:13 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Tue, 13 Oct 2026 23:05:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1783688bc33ffd3c25d437b3b135d6a2c4584d562791202de8fbf44fd472c02f`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4124abac6a987c3c567fa55e0d549934b41cc01019b21be22acbd2d8f75102dc`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451bcade8f320c2f87b21634a058d7334207897335fca1721da0259fc399a337`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20628902eac42d1f5e10bf324838cf0cbae7b944325b897430db25c3f24bd444`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc053113042aa7acdd2377a4215d3321741a09c8168c49317f5b64a19b9c8e4`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aecaa902ff4d2ec7b24e094ec02ce1c29f29a7d01c6d80bfb8e639be7559cef`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34e391526178899f175ea29a5dc0eb7c38e057adba894b5d76982e522a489ec`  
		Last Modified: Tue, 13 Oct 2026 23:05:19 GMT  
		Size: 319.3 KB (319348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e84eb1b518b48ceb4c6063ee58611fc011576e897e5ee74fb609159cfabda3`  
		Last Modified: Tue, 13 Oct 2026 23:05:21 GMT  
		Size: 7.9 MB (7862027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ec68d3ebc56144cb357183bf293b37639747f8d1a9e8f2ebc06e8febd5fcd4`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353abc83d5b6d04456ded46ab05388ba57793af97f247caaf2d2a7b4bff191b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9238076364ebf8f583abdc64494e87025c999e921b7db5ebb671415b32072a6c`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f6dfe5e5080cc2a131bd677ef2932ba940afabf6839c3772b4ba3ae897b30b`  
		Last Modified: Tue, 13 Oct 2026 23:05:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
