## `nats:latest`

```console
$ docker pull nats@sha256:032a7790ddf61d38df1fd32c6cd0d3b4575f15e91c441523811b9fc37c1e968d
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
$ docker pull nats@sha256:b87846016386fed5ca3f4996261eb78af44b2b9904613d8c6f31bc179723e7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f176a0975993dfdc4fd906fe1ebbf9099ea488028e6962551e1fc98d7b9781`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 18:47:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 18:47:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 18:47:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:47:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:47:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 18:47:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2fda8dce9f4512a34b88d1a84a70337e227df845bedca7f86e770b582cbaf63`  
		Last Modified: Thu, 17 Sep 2026 18:47:16 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:db0945c5f7ebd3275388b0a256d079dd5992a587e95003c163abf10562cb6500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b07a414d963b46479e9ded1249ff46b0db472025f9a85c59936a0fd5b62ce9`

```dockerfile
```

-	Layers:
	-	`sha256:c53870420ef033dc3fee106485ee192c4ce5fbe09549f92ec6e0e80efbe7b1ab`  
		Last Modified: Thu, 17 Sep 2026 18:47:16 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:87508ab06cf9417a0983171abd69628915f5dfa700149c90964e645bacf6e0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf9f99ddd15eee803d9f0da5a6dc0b9eac8dee97056bfa19ed1aad68aaec6e5d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 18:48:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 18:48:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 18:48:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:48:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:48:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 18:48:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ba75b25cf629367a41922548ffadd9b31a0fe31c00fdde1f6915b4d412f5fa`  
		Last Modified: Thu, 17 Sep 2026 18:48:11 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:6f682498f843e48578311a589624dfd37c45fb752b97fdd0d233254f25f61449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f74456a101aaf7736799a0a18dc6a9932e6055e7dee5f15c622098d951b5ea`

```dockerfile
```

-	Layers:
	-	`sha256:71e13bac1e8909c3066ed0334fd4ad4beeba1f81173a500605c193b3695e62a2`  
		Last Modified: Thu, 17 Sep 2026 18:48:11 GMT  
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
$ docker pull nats@sha256:3857acdd1383a76ac619493a8a11d5c2dd8e92eb54a617c0bc142e11671c0cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aebb46556aa89b7480665e2418fd4f237453d9e61e50454388ee45b163c97cce`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 18:47:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 18:47:51 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 18:47:51 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:47:51 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:47:51 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 18:47:51 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec90aa197d36b195153ccb5021c878fe8377ddd277f06f6ae2ab70b0a4c580b`  
		Last Modified: Thu, 17 Sep 2026 18:47:55 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:a0390ff2352c268a70dfabe4ceb3eefe5c40441e31d19e9231b1d00dd7c8594b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862d13db5c2cd50b921438dd8b9f2e3b00a3ae9466ecc694748aa460e2c9e63a`

```dockerfile
```

-	Layers:
	-	`sha256:25b45d5c6d81b6245109dacdaafa8ed0dce52051c230a067fa14e4488f270bb7`  
		Last Modified: Thu, 17 Sep 2026 18:47:56 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:3ed51b19c295698d73f00fca99a0de94dfef7217eb8dcb31eed81c9940720835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff70453f83210cd65a7c2f074ce48cb29690c2d748fe64a4e22a4238d13543f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 18:46:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 18:46:58 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 18:46:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:46:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:46:59 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 18:46:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8075acfaaf058268dd4fa510e7676bb97a5b0fd1f23bc45f1b8a10e0efe83758`  
		Last Modified: Thu, 17 Sep 2026 18:47:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:a090557c7425c816be933d023eb14d4d4eb8d43ab4918a1b90d5b72b3891c199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5854efb3e3b891fdaedc8459cb103b99557934a21ca4b04ebb4e5a18ef2bed18`

```dockerfile
```

-	Layers:
	-	`sha256:e386e7ae6634184b58c47842b8469b0b1c917f28e3e9a15e506f57d9ec0c2414`  
		Last Modified: Thu, 17 Sep 2026 18:47:08 GMT  
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
