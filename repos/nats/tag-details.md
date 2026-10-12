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
$ docker pull nats@sha256:497de820dd61fc77980a400c71abec6f912dd2b08a685ecb4d64fd20ad9b6868
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:d4018e2dab2553f0058318ae1cb66ff8d47aec0e2d25ed2e57bd07637f9e0e38
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
$ docker pull nats@sha256:44d097ac44eae1cc5018ad15230d7dce40730a9b3e97e8609a30be7300b51c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeffe7ea1c8c0107ff1925e4d1e72deca71b7bc78b88dca7c51850dcb7e8c065`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:49 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:49 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889400bdd6dae7e5556598ed28b077478b71b4aa9c56a425337151f2aeb0d6cd`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:8c4ccdf19a8dec174f8d4e8abadcfa68259fde7eb7d525cd122c814ad4bae997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c422486066a69604dfd1bd3b454c6a582e02f58074b98f60a57999424c192f`

```dockerfile
```

-	Layers:
	-	`sha256:04b3c4a4043fa26cf91334657e33e79d34af8c7183daa803f782822b4dde6913`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:8906a4e4acca443150ce543be70026fbdb691fe0de24dfc9d55420e102e0ef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f385cafc57103c15fc60a100961756c3cc36e4868976097c2fcf3043d241eb`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:59 GMT
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
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19359091782fb9ee12bdd9b355a2283c082d7305080bd7bee12c2d75aa1cb2`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:cc1b9ff88e129068ddef198dcb8102d2cb58538c5c803bb62eb70cce1a3d3304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cf69ca38b2233193f69a8564219c1deead37bfc78a41794ed2a8afaab2eb0`

```dockerfile
```

-	Layers:
	-	`sha256:a1d10ececc309b7d0dcfc94c54eb25ce1fdb586060602562acf3ad1db721c231`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:473ac7b1bf6e13defa896bec96f4519886004ccdb5783d0a0a7cb995384c505f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e645da39cbdfe14391e45dbb44e5bd03661de7a5a9db9ad27801f8fa34626`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:b006cc58729b78ae58ae620d5307fd6aecb0e9be5e0f23cb4f2a899e237f5809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8167b660447244b412ee39fa3d687165d9b26d6f8c3f82ef947961f57ea60941`

```dockerfile
```

