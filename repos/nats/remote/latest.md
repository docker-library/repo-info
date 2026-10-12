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
