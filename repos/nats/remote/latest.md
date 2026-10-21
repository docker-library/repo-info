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