-	Layers:
	-	`sha256:1c8bff0563b7ff2b89645fe51e35af53f1c02234775365b264d33771fcbfd51a`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3822bb2955c0737d55e0b582fd213c9776bd6808a25b2a04dd342e5e6a61f18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e78150f6e1fbdf1cab43acdf840971d27e84d4285e3fe772d6064efe21b4a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:195a8cc49a0d331e6d2ab7325e6e1cf8a1e7421d22d3ab148152b63b26c36399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efac3aea1dcc7c2914a491b2971c86b2700220a51c4b13f608b53f04178e1370`

```dockerfile
```

-	Layers:
	-	`sha256:054e2319e3b159a5d5d699f9b818deaa0c4c623fe044e3ebc5d79b09aca2cf13`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.8 KB (8774 bytes)  
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
$ docker pull nats@sha256:60d9ad50d69d5bf6ae3591594a1c0651c837453df0eb24013f62fba4939fcb75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e16e670071bc6e7acfade09c9f81a30ea0710ec9bfa972294e6cb5bc1dba2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:39 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:39 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721770d136a35be52d9103a742a7119d2ce4bf09044beb906b05448e32316692`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:8a65ba3bd95e0c4d99a74be1145949ba5aca05f677c4471181ff760d2905a3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27345545e445f1ab5a58a61749cc70c5b04d5c55f63b02aa748113c570f582eb`

```dockerfile
```

-	Layers:
	-	`sha256:8bc50e0b17c087493b93ed6d1280bea0e7adfcaed586784f8fa968a8079adb68`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:7cafc55560ff9dd36647c35600bea5c4a8eba6ea6766a4788476f3d0935f3ea7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131793625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ed47cc35e3de27ffcd0655d58363c1e0e980a82e8d52083d7d3ab253e3f0d2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae930bd08d2e0519d9923822c52f515b7b36b80ca9e9794ec99810567a920c1`  
		Last Modified: Mon, 12 Oct 2026 17:09:15 GMT  
		Size: 7.2 MB (7150263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2cc958e59d81d9b225c8874e24688689e3f0e3b22e4a003d602ea7f1f6303`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eafa7d9c36577c2188439ff39ffcbf50b38e5ab8658aee1252d473abfa4e5e`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c1b99deca93b261238fbb78bcedf26f3958eacda76cdc3aa42c1b4ec84f40`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af896cbd9c26ff39a51f41b1a5d3bfc124cc1264af3fff6b70e92b6afc87dfb`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:f9512b17aae6d41b6a615a7afad7b328633639ddae025744623e69b26fe686be
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
$ docker pull nats@sha256:a984ca255cc9d0fc37011723da258a19a256db971bd63cb7819ba93fd8d53313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea49bb3dd4dc90ea2eb50260fc5dac91831225a01b2641fa780f329533f29c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b4bb250ac1cafcc8692f3036370c4188aa550066b9b3675366be8c1e4371aa`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 7.4 MB (7363978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03727e9c80ca246b431ea0aaccb557f357d1140643eb211322e96fc5c9857b0`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b178431a444aea0c76e071b2ce60461ed6fb61956f2eefb6d868ffecb9156e`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1108e6df83f1eaf9a061f0bdc76a7ea6e6e0c7df1c7217539244a1ebb3cdd9c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec7fe6bf479f2b1ad7b4208fbe88ca236aad6e3d7ba9712e967c38b4515424`

```dockerfile
```

-	Layers:
	-	`sha256:e6cf50dc11c7b6c86f504ee32b0ead5fac585b8bff0e9be64647c07a63b3c46d`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:b51b8accb3f39244f29ec156e1981cd2510a5d24630c7f52dc724ac70c7520f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f2fde1a75091eab060ddf3d44036876f4bae5f5df0c0d92045c1360f699488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4992b7eb5e677eecead2aa2064deee8d810eca0faab81a4856a458177490135b`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.1 MB (7104709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603147b0e2f0691b09f193ac38fbfd5d9ebb095609b3008d8fcafb68ff4058a4`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be30a3d45fa4422b8e379d42cc749ef5885d72b4e99bd3e3595eea26cebbf18`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:961c6f6c807f533f9d397535ff8f100c16619a4bd179f3671d6db651c7228957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4380fd94f2fec1dcb6a2325fc73ffb0d4eef21263e1118374c196c12b559b1f1`

```dockerfile
```

-	Layers:
	-	`sha256:792eca30004fa79d1163b9a5defdc2fcdf82a6b7983f076de822d877df145939`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:cf0217a864a63483fd42640960c5e2f82dd7bd7481ece9b97ecce8cc20c6b5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10304606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078f6a01011e9c74ab0c7348cceee6e6108aec83b54f12abb114d41a4551c77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a83a85325ac8f0168da1aa67351205e22fa50bb3d176a8aae78f9e25ff0ceb`  
		Last Modified: Mon, 12 Oct 2026 16:44:43 GMT  
		Size: 7.1 MB (7091423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe11ebd2b22646d5f6353c3bd14cf095d0928c45fb5975c2dc4f2d09388d989`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd61954532cbaab24e66888438ff4c5bc71ec2ea8b7a62e09cb32feb9085207`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e3efe00cfe5314882f5e054fed9b66af68e4f6bee6859436234de078e925b247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab2c719131a07a2bd626edd2bfa826755df59efbe179f2c2ba1056c83aa5840`

```dockerfile
```

-	Layers:
	-	`sha256:caa6590d3974a981ebd2fd93e1445cf82336cb9c9dd171c37004c4dab7351683`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ec002ad0109a777b4f2494a573ecd2e8abef46e8975bcdb93f05b4e5afc4e6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d01e9f809e67f31d149ddc7c2cfed70486a05ca52c565ab9f6d1d5f1aa4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2151e5be67a680bf039797088055aca0dc018941a59532801bf3c25009ae94`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 6.7 MB (6713120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c9a7d5298182a5c3bc846e5c841db85b7f121114807c5a8fba4dbe2325cdde`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9add7168169dfbe991d4118d8eaa9f16705be70a03909568edf767ee5b11abd`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:6f1c85868038a34bc87f33eb35955b58ca0f17ab94832c9661f54347a338482f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33536d694284d499f7fbd316f54eb439473c910f4615e86d6f3b6177f62be03d`

```dockerfile
```

-	Layers:
	-	`sha256:b20d96eddda05c0f6922eec898ce8af795b3fcdf7d952638c4e65322b0613e0b`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
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
$ docker pull nats@sha256:873ab8beafb92a91f1f52c07a7c05a5ea5cf01f223d2d410445f4fe45ab7e35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656917ed2667fceae5d2231d3c6a843c5391896d4579de1ef4e17fa4bcf6f91b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:57 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:58 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d4430bc98e68b4e70e619288a993ad05493fed493e8788eb20f35558ff3c72`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.2 MB (7181478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735d93da7009ade0f36dbde4d5b990e0f727023a0602d5401f9ad5aa73c05f83`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a53deb513962105acf7bc9598ecca72463fcb5eeb83d2f84e22c70c8c6be2`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:196892ea480d2ddf9b3857b9b88bba8125a6382b296bb00f2f920179035fa029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ed2bd1497ef2d945b39a9c655cc8f58da9d1bcddd16cdd8a2bb1830566c09`

```dockerfile
```

-	Layers:
	-	`sha256:9a2974ddf04dd8b16cee8d3ced5346b23e0dbf1585616af8bd3aafa3adab4031`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:f9512b17aae6d41b6a615a7afad7b328633639ddae025744623e69b26fe686be
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
$ docker pull nats@sha256:a984ca255cc9d0fc37011723da258a19a256db971bd63cb7819ba93fd8d53313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea49bb3dd4dc90ea2eb50260fc5dac91831225a01b2641fa780f329533f29c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b4bb250ac1cafcc8692f3036370c4188aa550066b9b3675366be8c1e4371aa`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 7.4 MB (7363978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03727e9c80ca246b431ea0aaccb557f357d1140643eb211322e96fc5c9857b0`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b178431a444aea0c76e071b2ce60461ed6fb61956f2eefb6d868ffecb9156e`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1108e6df83f1eaf9a061f0bdc76a7ea6e6e0c7df1c7217539244a1ebb3cdd9c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec7fe6bf479f2b1ad7b4208fbe88ca236aad6e3d7ba9712e967c38b4515424`

```dockerfile
```

-	Layers:
	-	`sha256:e6cf50dc11c7b6c86f504ee32b0ead5fac585b8bff0e9be64647c07a63b3c46d`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:b51b8accb3f39244f29ec156e1981cd2510a5d24630c7f52dc724ac70c7520f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f2fde1a75091eab060ddf3d44036876f4bae5f5df0c0d92045c1360f699488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4992b7eb5e677eecead2aa2064deee8d810eca0faab81a4856a458177490135b`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.1 MB (7104709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603147b0e2f0691b09f193ac38fbfd5d9ebb095609b3008d8fcafb68ff4058a4`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be30a3d45fa4422b8e379d42cc749ef5885d72b4e99bd3e3595eea26cebbf18`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:961c6f6c807f533f9d397535ff8f100c16619a4bd179f3671d6db651c7228957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4380fd94f2fec1dcb6a2325fc73ffb0d4eef21263e1118374c196c12b559b1f1`

```dockerfile
```

-	Layers:
	-	`sha256:792eca30004fa79d1163b9a5defdc2fcdf82a6b7983f076de822d877df145939`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:cf0217a864a63483fd42640960c5e2f82dd7bd7481ece9b97ecce8cc20c6b5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10304606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078f6a01011e9c74ab0c7348cceee6e6108aec83b54f12abb114d41a4551c77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a83a85325ac8f0168da1aa67351205e22fa50bb3d176a8aae78f9e25ff0ceb`  
		Last Modified: Mon, 12 Oct 2026 16:44:43 GMT  
		Size: 7.1 MB (7091423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe11ebd2b22646d5f6353c3bd14cf095d0928c45fb5975c2dc4f2d09388d989`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd61954532cbaab24e66888438ff4c5bc71ec2ea8b7a62e09cb32feb9085207`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e3efe00cfe5314882f5e054fed9b66af68e4f6bee6859436234de078e925b247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab2c719131a07a2bd626edd2bfa826755df59efbe179f2c2ba1056c83aa5840`

```dockerfile
```

-	Layers:
	-	`sha256:caa6590d3974a981ebd2fd93e1445cf82336cb9c9dd171c37004c4dab7351683`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ec002ad0109a777b4f2494a573ecd2e8abef46e8975bcdb93f05b4e5afc4e6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d01e9f809e67f31d149ddc7c2cfed70486a05ca52c565ab9f6d1d5f1aa4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2151e5be67a680bf039797088055aca0dc018941a59532801bf3c25009ae94`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 6.7 MB (6713120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c9a7d5298182a5c3bc846e5c841db85b7f121114807c5a8fba4dbe2325cdde`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9add7168169dfbe991d4118d8eaa9f16705be70a03909568edf767ee5b11abd`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:6f1c85868038a34bc87f33eb35955b58ca0f17ab94832c9661f54347a338482f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33536d694284d499f7fbd316f54eb439473c910f4615e86d6f3b6177f62be03d`

```dockerfile
```

-	Layers:
	-	`sha256:b20d96eddda05c0f6922eec898ce8af795b3fcdf7d952638c4e65322b0613e0b`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
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
$ docker pull nats@sha256:873ab8beafb92a91f1f52c07a7c05a5ea5cf01f223d2d410445f4fe45ab7e35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656917ed2667fceae5d2231d3c6a843c5391896d4579de1ef4e17fa4bcf6f91b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:57 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:58 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d4430bc98e68b4e70e619288a993ad05493fed493e8788eb20f35558ff3c72`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.2 MB (7181478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735d93da7009ade0f36dbde4d5b990e0f727023a0602d5401f9ad5aa73c05f83`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a53deb513962105acf7bc9598ecca72463fcb5eeb83d2f84e22c70c8c6be2`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:196892ea480d2ddf9b3857b9b88bba8125a6382b296bb00f2f920179035fa029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ed2bd1497ef2d945b39a9c655cc8f58da9d1bcddd16cdd8a2bb1830566c09`

```dockerfile
```

-	Layers:
	-	`sha256:9a2974ddf04dd8b16cee8d3ced5346b23e0dbf1585616af8bd3aafa3adab4031`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:b3ca79f7345b24f89677a13614adc507628885d758fd2683336fae8ab41b707d
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
$ docker pull nats@sha256:44d097ac44eae1cc5018ad15230d7dce40730a9b3e97e8609a30be7300b51c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeffe7ea1c8c0107ff1925e4d1e72deca71b7bc78b88dca7c51850dcb7e8c065`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:49 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:49 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889400bdd6dae7e5556598ed28b077478b71b4aa9c56a425337151f2aeb0d6cd`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8c4ccdf19a8dec174f8d4e8abadcfa68259fde7eb7d525cd122c814ad4bae997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c422486066a69604dfd1bd3b454c6a582e02f58074b98f60a57999424c192f`

```dockerfile
```

-	Layers:
	-	`sha256:04b3c4a4043fa26cf91334657e33e79d34af8c7183daa803f782822b4dde6913`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:8906a4e4acca443150ce543be70026fbdb691fe0de24dfc9d55420e102e0ef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f385cafc57103c15fc60a100961756c3cc36e4868976097c2fcf3043d241eb`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:59 GMT
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
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19359091782fb9ee12bdd9b355a2283c082d7305080bd7bee12c2d75aa1cb2`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cc1b9ff88e129068ddef198dcb8102d2cb58538c5c803bb62eb70cce1a3d3304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cf69ca38b2233193f69a8564219c1deead37bfc78a41794ed2a8afaab2eb0`

```dockerfile
```

-	Layers:
	-	`sha256:a1d10ececc309b7d0dcfc94c54eb25ce1fdb586060602562acf3ad1db721c231`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:473ac7b1bf6e13defa896bec96f4519886004ccdb5783d0a0a7cb995384c505f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e645da39cbdfe14391e45dbb44e5bd03661de7a5a9db9ad27801f8fa34626`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:b006cc58729b78ae58ae620d5307fd6aecb0e9be5e0f23cb4f2a899e237f5809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8167b660447244b412ee39fa3d687165d9b26d6f8c3f82ef947961f57ea60941`

```dockerfile
```

-	Layers:
	-	`sha256:1c8bff0563b7ff2b89645fe51e35af53f1c02234775365b264d33771fcbfd51a`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3822bb2955c0737d55e0b582fd213c9776bd6808a25b2a04dd342e5e6a61f18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e78150f6e1fbdf1cab43acdf840971d27e84d4285e3fe772d6064efe21b4a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:195a8cc49a0d331e6d2ab7325e6e1cf8a1e7421d22d3ab148152b63b26c36399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efac3aea1dcc7c2914a491b2971c86b2700220a51c4b13f608b53f04178e1370`

```dockerfile
```

-	Layers:
	-	`sha256:054e2319e3b159a5d5d699f9b818deaa0c4c623fe044e3ebc5d79b09aca2cf13`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.8 KB (8774 bytes)  
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
$ docker pull nats@sha256:60d9ad50d69d5bf6ae3591594a1c0651c837453df0eb24013f62fba4939fcb75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e16e670071bc6e7acfade09c9f81a30ea0710ec9bfa972294e6cb5bc1dba2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:39 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:39 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721770d136a35be52d9103a742a7119d2ce4bf09044beb906b05448e32316692`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8a65ba3bd95e0c4d99a74be1145949ba5aca05f677c4471181ff760d2905a3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27345545e445f1ab5a58a61749cc70c5b04d5c55f63b02aa748113c570f582eb`

```dockerfile
```

-	Layers:
	-	`sha256:8bc50e0b17c087493b93ed6d1280bea0e7adfcaed586784f8fa968a8079adb68`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:cc17ab3840fc1bfa32ed3513efe6cbbcfe7f7d6a5c78b068d3baed55d9c7e667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:7cafc55560ff9dd36647c35600bea5c4a8eba6ea6766a4788476f3d0935f3ea7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131793625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ed47cc35e3de27ffcd0655d58363c1e0e980a82e8d52083d7d3ab253e3f0d2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae930bd08d2e0519d9923822c52f515b7b36b80ca9e9794ec99810567a920c1`  
		Last Modified: Mon, 12 Oct 2026 17:09:15 GMT  
		Size: 7.2 MB (7150263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2cc958e59d81d9b225c8874e24688689e3f0e3b22e4a003d602ea7f1f6303`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eafa7d9c36577c2188439ff39ffcbf50b38e5ab8658aee1252d473abfa4e5e`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c1b99deca93b261238fbb78bcedf26f3958eacda76cdc3aa42c1b4ec84f40`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af896cbd9c26ff39a51f41b1a5d3bfc124cc1264af3fff6b70e92b6afc87dfb`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:cc17ab3840fc1bfa32ed3513efe6cbbcfe7f7d6a5c78b068d3baed55d9c7e667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:7cafc55560ff9dd36647c35600bea5c4a8eba6ea6766a4788476f3d0935f3ea7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131793625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ed47cc35e3de27ffcd0655d58363c1e0e980a82e8d52083d7d3ab253e3f0d2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae930bd08d2e0519d9923822c52f515b7b36b80ca9e9794ec99810567a920c1`  
		Last Modified: Mon, 12 Oct 2026 17:09:15 GMT  
		Size: 7.2 MB (7150263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2cc958e59d81d9b225c8874e24688689e3f0e3b22e4a003d602ea7f1f6303`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eafa7d9c36577c2188439ff39ffcbf50b38e5ab8658aee1252d473abfa4e5e`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c1b99deca93b261238fbb78bcedf26f3958eacda76cdc3aa42c1b4ec84f40`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af896cbd9c26ff39a51f41b1a5d3bfc124cc1264af3fff6b70e92b6afc87dfb`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:b3ca79f7345b24f89677a13614adc507628885d758fd2683336fae8ab41b707d
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
$ docker pull nats@sha256:44d097ac44eae1cc5018ad15230d7dce40730a9b3e97e8609a30be7300b51c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeffe7ea1c8c0107ff1925e4d1e72deca71b7bc78b88dca7c51850dcb7e8c065`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:49 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:49 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889400bdd6dae7e5556598ed28b077478b71b4aa9c56a425337151f2aeb0d6cd`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8c4ccdf19a8dec174f8d4e8abadcfa68259fde7eb7d525cd122c814ad4bae997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c422486066a69604dfd1bd3b454c6a582e02f58074b98f60a57999424c192f`

```dockerfile
```

-	Layers:
	-	`sha256:04b3c4a4043fa26cf91334657e33e79d34af8c7183daa803f782822b4dde6913`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:8906a4e4acca443150ce543be70026fbdb691fe0de24dfc9d55420e102e0ef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f385cafc57103c15fc60a100961756c3cc36e4868976097c2fcf3043d241eb`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:59 GMT
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
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19359091782fb9ee12bdd9b355a2283c082d7305080bd7bee12c2d75aa1cb2`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cc1b9ff88e129068ddef198dcb8102d2cb58538c5c803bb62eb70cce1a3d3304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cf69ca38b2233193f69a8564219c1deead37bfc78a41794ed2a8afaab2eb0`

```dockerfile
```

-	Layers:
	-	`sha256:a1d10ececc309b7d0dcfc94c54eb25ce1fdb586060602562acf3ad1db721c231`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:473ac7b1bf6e13defa896bec96f4519886004ccdb5783d0a0a7cb995384c505f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e645da39cbdfe14391e45dbb44e5bd03661de7a5a9db9ad27801f8fa34626`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:b006cc58729b78ae58ae620d5307fd6aecb0e9be5e0f23cb4f2a899e237f5809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8167b660447244b412ee39fa3d687165d9b26d6f8c3f82ef947961f57ea60941`

```dockerfile
```

-	Layers:
	-	`sha256:1c8bff0563b7ff2b89645fe51e35af53f1c02234775365b264d33771fcbfd51a`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3822bb2955c0737d55e0b582fd213c9776bd6808a25b2a04dd342e5e6a61f18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e78150f6e1fbdf1cab43acdf840971d27e84d4285e3fe772d6064efe21b4a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:195a8cc49a0d331e6d2ab7325e6e1cf8a1e7421d22d3ab148152b63b26c36399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efac3aea1dcc7c2914a491b2971c86b2700220a51c4b13f608b53f04178e1370`

```dockerfile
```

-	Layers:
	-	`sha256:054e2319e3b159a5d5d699f9b818deaa0c4c623fe044e3ebc5d79b09aca2cf13`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.8 KB (8774 bytes)  
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
$ docker pull nats@sha256:60d9ad50d69d5bf6ae3591594a1c0651c837453df0eb24013f62fba4939fcb75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e16e670071bc6e7acfade09c9f81a30ea0710ec9bfa972294e6cb5bc1dba2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:39 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:39 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721770d136a35be52d9103a742a7119d2ce4bf09044beb906b05448e32316692`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8a65ba3bd95e0c4d99a74be1145949ba5aca05f677c4471181ff760d2905a3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27345545e445f1ab5a58a61749cc70c5b04d5c55f63b02aa748113c570f582eb`

```dockerfile
```

-	Layers:
	-	`sha256:8bc50e0b17c087493b93ed6d1280bea0e7adfcaed586784f8fa968a8079adb68`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:2b3c66026759c5d66059e599537aece4a0d7f7f7dcb3a1715d09483a16da3018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a6246fd743f2f9a6c0b6b43efb757a05dee8d9fcc0a4ec058d5552816d219186
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227351269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f80721d38031ed44768f395c2d9618f758f73068490c7158e81b48b6e71db`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:03:32 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 17:03:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Mon, 12 Oct 2026 17:03:43 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 17:04:02 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 17:04:03 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:04:04 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:04:04 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:04:05 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa418846795cca3c0c70012665d4bd86a0c628bec4bc78b3641150b59ad6c4b`  
		Last Modified: Mon, 12 Oct 2026 17:04:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48795ef1cc3f7be02661f72b9114d80214d2531a5e8d3946d522ef2fa94e06c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a9a42cb2973b283a1c59489a550d943e2453ffb0ad1bb6ce64443d6250d9f`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2a4471210ecaddf2eb237600394eba3d7ba8c2ff734e98a2f5086650d9ea40`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f874cfd2d1f18867c7febf940924d05a5b3f059eeec58650241f7b76606f98`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 351.6 KB (351622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03e769fc6ef3e44c3454d3866cfdd109137374930d01ff0d51e6d1c16f80d2`  
		Last Modified: Mon, 12 Oct 2026 17:04:15 GMT  
		Size: 7.5 MB (7497299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a9b352d52e11ddbb7d2b85b1b8e9e1c9a497d5714a7706a757654c21151b2`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45398e81caf86398d5b580193eac94b82421820472a3e3aa7a5c2683fe9486db`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bbf5e55be13cf2d5bc32f8d64d91f1a1a86564090cd9f695a2be6c7fe71b25`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa60723320477b919b1e89b467397de6eff102fa8feb181c9c25ec0d2f629de6`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:2b3c66026759c5d66059e599537aece4a0d7f7f7dcb3a1715d09483a16da3018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a6246fd743f2f9a6c0b6b43efb757a05dee8d9fcc0a4ec058d5552816d219186
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227351269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f80721d38031ed44768f395c2d9618f758f73068490c7158e81b48b6e71db`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:03:32 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 17:03:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Mon, 12 Oct 2026 17:03:43 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 17:04:02 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 17:04:03 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:04:04 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:04:04 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:04:05 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa418846795cca3c0c70012665d4bd86a0c628bec4bc78b3641150b59ad6c4b`  
		Last Modified: Mon, 12 Oct 2026 17:04:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48795ef1cc3f7be02661f72b9114d80214d2531a5e8d3946d522ef2fa94e06c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a9a42cb2973b283a1c59489a550d943e2453ffb0ad1bb6ce64443d6250d9f`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2a4471210ecaddf2eb237600394eba3d7ba8c2ff734e98a2f5086650d9ea40`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f874cfd2d1f18867c7febf940924d05a5b3f059eeec58650241f7b76606f98`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 351.6 KB (351622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03e769fc6ef3e44c3454d3866cfdd109137374930d01ff0d51e6d1c16f80d2`  
		Last Modified: Mon, 12 Oct 2026 17:04:15 GMT  
		Size: 7.5 MB (7497299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a9b352d52e11ddbb7d2b85b1b8e9e1c9a497d5714a7706a757654c21151b2`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45398e81caf86398d5b580193eac94b82421820472a3e3aa7a5c2683fe9486db`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bbf5e55be13cf2d5bc32f8d64d91f1a1a86564090cd9f695a2be6c7fe71b25`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa60723320477b919b1e89b467397de6eff102fa8feb181c9c25ec0d2f629de6`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8`

```console
$ docker pull nats@sha256:d4018e2dab2553f0058318ae1cb66ff8d47aec0e2d25ed2e57bd07637f9e0e38
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

### `nats:2.14.8` - linux; amd64

```console
$ docker pull nats@sha256:44d097ac44eae1cc5018ad15230d7dce40730a9b3e97e8609a30be7300b51c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeffe7ea1c8c0107ff1925e4d1e72deca71b7bc78b88dca7c51850dcb7e8c065`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:49 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:49 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889400bdd6dae7e5556598ed28b077478b71b4aa9c56a425337151f2aeb0d6cd`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:8c4ccdf19a8dec174f8d4e8abadcfa68259fde7eb7d525cd122c814ad4bae997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c422486066a69604dfd1bd3b454c6a582e02f58074b98f60a57999424c192f`

```dockerfile
```

-	Layers:
	-	`sha256:04b3c4a4043fa26cf91334657e33e79d34af8c7183daa803f782822b4dde6913`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; arm variant v6

```console
$ docker pull nats@sha256:8906a4e4acca443150ce543be70026fbdb691fe0de24dfc9d55420e102e0ef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f385cafc57103c15fc60a100961756c3cc36e4868976097c2fcf3043d241eb`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:59 GMT
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
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19359091782fb9ee12bdd9b355a2283c082d7305080bd7bee12c2d75aa1cb2`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:cc1b9ff88e129068ddef198dcb8102d2cb58538c5c803bb62eb70cce1a3d3304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cf69ca38b2233193f69a8564219c1deead37bfc78a41794ed2a8afaab2eb0`

```dockerfile
```

-	Layers:
	-	`sha256:a1d10ececc309b7d0dcfc94c54eb25ce1fdb586060602562acf3ad1db721c231`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; arm variant v7

```console
$ docker pull nats@sha256:473ac7b1bf6e13defa896bec96f4519886004ccdb5783d0a0a7cb995384c505f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e645da39cbdfe14391e45dbb44e5bd03661de7a5a9db9ad27801f8fa34626`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:b006cc58729b78ae58ae620d5307fd6aecb0e9be5e0f23cb4f2a899e237f5809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8167b660447244b412ee39fa3d687165d9b26d6f8c3f82ef947961f57ea60941`

```dockerfile
```

-	Layers:
	-	`sha256:1c8bff0563b7ff2b89645fe51e35af53f1c02234775365b264d33771fcbfd51a`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3822bb2955c0737d55e0b582fd213c9776bd6808a25b2a04dd342e5e6a61f18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e78150f6e1fbdf1cab43acdf840971d27e84d4285e3fe772d6064efe21b4a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:195a8cc49a0d331e6d2ab7325e6e1cf8a1e7421d22d3ab148152b63b26c36399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efac3aea1dcc7c2914a491b2971c86b2700220a51c4b13f608b53f04178e1370`

```dockerfile
```

-	Layers:
	-	`sha256:054e2319e3b159a5d5d699f9b818deaa0c4c623fe044e3ebc5d79b09aca2cf13`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.8 KB (8774 bytes)  
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
$ docker pull nats@sha256:60d9ad50d69d5bf6ae3591594a1c0651c837453df0eb24013f62fba4939fcb75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e16e670071bc6e7acfade09c9f81a30ea0710ec9bfa972294e6cb5bc1dba2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:39 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:39 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721770d136a35be52d9103a742a7119d2ce4bf09044beb906b05448e32316692`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8` - unknown; unknown

```console
$ docker pull nats@sha256:8a65ba3bd95e0c4d99a74be1145949ba5aca05f677c4471181ff760d2905a3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27345545e445f1ab5a58a61749cc70c5b04d5c55f63b02aa748113c570f582eb`

```dockerfile
```

-	Layers:
	-	`sha256:8bc50e0b17c087493b93ed6d1280bea0e7adfcaed586784f8fa968a8079adb68`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:7cafc55560ff9dd36647c35600bea5c4a8eba6ea6766a4788476f3d0935f3ea7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131793625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ed47cc35e3de27ffcd0655d58363c1e0e980a82e8d52083d7d3ab253e3f0d2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae930bd08d2e0519d9923822c52f515b7b36b80ca9e9794ec99810567a920c1`  
		Last Modified: Mon, 12 Oct 2026 17:09:15 GMT  
		Size: 7.2 MB (7150263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2cc958e59d81d9b225c8874e24688689e3f0e3b22e4a003d602ea7f1f6303`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eafa7d9c36577c2188439ff39ffcbf50b38e5ab8658aee1252d473abfa4e5e`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c1b99deca93b261238fbb78bcedf26f3958eacda76cdc3aa42c1b4ec84f40`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af896cbd9c26ff39a51f41b1a5d3bfc124cc1264af3fff6b70e92b6afc87dfb`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-alpine`

```console
$ docker pull nats@sha256:f9512b17aae6d41b6a615a7afad7b328633639ddae025744623e69b26fe686be
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
$ docker pull nats@sha256:a984ca255cc9d0fc37011723da258a19a256db971bd63cb7819ba93fd8d53313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea49bb3dd4dc90ea2eb50260fc5dac91831225a01b2641fa780f329533f29c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b4bb250ac1cafcc8692f3036370c4188aa550066b9b3675366be8c1e4371aa`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 7.4 MB (7363978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03727e9c80ca246b431ea0aaccb557f357d1140643eb211322e96fc5c9857b0`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b178431a444aea0c76e071b2ce60461ed6fb61956f2eefb6d868ffecb9156e`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1108e6df83f1eaf9a061f0bdc76a7ea6e6e0c7df1c7217539244a1ebb3cdd9c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec7fe6bf479f2b1ad7b4208fbe88ca236aad6e3d7ba9712e967c38b4515424`

```dockerfile
```

-	Layers:
	-	`sha256:e6cf50dc11c7b6c86f504ee32b0ead5fac585b8bff0e9be64647c07a63b3c46d`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:b51b8accb3f39244f29ec156e1981cd2510a5d24630c7f52dc724ac70c7520f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f2fde1a75091eab060ddf3d44036876f4bae5f5df0c0d92045c1360f699488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4992b7eb5e677eecead2aa2064deee8d810eca0faab81a4856a458177490135b`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.1 MB (7104709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603147b0e2f0691b09f193ac38fbfd5d9ebb095609b3008d8fcafb68ff4058a4`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be30a3d45fa4422b8e379d42cc749ef5885d72b4e99bd3e3595eea26cebbf18`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:961c6f6c807f533f9d397535ff8f100c16619a4bd179f3671d6db651c7228957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4380fd94f2fec1dcb6a2325fc73ffb0d4eef21263e1118374c196c12b559b1f1`

```dockerfile
```

-	Layers:
	-	`sha256:792eca30004fa79d1163b9a5defdc2fcdf82a6b7983f076de822d877df145939`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:cf0217a864a63483fd42640960c5e2f82dd7bd7481ece9b97ecce8cc20c6b5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10304606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078f6a01011e9c74ab0c7348cceee6e6108aec83b54f12abb114d41a4551c77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a83a85325ac8f0168da1aa67351205e22fa50bb3d176a8aae78f9e25ff0ceb`  
		Last Modified: Mon, 12 Oct 2026 16:44:43 GMT  
		Size: 7.1 MB (7091423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe11ebd2b22646d5f6353c3bd14cf095d0928c45fb5975c2dc4f2d09388d989`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd61954532cbaab24e66888438ff4c5bc71ec2ea8b7a62e09cb32feb9085207`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e3efe00cfe5314882f5e054fed9b66af68e4f6bee6859436234de078e925b247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab2c719131a07a2bd626edd2bfa826755df59efbe179f2c2ba1056c83aa5840`

```dockerfile
```

-	Layers:
	-	`sha256:caa6590d3974a981ebd2fd93e1445cf82336cb9c9dd171c37004c4dab7351683`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ec002ad0109a777b4f2494a573ecd2e8abef46e8975bcdb93f05b4e5afc4e6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d01e9f809e67f31d149ddc7c2cfed70486a05ca52c565ab9f6d1d5f1aa4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2151e5be67a680bf039797088055aca0dc018941a59532801bf3c25009ae94`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 6.7 MB (6713120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c9a7d5298182a5c3bc846e5c841db85b7f121114807c5a8fba4dbe2325cdde`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9add7168169dfbe991d4118d8eaa9f16705be70a03909568edf767ee5b11abd`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:6f1c85868038a34bc87f33eb35955b58ca0f17ab94832c9661f54347a338482f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33536d694284d499f7fbd316f54eb439473c910f4615e86d6f3b6177f62be03d`

```dockerfile
```

-	Layers:
	-	`sha256:b20d96eddda05c0f6922eec898ce8af795b3fcdf7d952638c4e65322b0613e0b`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
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
$ docker pull nats@sha256:873ab8beafb92a91f1f52c07a7c05a5ea5cf01f223d2d410445f4fe45ab7e35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656917ed2667fceae5d2231d3c6a843c5391896d4579de1ef4e17fa4bcf6f91b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:57 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:58 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d4430bc98e68b4e70e619288a993ad05493fed493e8788eb20f35558ff3c72`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.2 MB (7181478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735d93da7009ade0f36dbde4d5b990e0f727023a0602d5401f9ad5aa73c05f83`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a53deb513962105acf7bc9598ecca72463fcb5eeb83d2f84e22c70c8c6be2`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:196892ea480d2ddf9b3857b9b88bba8125a6382b296bb00f2f920179035fa029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ed2bd1497ef2d945b39a9c655cc8f58da9d1bcddd16cdd8a2bb1830566c09`

```dockerfile
```

-	Layers:
	-	`sha256:9a2974ddf04dd8b16cee8d3ced5346b23e0dbf1585616af8bd3aafa3adab4031`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-alpine3.22`

```console
$ docker pull nats@sha256:f9512b17aae6d41b6a615a7afad7b328633639ddae025744623e69b26fe686be
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
$ docker pull nats@sha256:a984ca255cc9d0fc37011723da258a19a256db971bd63cb7819ba93fd8d53313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11157024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea49bb3dd4dc90ea2eb50260fc5dac91831225a01b2641fa780f329533f29c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b4bb250ac1cafcc8692f3036370c4188aa550066b9b3675366be8c1e4371aa`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 7.4 MB (7363978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03727e9c80ca246b431ea0aaccb557f357d1140643eb211322e96fc5c9857b0`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b178431a444aea0c76e071b2ce60461ed6fb61956f2eefb6d868ffecb9156e`  
		Last Modified: Mon, 12 Oct 2026 16:44:44 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1108e6df83f1eaf9a061f0bdc76a7ea6e6e0c7df1c7217539244a1ebb3cdd9c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dec7fe6bf479f2b1ad7b4208fbe88ca236aad6e3d7ba9712e967c38b4515424`

```dockerfile
```

-	Layers:
	-	`sha256:e6cf50dc11c7b6c86f504ee32b0ead5fac585b8bff0e9be64647c07a63b3c46d`  
		Last Modified: Mon, 12 Oct 2026 16:44:45 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:b51b8accb3f39244f29ec156e1981cd2510a5d24630c7f52dc724ac70c7520f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10604167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f2fde1a75091eab060ddf3d44036876f4bae5f5df0c0d92045c1360f699488`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:08 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:08 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:08 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4992b7eb5e677eecead2aa2064deee8d810eca0faab81a4856a458177490135b`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.1 MB (7104709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603147b0e2f0691b09f193ac38fbfd5d9ebb095609b3008d8fcafb68ff4058a4`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be30a3d45fa4422b8e379d42cc749ef5885d72b4e99bd3e3595eea26cebbf18`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:961c6f6c807f533f9d397535ff8f100c16619a4bd179f3671d6db651c7228957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4380fd94f2fec1dcb6a2325fc73ffb0d4eef21263e1118374c196c12b559b1f1`

```dockerfile
```

-	Layers:
	-	`sha256:792eca30004fa79d1163b9a5defdc2fcdf82a6b7983f076de822d877df145939`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:cf0217a864a63483fd42640960c5e2f82dd7bd7481ece9b97ecce8cc20c6b5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10304606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078f6a01011e9c74ab0c7348cceee6e6108aec83b54f12abb114d41a4551c77a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:38 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a83a85325ac8f0168da1aa67351205e22fa50bb3d176a8aae78f9e25ff0ceb`  
		Last Modified: Mon, 12 Oct 2026 16:44:43 GMT  
		Size: 7.1 MB (7091423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe11ebd2b22646d5f6353c3bd14cf095d0928c45fb5975c2dc4f2d09388d989`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd61954532cbaab24e66888438ff4c5bc71ec2ea8b7a62e09cb32feb9085207`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e3efe00cfe5314882f5e054fed9b66af68e4f6bee6859436234de078e925b247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab2c719131a07a2bd626edd2bfa826755df59efbe179f2c2ba1056c83aa5840`

```dockerfile
```

-	Layers:
	-	`sha256:caa6590d3974a981ebd2fd93e1445cf82336cb9c9dd171c37004c4dab7351683`  
		Last Modified: Mon, 12 Oct 2026 16:44:42 GMT  
		Size: 14.3 KB (14284 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ec002ad0109a777b4f2494a573ecd2e8abef46e8975bcdb93f05b4e5afc4e6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d01e9f809e67f31d149ddc7c2cfed70486a05ca52c565ab9f6d1d5f1aa4c66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:44:33 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:33 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:33 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2151e5be67a680bf039797088055aca0dc018941a59532801bf3c25009ae94`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 6.7 MB (6713120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c9a7d5298182a5c3bc846e5c841db85b7f121114807c5a8fba4dbe2325cdde`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9add7168169dfbe991d4118d8eaa9f16705be70a03909568edf767ee5b11abd`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:6f1c85868038a34bc87f33eb35955b58ca0f17ab94832c9661f54347a338482f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33536d694284d499f7fbd316f54eb439473c910f4615e86d6f3b6177f62be03d`

```dockerfile
```

-	Layers:
	-	`sha256:b20d96eddda05c0f6922eec898ce8af795b3fcdf7d952638c4e65322b0613e0b`  
		Last Modified: Mon, 12 Oct 2026 16:44:38 GMT  
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
$ docker pull nats@sha256:873ab8beafb92a91f1f52c07a7c05a5ea5cf01f223d2d410445f4fe45ab7e35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10822565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656917ed2667fceae5d2231d3c6a843c5391896d4579de1ef4e17fa4bcf6f91b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:57 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 16:43:57 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='0371fa0da81a3f5ea0d64914bb10dbf96c92fea071ff249ee5c1255997fe8be0' ;;     armhf) natsArch='arm6'; sha256='667cf79160b99ba0ef44599a06dcac1e8e15558ee83f214219cbf34e37c07d67' ;;     armv7) natsArch='arm7'; sha256='9072c840173ef83f03dd14b58c58ae17826ec96c2353fe52a4cdc43647d150d6' ;;     x86_64) natsArch='amd64'; sha256='c60504071c86bced5fc1d89410cee2b319a07e01ee64cb14f5934a2238022021' ;;     x86) natsArch='386'; sha256='cbf86ab32f33d5ef965d463243f7c1235e4fa7e84bd0cc5eefbb27d2d73f7ddf' ;;     s390x) natsArch='s390x'; sha256='d9d27b1ec41e76cf93933fca3892e89a4421ff7679371b2790464bbe5b382384' ;;     ppc64le) natsArch='ppc64le'; sha256='b59fc21640e81f7a1a66b1ee7b2e939a74b277729d581cf97bb8e7bfd1cd411e' ;;     loong64) natsArch='loong64'; sha256='51a2eda8d532cd245c07f0e4a7aeffeb6563e74ca946fd08ee5c63ec8099cc02' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:58 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d4430bc98e68b4e70e619288a993ad05493fed493e8788eb20f35558ff3c72`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 7.2 MB (7181478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735d93da7009ade0f36dbde4d5b990e0f727023a0602d5401f9ad5aa73c05f83`  
		Last Modified: Mon, 12 Oct 2026 16:44:13 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22a53deb513962105acf7bc9598ecca72463fcb5eeb83d2f84e22c70c8c6be2`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:196892ea480d2ddf9b3857b9b88bba8125a6382b296bb00f2f920179035fa029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ed2bd1497ef2d945b39a9c655cc8f58da9d1bcddd16cdd8a2bb1830566c09`

```dockerfile
```

-	Layers:
	-	`sha256:9a2974ddf04dd8b16cee8d3ced5346b23e0dbf1585616af8bd3aafa3adab4031`  
		Last Modified: Mon, 12 Oct 2026 16:44:12 GMT  
		Size: 14.2 KB (14204 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-linux`

```console
$ docker pull nats@sha256:b3ca79f7345b24f89677a13614adc507628885d758fd2683336fae8ab41b707d
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
$ docker pull nats@sha256:44d097ac44eae1cc5018ad15230d7dce40730a9b3e97e8609a30be7300b51c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeffe7ea1c8c0107ff1925e4d1e72deca71b7bc78b88dca7c51850dcb7e8c065`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:49 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:49 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889400bdd6dae7e5556598ed28b077478b71b4aa9c56a425337151f2aeb0d6cd`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8c4ccdf19a8dec174f8d4e8abadcfa68259fde7eb7d525cd122c814ad4bae997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c422486066a69604dfd1bd3b454c6a582e02f58074b98f60a57999424c192f`

```dockerfile
```

-	Layers:
	-	`sha256:04b3c4a4043fa26cf91334657e33e79d34af8c7183daa803f782822b4dde6913`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:8906a4e4acca443150ce543be70026fbdb691fe0de24dfc9d55420e102e0ef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f385cafc57103c15fc60a100961756c3cc36e4868976097c2fcf3043d241eb`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:59 GMT
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
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19359091782fb9ee12bdd9b355a2283c082d7305080bd7bee12c2d75aa1cb2`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cc1b9ff88e129068ddef198dcb8102d2cb58538c5c803bb62eb70cce1a3d3304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cf69ca38b2233193f69a8564219c1deead37bfc78a41794ed2a8afaab2eb0`

```dockerfile
```

-	Layers:
	-	`sha256:a1d10ececc309b7d0dcfc94c54eb25ce1fdb586060602562acf3ad1db721c231`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:473ac7b1bf6e13defa896bec96f4519886004ccdb5783d0a0a7cb995384c505f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e645da39cbdfe14391e45dbb44e5bd03661de7a5a9db9ad27801f8fa34626`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:b006cc58729b78ae58ae620d5307fd6aecb0e9be5e0f23cb4f2a899e237f5809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8167b660447244b412ee39fa3d687165d9b26d6f8c3f82ef947961f57ea60941`

```dockerfile
```

-	Layers:
	-	`sha256:1c8bff0563b7ff2b89645fe51e35af53f1c02234775365b264d33771fcbfd51a`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3822bb2955c0737d55e0b582fd213c9776bd6808a25b2a04dd342e5e6a61f18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e78150f6e1fbdf1cab43acdf840971d27e84d4285e3fe772d6064efe21b4a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:195a8cc49a0d331e6d2ab7325e6e1cf8a1e7421d22d3ab148152b63b26c36399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efac3aea1dcc7c2914a491b2971c86b2700220a51c4b13f608b53f04178e1370`

```dockerfile
```

-	Layers:
	-	`sha256:054e2319e3b159a5d5d699f9b818deaa0c4c623fe044e3ebc5d79b09aca2cf13`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.8 KB (8774 bytes)  
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
$ docker pull nats@sha256:60d9ad50d69d5bf6ae3591594a1c0651c837453df0eb24013f62fba4939fcb75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e16e670071bc6e7acfade09c9f81a30ea0710ec9bfa972294e6cb5bc1dba2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:39 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:39 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721770d136a35be52d9103a742a7119d2ce4bf09044beb906b05448e32316692`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8a65ba3bd95e0c4d99a74be1145949ba5aca05f677c4471181ff760d2905a3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27345545e445f1ab5a58a61749cc70c5b04d5c55f63b02aa748113c570f582eb`

```dockerfile
```

-	Layers:
	-	`sha256:8bc50e0b17c087493b93ed6d1280bea0e7adfcaed586784f8fa968a8079adb68`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-nanoserver`

```console
$ docker pull nats@sha256:cc17ab3840fc1bfa32ed3513efe6cbbcfe7f7d6a5c78b068d3baed55d9c7e667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.8-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:7cafc55560ff9dd36647c35600bea5c4a8eba6ea6766a4788476f3d0935f3ea7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131793625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ed47cc35e3de27ffcd0655d58363c1e0e980a82e8d52083d7d3ab253e3f0d2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae930bd08d2e0519d9923822c52f515b7b36b80ca9e9794ec99810567a920c1`  
		Last Modified: Mon, 12 Oct 2026 17:09:15 GMT  
		Size: 7.2 MB (7150263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2cc958e59d81d9b225c8874e24688689e3f0e3b22e4a003d602ea7f1f6303`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eafa7d9c36577c2188439ff39ffcbf50b38e5ab8658aee1252d473abfa4e5e`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c1b99deca93b261238fbb78bcedf26f3958eacda76cdc3aa42c1b4ec84f40`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af896cbd9c26ff39a51f41b1a5d3bfc124cc1264af3fff6b70e92b6afc87dfb`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:cc17ab3840fc1bfa32ed3513efe6cbbcfe7f7d6a5c78b068d3baed55d9c7e667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.8-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:7cafc55560ff9dd36647c35600bea5c4a8eba6ea6766a4788476f3d0935f3ea7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131793625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ed47cc35e3de27ffcd0655d58363c1e0e980a82e8d52083d7d3ab253e3f0d2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:69b1d8c0a51cf28c732624a73f4247d855155f52d9d660c0ad3600276be0838a in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:09:07 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:09:09 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:09:10 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae930bd08d2e0519d9923822c52f515b7b36b80ca9e9794ec99810567a920c1`  
		Last Modified: Mon, 12 Oct 2026 17:09:15 GMT  
		Size: 7.2 MB (7150263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd2cc958e59d81d9b225c8874e24688689e3f0e3b22e4a003d602ea7f1f6303`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eafa7d9c36577c2188439ff39ffcbf50b38e5ab8658aee1252d473abfa4e5e`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144c1b99deca93b261238fbb78bcedf26f3958eacda76cdc3aa42c1b4ec84f40`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af896cbd9c26ff39a51f41b1a5d3bfc124cc1264af3fff6b70e92b6afc87dfb`  
		Last Modified: Mon, 12 Oct 2026 17:09:14 GMT  
		Size: 1.1 KB (1073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-scratch`

```console
$ docker pull nats@sha256:b3ca79f7345b24f89677a13614adc507628885d758fd2683336fae8ab41b707d
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
$ docker pull nats@sha256:44d097ac44eae1cc5018ad15230d7dce40730a9b3e97e8609a30be7300b51c74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6947718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeffe7ea1c8c0107ff1925e4d1e72deca71b7bc78b88dca7c51850dcb7e8c065`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:49 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:49 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:49 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:49 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cb3c7483bff5e4c3ee041b55aa585763e8d1faf3cfc144c412e89e443b57821`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.9 MB (6947210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889400bdd6dae7e5556598ed28b077478b71b4aa9c56a425337151f2aeb0d6cd`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8c4ccdf19a8dec174f8d4e8abadcfa68259fde7eb7d525cd122c814ad4bae997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c422486066a69604dfd1bd3b454c6a582e02f58074b98f60a57999424c192f`

```dockerfile
```

-	Layers:
	-	`sha256:04b3c4a4043fa26cf91334657e33e79d34af8c7183daa803f782822b4dde6913`  
		Last Modified: Mon, 12 Oct 2026 16:59:53 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:8906a4e4acca443150ce543be70026fbdb691fe0de24dfc9d55420e102e0ef24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6688122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f385cafc57103c15fc60a100961756c3cc36e4868976097c2fcf3043d241eb`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:59 GMT
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
	-	`sha256:3c96c665749c5d1476adee42db985ffdc114fea8667b7e6d8b2d10627a6128f6`  
		Last Modified: Fri, 09 Oct 2026 08:47:41 GMT  
		Size: 6.7 MB (6687613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19359091782fb9ee12bdd9b355a2283c082d7305080bd7bee12c2d75aa1cb2`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cc1b9ff88e129068ddef198dcb8102d2cb58538c5c803bb62eb70cce1a3d3304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cf69ca38b2233193f69a8564219c1deead37bfc78a41794ed2a8afaab2eb0`

```dockerfile
```

-	Layers:
	-	`sha256:a1d10ececc309b7d0dcfc94c54eb25ce1fdb586060602562acf3ad1db721c231`  
		Last Modified: Mon, 12 Oct 2026 16:59:03 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:473ac7b1bf6e13defa896bec96f4519886004ccdb5783d0a0a7cb995384c505f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6674883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12e645da39cbdfe14391e45dbb44e5bd03661de7a5a9db9ad27801f8fa34626`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:71433de5c168c1fc5fcf4bf333d28f11bf29d070bb5d6bf06f54553c8a46e1e0`  
		Last Modified: Fri, 09 Oct 2026 08:47:36 GMT  
		Size: 6.7 MB (6674374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:b006cc58729b78ae58ae620d5307fd6aecb0e9be5e0f23cb4f2a899e237f5809
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8167b660447244b412ee39fa3d687165d9b26d6f8c3f82ef947961f57ea60941`

```dockerfile
```

-	Layers:
	-	`sha256:1c8bff0563b7ff2b89645fe51e35af53f1c02234775365b264d33771fcbfd51a`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.7 KB (8744 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.8-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:3822bb2955c0737d55e0b582fd213c9776bd6808a25b2a04dd342e5e6a61f18d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6295204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e78150f6e1fbdf1cab43acdf840971d27e84d4285e3fe772d6064efe21b4a9`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:36 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:36 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:36 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:36 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cd071fcff8707204a7a69d3129127633ab2321eab0629221e00aefada171eda1`  
		Last Modified: Fri, 09 Oct 2026 08:47:37 GMT  
		Size: 6.3 MB (6294695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f779bdb49f1ccc742a2a56dde20f6e21b96216c1a23bcbfa0d877676c78f483`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:195a8cc49a0d331e6d2ab7325e6e1cf8a1e7421d22d3ab148152b63b26c36399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efac3aea1dcc7c2914a491b2971c86b2700220a51c4b13f608b53f04178e1370`

```dockerfile
```

-	Layers:
	-	`sha256:054e2319e3b159a5d5d699f9b818deaa0c4c623fe044e3ebc5d79b09aca2cf13`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 8.8 KB (8774 bytes)  
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
$ docker pull nats@sha256:60d9ad50d69d5bf6ae3591594a1c0651c837453df0eb24013f62fba4939fcb75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6763814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2e16e670071bc6e7acfade09c9f81a30ea0710ec9bfa972294e6cb5bc1dba2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:38 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:39 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:39 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:39 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ab25e90c0286cdfad38abbc5ff202d3452f01e898a096af43b44ca33d44bbc88`  
		Last Modified: Fri, 09 Oct 2026 08:47:39 GMT  
		Size: 6.8 MB (6763304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721770d136a35be52d9103a742a7119d2ce4bf09044beb906b05448e32316692`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.8-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8a65ba3bd95e0c4d99a74be1145949ba5aca05f677c4471181ff760d2905a3d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27345545e445f1ab5a58a61749cc70c5b04d5c55f63b02aa748113c570f582eb`

```dockerfile
```

-	Layers:
	-	`sha256:8bc50e0b17c087493b93ed6d1280bea0e7adfcaed586784f8fa968a8079adb68`  
		Last Modified: Mon, 12 Oct 2026 16:58:48 GMT  
		Size: 8.7 KB (8661 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.8-windowsservercore`

```console
$ docker pull nats@sha256:2b3c66026759c5d66059e599537aece4a0d7f7f7dcb3a1715d09483a16da3018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.8-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a6246fd743f2f9a6c0b6b43efb757a05dee8d9fcc0a4ec058d5552816d219186
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227351269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f80721d38031ed44768f395c2d9618f758f73068490c7158e81b48b6e71db`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:03:32 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 17:03:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Mon, 12 Oct 2026 17:03:43 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 17:04:02 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 17:04:03 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:04:04 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:04:04 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:04:05 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa418846795cca3c0c70012665d4bd86a0c628bec4bc78b3641150b59ad6c4b`  
		Last Modified: Mon, 12 Oct 2026 17:04:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48795ef1cc3f7be02661f72b9114d80214d2531a5e8d3946d522ef2fa94e06c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a9a42cb2973b283a1c59489a550d943e2453ffb0ad1bb6ce64443d6250d9f`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2a4471210ecaddf2eb237600394eba3d7ba8c2ff734e98a2f5086650d9ea40`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f874cfd2d1f18867c7febf940924d05a5b3f059eeec58650241f7b76606f98`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 351.6 KB (351622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03e769fc6ef3e44c3454d3866cfdd109137374930d01ff0d51e6d1c16f80d2`  
		Last Modified: Mon, 12 Oct 2026 17:04:15 GMT  
		Size: 7.5 MB (7497299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a9b352d52e11ddbb7d2b85b1b8e9e1c9a497d5714a7706a757654c21151b2`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45398e81caf86398d5b580193eac94b82421820472a3e3aa7a5c2683fe9486db`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bbf5e55be13cf2d5bc32f8d64d91f1a1a86564090cd9f695a2be6c7fe71b25`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa60723320477b919b1e89b467397de6eff102fa8feb181c9c25ec0d2f629de6`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.8-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:2b3c66026759c5d66059e599537aece4a0d7f7f7dcb3a1715d09483a16da3018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.14.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a6246fd743f2f9a6c0b6b43efb757a05dee8d9fcc0a4ec058d5552816d219186
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227351269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab0f80721d38031ed44768f395c2d9618f758f73068490c7158e81b48b6e71db`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:03:32 GMT
ENV NATS_SERVER=2.14.8
# Mon, 12 Oct 2026 17:03:33 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.8
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.8/nats-server-v2.14.8-windows-amd64.zip
# Mon, 12 Oct 2026 17:03:34 GMT
ENV NATS_SERVER_SHASUM=0633783dbcbdd4c09760781474693e74f5c2d17666d0be22135429a9765f2f3b
# Mon, 12 Oct 2026 17:03:43 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 17:04:02 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 17:04:03 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:04:04 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:04:04 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:04:05 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa418846795cca3c0c70012665d4bd86a0c628bec4bc78b3641150b59ad6c4b`  
		Last Modified: Mon, 12 Oct 2026 17:04:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48795ef1cc3f7be02661f72b9114d80214d2531a5e8d3946d522ef2fa94e06c1`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a9a42cb2973b283a1c59489a550d943e2453ffb0ad1bb6ce64443d6250d9f`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2a4471210ecaddf2eb237600394eba3d7ba8c2ff734e98a2f5086650d9ea40`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f874cfd2d1f18867c7febf940924d05a5b3f059eeec58650241f7b76606f98`  
		Last Modified: Mon, 12 Oct 2026 17:04:11 GMT  
		Size: 351.6 KB (351622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf03e769fc6ef3e44c3454d3866cfdd109137374930d01ff0d51e6d1c16f80d2`  
		Last Modified: Mon, 12 Oct 2026 17:04:15 GMT  
		Size: 7.5 MB (7497299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a9b352d52e11ddbb7d2b85b1b8e9e1c9a497d5714a7706a757654c21151b2`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.9 KB (1867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45398e81caf86398d5b580193eac94b82421820472a3e3aa7a5c2683fe9486db`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bbf5e55be13cf2d5bc32f8d64d91f1a1a86564090cd9f695a2be6c7fe71b25`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa60723320477b919b1e89b467397de6eff102fa8feb181c9c25ec0d2f629de6`  
		Last Modified: Mon, 12 Oct 2026 17:04:09 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15`

```console
$ docker pull nats@sha256:497de820dd61fc77980a400c71abec6f912dd2b08a685ecb4d64fd20ad9b6868
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-alpine`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-alpine3.22`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-linux`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-linux` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-nanoserver`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-scratch`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15-windowsservercore`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1`

```console
$ docker pull nats@sha256:497de820dd61fc77980a400c71abec6f912dd2b08a685ecb4d64fd20ad9b6868
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

### `nats:2.15.1` - linux; amd64

```console
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-alpine`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-alpine3.22`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-linux`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-linux` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-nanoserver`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.1-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.1-nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-scratch`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.15.1-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.15.1-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.15.1-windowsservercore`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.1-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.15.1-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:2.15.1-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:2ae57dfba3063d5e25fecb75256118c0882a1a2d2cf7d0fba17a7c701df956f6
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
$ docker pull nats@sha256:9e47060a6c099ce118566e425245adc5c78139d02e1cc6fc48747b776445c4f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11541724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4aa9410259ce1805f57bae1e650554abd68606d63e1c2a22ff2f3429ca20dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4854e17c8c8c7e0da4165bd89ef46f4af5c59179c51e6ac41276e1dabf38151`  
		Last Modified: Mon, 12 Oct 2026 16:44:34 GMT  
		Size: 7.7 MB (7748681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562d21c9cf2cc52d3d2798a289bf7bd76c53b19a301a6f4f2c2a10187ec2669`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f65c760823bc16dffb6e1bd42a523756630e9e88dc7a281c21176406076ee0`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:55b73a84becd7335176b223ae9aeb453cb602e953716f46a3650f3f0d3ba672b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3194b2f04abd9e5a04cc5fed21da58947bd36eb7c28a9aad7cf60220a42168`

```dockerfile
```

-	Layers:
	-	`sha256:abc2c9821c9b643f603a2a852eb96389358f98a1f8ec88ba201de78c07b6f49b`  
		Last Modified: Mon, 12 Oct 2026 16:44:33 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:b618c0bb60f1863dda7faef313e32747be3c5662a5331fd35ed4196293507acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10996504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c122375ca211b0cc87934e9be27958085ae530604ae6480020704a665ab2489`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:58 GMT
ADD alpine-minirootfs-3.22.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:58 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:00 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:00 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:00 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:7e2465fe3a8e42c1cdb91115b727e101cc5c4c015eea49556eadf5209144020b`  
		Last Modified: Thu, 17 Sep 2026 20:38:02 GMT  
		Size: 3.5 MB (3498485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1616864438ff0d332dad194fed8bb6f6cd8f939ad101dd749a8d5930d6711c8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 7.5 MB (7497050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ddaa1eda343d7e5b738cce18719a42802450ce4be65c41cef01553f8c3edf7f`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d0893041d85a537b96f371e11f712aee8c7469f2aa9dfb7b525e2729b8ff8`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:0b56f409edeb05a1b284a9c81e07d0e3949cc88a4a479b44daa33e61d8796f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68983ce4ed068506700161a34283d6882db6c815aeae0809e7b1e5b2eb0b2ec`

```dockerfile
```

-	Layers:
	-	`sha256:9cfef94a978843c3b672391067e2f40dd4bfbd7f5e310fd56a98b69cda9d812b`  
		Last Modified: Mon, 12 Oct 2026 16:44:05 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:9853d1b265cb8932e24dfd37a28e53d478d4aa932aa2255ddee390a3edde00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10699684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917b53af7340bf33e4429ec83c6661cf492eb2ef9a7eafc65e0b9231366e053`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:16 GMT
ADD alpine-minirootfs-3.22.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:16 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:32 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:32 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:07acbb22bc89fa54231febcd982103373c9a1199bc23a4581d7a330633a63bd3`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.2 MB (3212214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d82dc2f0bbfbc9021042c02edf501284511b6fc2b6c9cbd0b394a8469a5ce6`  
		Last Modified: Mon, 12 Oct 2026 16:44:37 GMT  
		Size: 7.5 MB (7486498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6104850958cfcc5b33068cf5c0d889522a9c74468a116a8f023a37934bd04d`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2695e79dceddfb886c0ab25860d25341719d0bcc2e4074ea84a03ad372222653`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e211b746de010218276f86a312cf76b78e93e959dfe366efd16b18f8bb22f2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a4484874d7942539e6f78712b39604e46f3e1f4c7e1e2ea39b251e1642179`

```dockerfile
```

-	Layers:
	-	`sha256:5334310514bbcc03316d4f456bde85fe15c49e071c691352d13a2eeedb64b127`  
		Last Modified: Mon, 12 Oct 2026 16:44:36 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:b07197d22125e33d5ac2470946cfda84eabcf8ee9e06c2891c82b9a8fcf12a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11177594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38409376dd45caa7da2298c33b2d35035beec274209ff00a0aa6c4e206dfcd82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:44:21 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:44:21 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:44:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:44:21 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a4c7b4f7552ec229b00ed338d86d406d3fb46d9a73ab68df5e39f4ca40e3e2`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 7.1 MB (7053539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d98108bce98c1882d3a2c2dccc76439bad8f3764574ff92108ca8b2de7ba71c`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fea996aab37c32cd87316a2184d4354a9838e63b297524548fcbdabd002496`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9c344ec0fd24c4a0a06a665f96334570ff17077458df0741cf33a29d8976c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2ca0c529c25e1db75f9fc227205bfe5eaed31fa4680c1aca14739b49e8e2535`

```dockerfile
```

-	Layers:
	-	`sha256:c6a49ca1366a7b9a3df61dc9c639f1bd0af3f0acb7f366226ef9268b6159f23e`  
		Last Modified: Mon, 12 Oct 2026 16:44:26 GMT  
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
$ docker pull nats@sha256:c53ce1b2e34e444765491132abf66b9e673ddcc963ece1832c0ca14ffc2e2f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11183572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbba9133d190aa0957bb7862084ab8343e6e6a281adfa832284025173e73281e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:27 GMT
ADD alpine-minirootfs-3.22.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:27 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 16:43:54 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:43:54 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='e2fbab4cad7d3c76e3052eb959570393c9d73ba756b70bf8e9eea61e9ae6d49c' ;;     armhf) natsArch='arm6'; sha256='a8c76cf2e716745ea140636c02f89195fb209ccbd01be46d3d973acee7d8d2e7' ;;     armv7) natsArch='arm7'; sha256='ddac3887f9b0e17d657d1124bfd648d2f3d98b8b12a0918a0443eff079d2c238' ;;     x86_64) natsArch='amd64'; sha256='bf5edc7b1ce98e885c368cb43a886eb148dc5d0551d99f3cf6141fb5e1954c70' ;;     x86) natsArch='386'; sha256='9fde80807787a77e25d0143b0835b8a7de8b735e9ebe01fcbcf0205e00f7f06b' ;;     s390x) natsArch='s390x'; sha256='478644ef83c46f585f9714b05201b5596e718cdd55ef295fb31abef6a71b4646' ;;     ppc64le) natsArch='ppc64le'; sha256='4918414d24b16c30e71352e362b2d89e9e47c557514cefb5d4c6f2523cfee73d' ;;     loong64) natsArch='loong64'; sha256='c0875670e7a5fda318e4114cd549b39c77f3294ebb32f90f78c6e7c83635d8d9' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 12 Oct 2026 16:43:54 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 12 Oct 2026 16:43:55 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Oct 2026 16:43:55 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:6c1c1a646e5138cb54f54c8faa4398dc0324efad42316914e1bd689e509df090`  
		Last Modified: Thu, 17 Sep 2026 21:38:35 GMT  
		Size: 3.6 MB (3640114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a11415260f41de38bc979152e4dd0ba0e932293fd45f58469bf34a850033fc`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 7.5 MB (7542488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9295834f17094d1129721662248369a2649c798d702c03e48d7b2f78e14f499`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f8301c37f2fea71b1f7e4126cd6a01bd3763cb209d4bf844a6a0d92d9adac`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:54886661ceb90e873b5b65ecfd86c2bd99a925de89349f5e83bf8528b994b5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057ed3476cde519931ae503b03de2feccefe43e35de9631f6fd266e5caa45012`

```dockerfile
```

-	Layers:
	-	`sha256:a28bf5b7ae38c77502241f120d650d3e7dd75762872e25c54605d4bbe6700d74`  
		Last Modified: Mon, 12 Oct 2026 16:44:08 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:497de820dd61fc77980a400c71abec6f912dd2b08a685ecb4d64fd20ad9b6868
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ac5af6098965d2aa5ffc8460c28a9dc15102b98ae0ea8e930433120deb32d10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:6305b06c300ea4feba680546c3fdabc7f8cf63a312b3f642a119c67bb702b03f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132172427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec1280d14f36084798991969d16cc7a4b2badd7ef5625ae21128d211c69e73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Mon, 12 Oct 2026 17:08:36 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:b36fd16242080099b3694b08b598263952b11e65e3d677233d869e7fc29f48f0 in C:\nats-server.exe 
# Mon, 12 Oct 2026 17:08:37 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 17:08:38 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 17:08:39 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 17:08:41 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25fd06f77a297ca2ab7bb0372b9a289fa703bdc71407f95937932e5e81d5dc9`  
		Last Modified: Mon, 12 Oct 2026 17:08:47 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba37445b97073d5e5e4d49742ef584a0419d22cb99e8e0a0f245d9f51c3201`  
		Last Modified: Mon, 12 Oct 2026 17:08:51 GMT  
		Size: 7.5 MB (7529094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74abf548de64b5c05a4a5680462b174e2cc2df3526568de29a356c3009df2f4a`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac7f4b4efca7ae2484e440aeecbe30e275d4fc156a98e8c0f93cac4c5b2fb1f`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee134ea322b81ed81d0cf6894cbccf4799b3bf12e92d4a09a268a3eb80531373`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126bca43cd505e68d4faf0d404bf557c61355ceaa3a417bc5547065b4b8140b`  
		Last Modified: Mon, 12 Oct 2026 17:08:46 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:3af42719041e578167e4f14c67a01d2fdc3c2ee4a228ca8315c6c0e18e15fdac
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
$ docker pull nats@sha256:3c292bb2c535e65089cb1f6b57e2f41e46b5f6a5fcfb4970d5c9ff5e112f3cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7331334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451abed3d0412cc8f265866f5cd403d386cde28c4d62562f18761273327fcd9d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:35 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:358c47cdbe19d4001fef5e8608919d4985edf518063d14e89c79e2b353b79a1b`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.3 MB (7330824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dddf4ab9207373d2f166a28383172351ff66d07c94dabbe6aff98860fb97dca`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2f5cb3fc629508beeeacd79c5567f2a61082935b76c8ac49425211e3a45c843b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c116edf8144e18dbe20025a58857d5037bdc6177bdb5fdac916657aa756e8c`

```dockerfile
```

-	Layers:
	-	`sha256:5a2ed161c5d30794ee853474171c10c6b1a932758af8bc63e94837e918ff6a56`  
		Last Modified: Mon, 12 Oct 2026 16:59:40 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:d75454b3d4baeaced99c9b56c85bd2e92dc3a7ba0a397f8dcf991cc1be7f35f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721791f5f4a2b09842535963faa663681ab69df29915b1b29419380a1f7ea1d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e92b298d5d227093b3f92cae05d5a026c3ba550af233f01322af434348c0845`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7079638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f549a8cf07c7d47b6852c46888714d5bd2a01cdf104b672414a4056244d9427`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9bf3da03bb4370c6c219846b34c65be22c28dfb384de3ddb444e8e47499d4ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc058635b7b6e2750a5b237637a4ea55ff4152b4212ccc22db6fcd1311fe5d28`

```dockerfile
```

-	Layers:
	-	`sha256:cf812f69a028e0b6c4c42cf6322e8947e61aadd04c1cf1b5fc2e6a3cf6babcf3`  
		Last Modified: Mon, 12 Oct 2026 16:58:52 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:bfd58d638ce956b7a33fec445a791d732397e6580e6f54579f89cb505caaf786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:446e7ab3a40b120edd44d5acf59bafdb4c84825665942d934085dcc43e043d35`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3be4f7a39222eed2e97efb2ecd3373dea29fd7ed5c397d6b31a57b077731d7fc`  
		Last Modified: Fri, 09 Oct 2026 08:47:06 GMT  
		Size: 7.1 MB (7069347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0206457247f7056b64d0aa20db33a27b141515eee2a08ad426c618b040d78798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5191860c1e74ae08db26a5f25b319416dccbee1831989318146663df06ed4157`

```dockerfile
```

-	Layers:
	-	`sha256:cf1ac84489f75c00b0f4658d37732fd9fc81c729d2644d825f4821b0de48c58e`  
		Last Modified: Mon, 12 Oct 2026 16:59:27 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:104c96a9d513e93352d64daf2943cd9df629c4d4122508d4993d8704638468dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6635267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5813bb76d6d87efee4f246f8f876c771b2c5ae788a767647424c2c5e31a651d0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:59:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:59:22 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:59:22 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:59:22 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:59:22 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4c2992a5e2348e0e0a64fcb1bf0f475005964aa001e556e5d2acf88352eeaa38`  
		Last Modified: Fri, 09 Oct 2026 08:47:04 GMT  
		Size: 6.6 MB (6634758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d2fdc18828446ca2aff0dbad6ffc6ddaa89ed431c385080aa616c29be4ff1`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:ff4644c0270127c07a3999ad34cef44a0fa3d7a6fca614ab34acd5a78920ef0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0850c75ae4880d0e13a84865a03cdc23ba2b1a1926685c969d6a7037ada479a3`

```dockerfile
```

-	Layers:
	-	`sha256:d82360ca0b1ee1ca8ce1d73c28942f74efb44666a588533a6e3402b09413521a`  
		Last Modified: Mon, 12 Oct 2026 16:59:26 GMT  
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
$ docker pull nats@sha256:1a2d8569ad7959072a6e92dac3b4d9cadf46007cda97e2db568df2702360d662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7125330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5e4876ae22bbbb74a1a65127056344bd56059d5b037bb04ac8acfba83e35e2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 12 Oct 2026 16:58:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 12 Oct 2026 16:58:34 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 12 Oct 2026 16:58:34 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 12 Oct 2026 16:58:34 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 12 Oct 2026 16:58:34 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d3f37301915293e80322580578d8aa2750aa0ed1f6e0677d2245d47b9e858a77`  
		Last Modified: Fri, 09 Oct 2026 08:47:03 GMT  
		Size: 7.1 MB (7124820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f078ffcaa003a3eeefb6590e17f1ec1e2254226dfd63e28cceba01687b090693`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dd81cb6c80df22ec07d5728914a4c999d8a36f3ad014faf5bdf70f4dc8d7c7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0712c88c539ec4b8f15670aaafa4ac040051e3dabbec3256bdd6adbd4d4383e9`

```dockerfile
```

-	Layers:
	-	`sha256:07485465719f9b03794c1faff966573e3f898caa1a925741c9546c8517b57b9b`  
		Last Modified: Mon, 12 Oct 2026 16:58:44 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:d1d2509a442fdb17878d5698a3f81eadb3183cb5ac3af9d0f9da6d39ba0cafc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull nats@sha256:a8ddcae8172d2e2b10cb2c273a8b792019fb0b2a3f0a187d1fb2852cc279bba5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2227738198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feafef63a5119a79cb85321946ca3060f3a79e9fe9c70bba659771230e84debf`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 12 Oct 2026 16:48:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Mon, 12 Oct 2026 16:48:21 GMT
ENV NATS_DOCKERIZED=1
# Mon, 12 Oct 2026 16:48:23 GMT
ENV NATS_SERVER=2.15.1
# Mon, 12 Oct 2026 16:48:25 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.15.1
# Mon, 12 Oct 2026 16:48:27 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.15.1/nats-server-v2.15.1-windows-amd64.zip
# Mon, 12 Oct 2026 16:48:29 GMT
ENV NATS_SERVER_SHASUM=4f7edfa376750b2720463bd22766ed469a5f13f378a643097866fcd953cbf7e3
# Mon, 12 Oct 2026 16:49:35 GMT
RUN Set-PSDebug -Trace 2
# Mon, 12 Oct 2026 16:50:04 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Mon, 12 Oct 2026 16:50:05 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Mon, 12 Oct 2026 16:50:06 GMT
EXPOSE 4222 6222 8222
# Mon, 12 Oct 2026 16:50:07 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Mon, 12 Oct 2026 16:50:08 GMT
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
	-	`sha256:d5e264bf8d2630a091938061d698af45f3c008b802d9d721deb8cb935544fbfd`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977c6b1abab0e756936b58ce21c7b49a093ed2965dd6079fd1a7b088412687c`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a6d1554af207d0dee58cad2b07ddca3102325579d2688ff8a186d69431ec65`  
		Last Modified: Mon, 12 Oct 2026 16:50:16 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5141702f5a38e1d1a3e1f7aa494f7d9cfb9cf1e6caae40e3f09b4ddd5b6c1`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6069feaf205a223800f4582b3e65a96b200193d7e4a9f23588c3565dc51f8d6b`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fc33d925299a80f2979d568dee6f1c597ee92103f74f239a8ac82ba2ad765`  
		Last Modified: Mon, 12 Oct 2026 16:50:14 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93ef596fe4b5de587d2733336895125f32cfb59df0f1f668ecccf5cc87ca5c2`  
		Last Modified: Mon, 12 Oct 2026 16:50:15 GMT  
		Size: 357.3 KB (357348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8259ca5da95ce9b367e44169253d859844a822cb9f61b966c23c08ae278144`  
		Last Modified: Mon, 12 Oct 2026 16:50:18 GMT  
		Size: 7.9 MB (7878504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2acc809c4cea1e2decec89c5b2258c6398ff010e282b2b72722655c385df912`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.9 KB (1860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8f9d5fc685bd90bf9b086d6d0ffcc51ffbe44fdb8456b95d1568ba4e8cd93a`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3266232dccbe02750e3e314e0cf82a0f7e7031bd3a8b61acc4ba2a2517baaf`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178965f66d4018939630be9b836a6a6a236edead8e6c9f0aacacace46b951d92`  
		Last Modified: Mon, 12 Oct 2026 16:50:13 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
