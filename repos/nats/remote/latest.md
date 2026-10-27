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
