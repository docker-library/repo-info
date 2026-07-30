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
-	[`nats:2.12.14`](#nats21214)
-	[`nats:2.12.14-alpine`](#nats21214-alpine)
-	[`nats:2.12.14-alpine3.22`](#nats21214-alpine322)
-	[`nats:2.12.14-linux`](#nats21214-linux)
-	[`nats:2.12.14-nanoserver`](#nats21214-nanoserver)
-	[`nats:2.12.14-nanoserver-ltsc2022`](#nats21214-nanoserver-ltsc2022)
-	[`nats:2.12.14-scratch`](#nats21214-scratch)
-	[`nats:2.12.14-windowsservercore`](#nats21214-windowsservercore)
-	[`nats:2.12.14-windowsservercore-ltsc2022`](#nats21214-windowsservercore-ltsc2022)
-	[`nats:2.14`](#nats214)
-	[`nats:2.14-alpine`](#nats214-alpine)
-	[`nats:2.14-alpine3.22`](#nats214-alpine322)
-	[`nats:2.14-linux`](#nats214-linux)
-	[`nats:2.14-nanoserver`](#nats214-nanoserver)
-	[`nats:2.14-nanoserver-ltsc2022`](#nats214-nanoserver-ltsc2022)
-	[`nats:2.14-scratch`](#nats214-scratch)
-	[`nats:2.14-windowsservercore`](#nats214-windowsservercore)
-	[`nats:2.14-windowsservercore-ltsc2022`](#nats214-windowsservercore-ltsc2022)
-	[`nats:2.14.4`](#nats2144)
-	[`nats:2.14.4-alpine`](#nats2144-alpine)
-	[`nats:2.14.4-alpine3.22`](#nats2144-alpine322)
-	[`nats:2.14.4-linux`](#nats2144-linux)
-	[`nats:2.14.4-nanoserver`](#nats2144-nanoserver)
-	[`nats:2.14.4-nanoserver-ltsc2022`](#nats2144-nanoserver-ltsc2022)
-	[`nats:2.14.4-scratch`](#nats2144-scratch)
-	[`nats:2.14.4-windowsservercore`](#nats2144-windowsservercore)
-	[`nats:2.14.4-windowsservercore-ltsc2022`](#nats2144-windowsservercore-ltsc2022)
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
$ docker pull nats@sha256:67ac7866d010e8d83302dd30332eeae1a2b7a8ee051155e2eb5a5485b720cd4b
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
	-	windows version 10.0.20348.5386; amd64

### `nats:2` - linux; amd64

```console
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:c11af972c99ae542de8925e6a7d9c533aa1eb039660420d2074beed6089b3bf0
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
$ docker pull nats@sha256:a42e284980d105c1b668d553175b4c7abc9b7187c5e9859baf4f1d564772b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bc12a71290912ecf2ffb2e5df45be9ae532fef1b8240aef6102891d375ce25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328794545e9bf2e5cced545a15e65e783306486272234d91c5d2719d0ec9b70`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 7.3 MB (7267461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266119c4af18be04cdea3885753ddc31a6343f4a3cdd22439d75ab32a2587dbb`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff0c17447e0330a97ae8ec95d6fdcadcd8cb8991d6c548858ec3d69a3c23a2`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2f3d3942c5b8e78340ff935ef0179cde1967969ba70ca4664fc6dfaaea0a4ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac360c9f1c2562befb519baafc614b6161d4ceee74f7701c04b24cb07d223f`

```dockerfile
```

-	Layers:
	-	`sha256:564b644082e6223b0d2da321c2a6a1e4337ba6eee056219eeed745c943604b09`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:d4e53bdfe4a9d810005abaf974dd9a12374c9cd187fa6be4622eff6a73b9e2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8ea3792d3865371b24b0504e2a7a61140487a85c1289a56e6b0a414f3aa451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fb591416c4f81c00164a6df7c9a0df260683e8939dad253a229dad6006eed7`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 7.0 MB (7001975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a94003f98dbb2cec821705d1615ee3fabdb6278a14a965fad556f00935df4e`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca954dfa8945adfa8283aac38370a786f5ed56c79b3a242cdc0a7717732e4c01`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d2617716222bd82abc599cbe8277f98292977c0dfdd769178f6be9d0fdbfafc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf691e94e06290aeb75516eb80f45749858c6ac66c0462f375e5b23f89c0f28`

```dockerfile
```

-	Layers:
	-	`sha256:051ab4a8c59747a86c2b341f78f881dcb5ce383e1adb18760b2e37658493f9f3`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:13a3f0e29c614c6b948bac76e8511e103dae75a1f3aafb215d49defef515bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b0bb66ac4162fc21cb64f4e23f7840a339f47c9c6e9fe68e07f879189b36aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c57aa7f84636f8b81c22758ea4a628036299dea2750a000eb5de6220234b418`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 7.0 MB (6992381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b307022eba60d3fa1d5f402e6c270a824a7c22733d6b54b89a11d8e47f5df06`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979223c0d164e45ff3d261730284785ca49e194cd773a37086da9bdd856159e`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cc9db77acad1e638c9d195fe27bf9cb73a582f1d6c8a48de4aac85d42fe8b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5e4eea65b1e82754ac2719f2026f89bf4d253eda69a68c1c7a0753cc424985`

```dockerfile
```

-	Layers:
	-	`sha256:be67ebf23efa9ed614c3e6ecbd8dbfe60c3c196c67672894c62befc4102a028d`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:064222a09af7b194af6760d6089aa9ebd93fe7b8136ec2193ddb72dd78d8bd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10740987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422fa2e0339d3eb86f18cdd7040198afd726fadc2c6c0f499eff9c9038c9926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d45f995edc436f16aee98c90da4e281a787ba379a91c7b812155f24b01f240c`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 6.6 MB (6619532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6721188e517e99c1592046fd1c1f9d23061e01b186bfce2cef6bc65a52a5f7fd`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d19df182cbee156b010b04853280b7c12519c2b2a73a5d9a80ae357c814c67`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e4aef08d7bba47a53a2cdfea2260f5792c1fdb440a5ad4ff982730170aa3deb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8badc11acca1d928d62f328aa0f3707584a4655e9abfa03e3b1b697d59a65`

```dockerfile
```

-	Layers:
	-	`sha256:e3cd06dd05bb0a25b9621e25ea152cd6cffebb5eff99e2740970497eaafedfd3`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4cf2613394dd476c98defc5949b0112c58104e69fdedcea45623d8a0500232ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10404101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e46a96841a5e8a1a059d0b1f2e9f7ef331d2f66c708831b9b3b20e44dd08b4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25f5c4125e4e65d2291719a7301077f73955ea8a486793cdff158dd5b38f2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.7 MB (6683899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:911ea621f7b7bdc2849cb0bf7c5d77fc52979adadcf778fe1895cca4f30c7d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1733bfcfab9d319252505097d1b8090505f3d0cfd8707c419d6e05613fec1bc7`

```dockerfile
```

-	Layers:
	-	`sha256:95525b415b6f44f224df4f52f3673394dacc4e6da64f4cdd96d7f69ed6227977`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:1b40e5777ca5e42f1a686c44c10756b93b42ecf9828e34535c3362c661ffe383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10715340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e765891c29d76f069d9a16b30c6de0b6d5dd98fec8bc48ac2a30e38412754a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:39 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771170401b4070c1dd173335f21881887683088a98679a5ad80585b2067bc1e2`  
		Last Modified: Mon, 29 Jun 2026 19:11:52 GMT  
		Size: 7.1 MB (7077286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24b09c93cbe4710a2235d033d228f7973210a7b7a93081d020e649a8ee2b2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcceda063df49f85902f8d00b7d2a5de091e8f90c478cb5943dfef623befe7c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5256630d95ea8d78de9df1f862aa8468e2618c70446f2b2b34a479e31cc09d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd0c6ed24bd266521a1aeef3a2d01fac948384e4dc7e53cf92e059d06220860`

```dockerfile
```

-	Layers:
	-	`sha256:e4110a5e17fc15bf29266ec20af296d24defb647f46623a029d38782d3188aa6`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:c11af972c99ae542de8925e6a7d9c533aa1eb039660420d2074beed6089b3bf0
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
$ docker pull nats@sha256:a42e284980d105c1b668d553175b4c7abc9b7187c5e9859baf4f1d564772b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bc12a71290912ecf2ffb2e5df45be9ae532fef1b8240aef6102891d375ce25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328794545e9bf2e5cced545a15e65e783306486272234d91c5d2719d0ec9b70`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 7.3 MB (7267461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266119c4af18be04cdea3885753ddc31a6343f4a3cdd22439d75ab32a2587dbb`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff0c17447e0330a97ae8ec95d6fdcadcd8cb8991d6c548858ec3d69a3c23a2`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2f3d3942c5b8e78340ff935ef0179cde1967969ba70ca4664fc6dfaaea0a4ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac360c9f1c2562befb519baafc614b6161d4ceee74f7701c04b24cb07d223f`

```dockerfile
```

-	Layers:
	-	`sha256:564b644082e6223b0d2da321c2a6a1e4337ba6eee056219eeed745c943604b09`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:d4e53bdfe4a9d810005abaf974dd9a12374c9cd187fa6be4622eff6a73b9e2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8ea3792d3865371b24b0504e2a7a61140487a85c1289a56e6b0a414f3aa451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fb591416c4f81c00164a6df7c9a0df260683e8939dad253a229dad6006eed7`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 7.0 MB (7001975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a94003f98dbb2cec821705d1615ee3fabdb6278a14a965fad556f00935df4e`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca954dfa8945adfa8283aac38370a786f5ed56c79b3a242cdc0a7717732e4c01`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d2617716222bd82abc599cbe8277f98292977c0dfdd769178f6be9d0fdbfafc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf691e94e06290aeb75516eb80f45749858c6ac66c0462f375e5b23f89c0f28`

```dockerfile
```

-	Layers:
	-	`sha256:051ab4a8c59747a86c2b341f78f881dcb5ce383e1adb18760b2e37658493f9f3`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:13a3f0e29c614c6b948bac76e8511e103dae75a1f3aafb215d49defef515bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b0bb66ac4162fc21cb64f4e23f7840a339f47c9c6e9fe68e07f879189b36aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c57aa7f84636f8b81c22758ea4a628036299dea2750a000eb5de6220234b418`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 7.0 MB (6992381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b307022eba60d3fa1d5f402e6c270a824a7c22733d6b54b89a11d8e47f5df06`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979223c0d164e45ff3d261730284785ca49e194cd773a37086da9bdd856159e`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cc9db77acad1e638c9d195fe27bf9cb73a582f1d6c8a48de4aac85d42fe8b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5e4eea65b1e82754ac2719f2026f89bf4d253eda69a68c1c7a0753cc424985`

```dockerfile
```

-	Layers:
	-	`sha256:be67ebf23efa9ed614c3e6ecbd8dbfe60c3c196c67672894c62befc4102a028d`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:064222a09af7b194af6760d6089aa9ebd93fe7b8136ec2193ddb72dd78d8bd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10740987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422fa2e0339d3eb86f18cdd7040198afd726fadc2c6c0f499eff9c9038c9926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d45f995edc436f16aee98c90da4e281a787ba379a91c7b812155f24b01f240c`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 6.6 MB (6619532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6721188e517e99c1592046fd1c1f9d23061e01b186bfce2cef6bc65a52a5f7fd`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d19df182cbee156b010b04853280b7c12519c2b2a73a5d9a80ae357c814c67`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e4aef08d7bba47a53a2cdfea2260f5792c1fdb440a5ad4ff982730170aa3deb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8badc11acca1d928d62f328aa0f3707584a4655e9abfa03e3b1b697d59a65`

```dockerfile
```

-	Layers:
	-	`sha256:e3cd06dd05bb0a25b9621e25ea152cd6cffebb5eff99e2740970497eaafedfd3`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4cf2613394dd476c98defc5949b0112c58104e69fdedcea45623d8a0500232ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10404101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e46a96841a5e8a1a059d0b1f2e9f7ef331d2f66c708831b9b3b20e44dd08b4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25f5c4125e4e65d2291719a7301077f73955ea8a486793cdff158dd5b38f2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.7 MB (6683899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:911ea621f7b7bdc2849cb0bf7c5d77fc52979adadcf778fe1895cca4f30c7d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1733bfcfab9d319252505097d1b8090505f3d0cfd8707c419d6e05613fec1bc7`

```dockerfile
```

-	Layers:
	-	`sha256:95525b415b6f44f224df4f52f3673394dacc4e6da64f4cdd96d7f69ed6227977`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1b40e5777ca5e42f1a686c44c10756b93b42ecf9828e34535c3362c661ffe383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10715340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e765891c29d76f069d9a16b30c6de0b6d5dd98fec8bc48ac2a30e38412754a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:39 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771170401b4070c1dd173335f21881887683088a98679a5ad80585b2067bc1e2`  
		Last Modified: Mon, 29 Jun 2026 19:11:52 GMT  
		Size: 7.1 MB (7077286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24b09c93cbe4710a2235d033d228f7973210a7b7a93081d020e649a8ee2b2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcceda063df49f85902f8d00b7d2a5de091e8f90c478cb5943dfef623befe7c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5256630d95ea8d78de9df1f862aa8468e2618c70446f2b2b34a479e31cc09d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd0c6ed24bd266521a1aeef3a2d01fac948384e4dc7e53cf92e059d06220860`

```dockerfile
```

-	Layers:
	-	`sha256:e4110a5e17fc15bf29266ec20af296d24defb647f46623a029d38782d3188aa6`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:1b5a0a665cbe50a4ea28e8a82cf809b26cee5027d1fcaf8682fadf8f385fdf29
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
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:1b5a0a665cbe50a4ea28e8a82cf809b26cee5027d1fcaf8682fadf8f385fdf29
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
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:8dc6fb5a0ee7e8187f3cdf7441a0750b311f085dab7927d13e21c4c9df40cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:adf4bf882f0a9401ced379937318d5b90fa110e734e66e96cd0f93672070c6a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165432526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d18afa60c53adbeabe61272a2c1aa4eab076707ff64604b09c9c45e3b6bfa97`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:18:14 GMT
ENV NATS_SERVER=2.14.3
# Wed, 15 Jul 2026 23:18:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Wed, 15 Jul 2026 23:18:16 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.3/nats-server-v2.14.3-windows-amd64.zip
# Wed, 15 Jul 2026 23:18:18 GMT
ENV NATS_SERVER_SHASUM=94e338d742761272e31eab1efb1f767eac3a2e56e4c05a7933c65a73fe95a27b
# Wed, 15 Jul 2026 23:18:22 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:18:34 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:18:35 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:18:36 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:18:37 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:18:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d119bed3ee756fe91818f2e17fdb430f3b0ace8afc94f156b47dddd3a4511ba9`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5253861723a79e38723b60cb1c46f4d147e69df8cea7f051cdabc0cb0dc423`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0dbd293fd64d7b627d6d57fd388c86aef4a1959368dd2811352a499b92f6ed`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41147b8c6f63027e262e9595c14c4afa40894f0ac011bef3f9ed1262cfe87509`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9adc2b8038c9bee27f2915233a98b9b8b3a93388bba7bc300abcff172214357`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 472.9 KB (472930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0831572e1a881a0b79876a53652511a638752af6e7eb44b783b0be4cb4488dbf`  
		Last Modified: Wed, 15 Jul 2026 23:18:46 GMT  
		Size: 7.4 MB (7392871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cf67163c32ce41b22738e6e21624816b74f8fad84333d4366c3d85cab13e5`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7cfa7a0b8d99cfca51cbe97826ca12df63c7e8c96f03b41e17ae3ea986ae`  
		Last Modified: Wed, 15 Jul 2026 23:18:42 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4378ce27f8d97519f53c69563c37fa1eddbfc4d6d2c8d8a11c2f5c3d229d107c`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c01c27499973cb234d03f747d0ec89cbed384a0ff267b2d5f525904931a77`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:8dc6fb5a0ee7e8187f3cdf7441a0750b311f085dab7927d13e21c4c9df40cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:adf4bf882f0a9401ced379937318d5b90fa110e734e66e96cd0f93672070c6a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165432526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d18afa60c53adbeabe61272a2c1aa4eab076707ff64604b09c9c45e3b6bfa97`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:18:14 GMT
ENV NATS_SERVER=2.14.3
# Wed, 15 Jul 2026 23:18:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Wed, 15 Jul 2026 23:18:16 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.3/nats-server-v2.14.3-windows-amd64.zip
# Wed, 15 Jul 2026 23:18:18 GMT
ENV NATS_SERVER_SHASUM=94e338d742761272e31eab1efb1f767eac3a2e56e4c05a7933c65a73fe95a27b
# Wed, 15 Jul 2026 23:18:22 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:18:34 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:18:35 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:18:36 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:18:37 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:18:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d119bed3ee756fe91818f2e17fdb430f3b0ace8afc94f156b47dddd3a4511ba9`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5253861723a79e38723b60cb1c46f4d147e69df8cea7f051cdabc0cb0dc423`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0dbd293fd64d7b627d6d57fd388c86aef4a1959368dd2811352a499b92f6ed`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41147b8c6f63027e262e9595c14c4afa40894f0ac011bef3f9ed1262cfe87509`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9adc2b8038c9bee27f2915233a98b9b8b3a93388bba7bc300abcff172214357`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 472.9 KB (472930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0831572e1a881a0b79876a53652511a638752af6e7eb44b783b0be4cb4488dbf`  
		Last Modified: Wed, 15 Jul 2026 23:18:46 GMT  
		Size: 7.4 MB (7392871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cf67163c32ce41b22738e6e21624816b74f8fad84333d4366c3d85cab13e5`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7cfa7a0b8d99cfca51cbe97826ca12df63c7e8c96f03b41e17ae3ea986ae`  
		Last Modified: Wed, 15 Jul 2026 23:18:42 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4378ce27f8d97519f53c69563c37fa1eddbfc4d6d2c8d8a11c2f5c3d229d107c`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c01c27499973cb234d03f747d0ec89cbed384a0ff267b2d5f525904931a77`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12`

```console
$ docker pull nats@sha256:e0882ab68e01432c3593a20150d681c5c1dd97d50a36a097c6595d05f721fcfa
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
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12` - linux; amd64

```console
$ docker pull nats@sha256:7150f4fdf587569abab9253aa349f72d871da06c77d36aac4436baab884f8c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6658478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6abe773e0ca7e8a35d9a950781562f2e0e465852116c0c49f2de69d6afba56`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:14:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:14:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:14:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:14:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:14:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:14:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:674ddc4edf02c32fd9e0c399e4ce2550d462d0349f360d1e401935b1cc4552a3`  
		Last Modified: Mon, 29 Jun 2026 15:45:26 GMT  
		Size: 6.7 MB (6657969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5702d3684f758185c73e87190842fd53cf65ff30cd7f72a65f65928e90fd72`  
		Last Modified: Mon, 29 Jun 2026 19:14:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:740aed9cbb77fa0feb9593a11b3ef7d80b0326393e62c8bdd29fb28f8deae33b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b929051330e300f3043167fc391e5a658f9be6b99625f14821f9e9168a8e6a1`

```dockerfile
```

-	Layers:
	-	`sha256:15be1d8687e3ccb288b2395ac350e965c7b7866d8520bd18a41480f378b731c2`  
		Last Modified: Mon, 29 Jun 2026 19:14:05 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm variant v6

```console
$ docker pull nats@sha256:65f623b6cde3c78df0b0d142ddc6e3e3bd1d9501422375bf621c8ab4a1955ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6398008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a728c107fe662f7111598a56d71ae7c36f4f5a4dd5d1f3b1b4a18bf937df0c`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:14 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a9d8b42e91101f55d0b914352f42379d187b356167e68b6a4d7e248306781093`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.4 MB (6397501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d4cfe960fa26c031af0940ca78ea32b86745fc09a5196c72ee268c481ea651`  
		Last Modified: Mon, 29 Jun 2026 20:10:19 GMT  
		Size: 507.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:270e75e31932b739863421ce378d21bc9b4cbc65319749a56e84db12b75b06db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f84dc1cf6dac3435e77c51283d0504b385c0706684a17a6e1834692e0e300e9`

```dockerfile
```

-	Layers:
	-	`sha256:183c92f9da3d80b68ad84ea10e28ffa86aa9a426aa89e1ee50a75446473bdd53`  
		Last Modified: Mon, 29 Jun 2026 20:10:19 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm variant v7

```console
$ docker pull nats@sha256:965e0f30952fe53c0edbbf51907861203a344a9f436d2f16e44ec62bbc6bc346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6389204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9954dc82025ebe69fb6051eba4e8b56422339f0c76b2978d73e05e4e95f4b686`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:13 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f51f3ae5a0e9a233d660597cb0991d0e4eda1b8d6081f2ebf7b11bf49726cbb`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.4 MB (6388696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064965fad9d634082e200408edb6c3cfd405a94c5e956a0589886e52ab1e280e`  
		Last Modified: Mon, 29 Jun 2026 20:10:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:371542e6b03232abc94eb181db393c6435a837da512cce3804798309c30bdd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512ea3056abc5f4e4d1b686c3750009080f9d259771aab353ae3dc28221d91b3`

```dockerfile
```

-	Layers:
	-	`sha256:207767c47f99e2d1e1fedd52ce5576598e2145c2fedbd08d52ebcb17283299be`  
		Last Modified: Mon, 29 Jun 2026 20:10:17 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:cab7e89c5c123fa2c3080f70c5b47f612c9dc4ac52dc4323fbb3a595c57d7e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6136ec41f85090255a3129de60d735886601c26b2dff3bb5ae840dcfe8972d4b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:59 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c7f4ed7c5caaf7674fe731cc4314250f15b64d928d938c120113fda642ab9e35`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.1 MB (6055262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54c6d444001ace11b4843342fbb1034885520461c7f6927b617ae9ceec4f2be`  
		Last Modified: Mon, 29 Jun 2026 20:10:03 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:21a6ec729bb63eeb5fd248400b0794cea72020b49014664c9ea8f69873926b8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1b8f27c27fd4485ac0c2fb9fbd5f577f624409582d839d08b012e5a8980744`

```dockerfile
```

-	Layers:
	-	`sha256:359f4232c60d44b72e23371b39eef2f62ada8b687692b2f6f30998f4754f5cd3`  
		Last Modified: Mon, 29 Jun 2026 20:10:03 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; ppc64le

```console
$ docker pull nats@sha256:dffd7ab5566215b39ecc27f4cfbcbec3c87c5fc4d32314065b27fd2f8ab7be7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6114182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac585563eab840d4c0a5e821db019f88a9ffed79a5b5ac27087e72ae35f1674`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:68d08cefc115ab2d0ba836794a2aafdbd770ca3b82386eaca56b76eface4067a`  
		Last Modified: Mon, 29 Jun 2026 15:45:25 GMT  
		Size: 6.1 MB (6113673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44bd89ff0f6f728c9f3bc4b6f7be421abaa6e18d57cfc1df853cbe8892117a2`  
		Last Modified: Mon, 29 Jun 2026 19:12:53 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:507a6e760ac10e306655b5e454edf3ada3f99dc7a91c5f550316e528a7eb2435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace002f95a4f8bad573dd00622c3969d09ed698044207e366057ba33a9a84a5f`

```dockerfile
```

-	Layers:
	-	`sha256:4caf767452a66fa4931c741b42734d256bf6283f3a6a1dd604cfba793beb3aa3`  
		Last Modified: Mon, 29 Jun 2026 19:12:53 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; s390x

```console
$ docker pull nats@sha256:b5f2090a2865bc73183bdbbd5c2db2d4a5e90ab9902682414eee67678f44290e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6507115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081b3d096315958b9213985797ab5c0d1d1f51a9c134de884bdaddeafc215ec5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:23 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ee8c267e3cc1a37bddcdb99b2da7bdd61a07738138488ac8641bc09f0cb7dc28`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.5 MB (6506606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3296f5cd680ca40417700ab16719d01bec8116be5da79289dd9c07b418c26d`  
		Last Modified: Mon, 29 Jun 2026 19:18:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:29663b73d5d3b96d00fbcad47681317129a61e699cc8a6a1b4c60f6b3773993e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8327c934690bae04254b49b552f8448751bd0bcc4abada12f8c086c470592bfc`

```dockerfile
```

-	Layers:
	-	`sha256:2e4c1745430ed822c5b545dbfce9175f49597264d12d3dc7bcd1aa56762e9a7f`  
		Last Modified: Mon, 29 Jun 2026 19:18:32 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:993ef517aad178a176b65cacaf3ec5593073c1549907b14ed56066d6a81b9e78
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130956217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85f527aab04042ce16a90e5bafa7f6063d7f0aeafd537f491566a7ecf701c73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop) COPY file:d8af06503cfb328e70ba402a862262e409f0fc6efb978ecfbf29b4bf28c77da7 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324464a0a8cc05e1730926d7056572b29821074bfed0e0022db8736abc13eb63`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bf8c13459c453fe09c6749ad61f6e0f8b0606fa95a89b4d53bb8326ef03b9c`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 6.8 MB (6847160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150b1bd35e6d73ffa67f319305797811710e79fe748800e4ae67d44539e12eff`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db0920edbb96f23f3c56a0502ff59a6596a5f7e674f2a5def94c6712747e532`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0818581df254179fa7be819b72fe8e07a6ca641c630a3d33d1c4f8e0ce6d4a`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46fc8d2e9613732e7a5725ccb56d7ffc242b67aae1d4812fda52872e014da2`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-alpine`

```console
$ docker pull nats@sha256:2ca98656a279b2d88cfdf2b8c3f0d5d7f3941ae9dc2ab12ebaa92d83e0f4ccdb
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
$ docker pull nats@sha256:425d3d24ac3b92b88cda1b153cc72f9535bfd1c0bcdd8f67740d9b22220e30f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10856577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4df4dc451af97c3499db640c4a6e0d6d6faa100799fe727d9e7e8be2f85756`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f302f59e4314d1878834e19e5b71b17be0ae76d484bf8d2d1d2e13a49e87ffd`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 7.1 MB (7068014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d50079454fd127c8d11556ad65e8ae8d330d9b23fdebfbf84a7a2e1ef81830`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91585d73d765544cfc68e45bf7451cdcc41e98760273b1c14b994ea65a9421ca`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:627fc61f544347aee1241d88a072aaf2f482f3fe6d7dcae343a3386a0f71b382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7dfec1367766e5087363e33ace912bc5cecf9d000ff7a9fcfc32e5edd3a827`

```dockerfile
```

-	Layers:
	-	`sha256:d5a9967d703c4696f237199b5172918a071980ff994625807ad12b66209342e7`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:da848228ada3065f9c2a15a503406d61499de6d7fba699cb3817e28f37f7402a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10304206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec13ec03de80b2e6a0934d8b43ae748adebabc51a7a5c46e46b20f578b49155`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:13:09 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:13:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:13:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:13:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:13:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:13:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d0133a34d5e99791b0b3206d7eb6a9217a98a390b98e62774a8f53f4bda8c4`  
		Last Modified: Mon, 29 Jun 2026 19:13:14 GMT  
		Size: 6.8 MB (6808434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8527ed2a249d0102a50cb5daf85524e8a609d2dbc9cf393b619dd753e6cdda4`  
		Last Modified: Mon, 29 Jun 2026 19:13:13 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37a8bf70ff4688a4da1c7d8e4773643b11453e39faee3f9a3a2a5d114af4088`  
		Last Modified: Mon, 29 Jun 2026 19:13:13 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:402db16d9854509328c72bc3f951aa99d3247261cd154385a6603dc821063f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e2d38edf0c20d359c7a16600c7ca141f330898742c9eefc3bde4c3405faf2e`

```dockerfile
```

-	Layers:
	-	`sha256:b501f81ba3b78b726cf71f13fe9f1b0abe45339eb3815630fbbc8b320275bbf2`  
		Last Modified: Mon, 29 Jun 2026 19:13:13 GMT  
		Size: 14.3 KB (14288 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:1bdb7a59f6844170dc8334f1a35f8877fb79498789e8bece8335edd8570d70a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10011404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac147b9241325ef59b2f84a81dd728295ccc3de6ee18a853ba20326f55a6a7d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:34 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:12:34 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:12:34 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:34 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03da412883a51e21464226481f5dc565bc91499890464f6c8b947b8bb4f3224`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 6.8 MB (6800823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32017da75c3a70cb844f8cb7b3a37cd94f78537d3e2cd628483d23d537a2b9b8`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3bfb6f5d6546a6d9549ad1a5195221e2753c0f62fcc02026b3f4aca9944dde`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:a80b31cb272cdafe50b728781f58bb9e8f82058635d34dab166a1bb7943ab003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3bc4d2dd9978a3547b6749a373898c58d319e3c2e1322b10454bf3f6dd41b`

```dockerfile
```

-	Layers:
	-	`sha256:3a3d19fde6df2d85168077489af805b3edb561dff5c4de446506516319464998`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:e7a28a0c0300aa1a737b1fd8c567f6da0fe96d970c3ee97dedaf475bc065e2fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10589316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a473d4229d429ef3f28373acf98500d4f5fa8a054c1438e691c71f68c49977`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:27 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:12:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:12:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159748456c3959ce6919c808af480b38f00972cf9fc9db5caaf0d3ccdf33e9c5`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 6.5 MB (6467860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a71adc900265c0969d3baefd35719826032c2917baf34e23acb556bd849192`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef83f1bdacd18e095d1825b1e6534d4c8290d91e67047fbd6b726c9c3a2a4cb0`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:8af248235d9832c27c4088dfd29818c8474c47b99743d0ff62a2037c580bcc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e2ff5e55bab6e49a25ff808dd57a35732350849f8f38e7fa435b6472dc2b00`

```dockerfile
```

-	Layers:
	-	`sha256:0e95cccbe78acbcfc3d29b69f3a4ca240123e634f7b76d89f717ceb6c6d791c6`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:79ab02351c08527aa75a4f0dcf0bcabf8313986a36b2974702bd8fb4980b9898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10248160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd4063f85a19f911d9ce871702a6b298f8a8f7bdb6cdd70bf271565cbd0383e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e590177a1f3832404927d73f703cd9b6de1bc6aa1c0a4071f73e62d61d6ff4d`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.5 MB (6527958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:ac4ea17abc7bdf67861515d4ae06c070fb7748d0cbec44453db6d05495a7af96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2a7741b38aa0865f53f2bc0c633a5727a70c07676d5f11582cbba4e5271703`

```dockerfile
```

-	Layers:
	-	`sha256:7c420f60382849b143e37e5624177f950ae9e5734cb82ee3cfc5487a594894d2`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; s390x

```console
$ docker pull nats@sha256:e416ac70e75c57154afc11270f4b79b26064bec8c6f45b33cc149de9369e4c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10555129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8f5c696629dedfa3f5d4827265a0ce1a254b61e328c4016a252e05fd6cd5d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:47 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:11:47 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:11:47 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:47 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:47 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:47 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca2bc2f93033c9b7f596631cea725b6923dfa8204a1fbd0cad289cfb66ad686`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 6.9 MB (6917070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3319d5c969f4b3502a099f99e8b9d1c3bac616a3bddc3b10057dc687980fd7b1`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6498ad1fc5102f83402c9c078f53d9db7682b83a100cdf63606f711bce0f5d43`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:9334e0829fc5846fd017385aec07371d829e8066ddd077be9208d80db65f9383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4430ea02178620fe9c9abc8a148ece6e6ef63f14d072c1c0f4852d54c98d2aa9`

```dockerfile
```

-	Layers:
	-	`sha256:f2d6fd7f8df0496ec5b02bad43bdccebdd9d1165cffbb23b9526bc4f3e6dbbdf`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-alpine3.22`

```console
$ docker pull nats@sha256:2ca98656a279b2d88cfdf2b8c3f0d5d7f3941ae9dc2ab12ebaa92d83e0f4ccdb
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
$ docker pull nats@sha256:425d3d24ac3b92b88cda1b153cc72f9535bfd1c0bcdd8f67740d9b22220e30f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10856577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4df4dc451af97c3499db640c4a6e0d6d6faa100799fe727d9e7e8be2f85756`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:11:40 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:11:40 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f302f59e4314d1878834e19e5b71b17be0ae76d484bf8d2d1d2e13a49e87ffd`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 7.1 MB (7068014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d50079454fd127c8d11556ad65e8ae8d330d9b23fdebfbf84a7a2e1ef81830`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91585d73d765544cfc68e45bf7451cdcc41e98760273b1c14b994ea65a9421ca`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:627fc61f544347aee1241d88a072aaf2f482f3fe6d7dcae343a3386a0f71b382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7dfec1367766e5087363e33ace912bc5cecf9d000ff7a9fcfc32e5edd3a827`

```dockerfile
```

-	Layers:
	-	`sha256:d5a9967d703c4696f237199b5172918a071980ff994625807ad12b66209342e7`  
		Last Modified: Mon, 29 Jun 2026 19:11:45 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:da848228ada3065f9c2a15a503406d61499de6d7fba699cb3817e28f37f7402a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10304206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec13ec03de80b2e6a0934d8b43ae748adebabc51a7a5c46e46b20f578b49155`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:13:09 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:13:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:13:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:13:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:13:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:13:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d0133a34d5e99791b0b3206d7eb6a9217a98a390b98e62774a8f53f4bda8c4`  
		Last Modified: Mon, 29 Jun 2026 19:13:14 GMT  
		Size: 6.8 MB (6808434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8527ed2a249d0102a50cb5daf85524e8a609d2dbc9cf393b619dd753e6cdda4`  
		Last Modified: Mon, 29 Jun 2026 19:13:13 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37a8bf70ff4688a4da1c7d8e4773643b11453e39faee3f9a3a2a5d114af4088`  
		Last Modified: Mon, 29 Jun 2026 19:13:13 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:402db16d9854509328c72bc3f951aa99d3247261cd154385a6603dc821063f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e2d38edf0c20d359c7a16600c7ca141f330898742c9eefc3bde4c3405faf2e`

```dockerfile
```

-	Layers:
	-	`sha256:b501f81ba3b78b726cf71f13fe9f1b0abe45339eb3815630fbbc8b320275bbf2`  
		Last Modified: Mon, 29 Jun 2026 19:13:13 GMT  
		Size: 14.3 KB (14288 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:1bdb7a59f6844170dc8334f1a35f8877fb79498789e8bece8335edd8570d70a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10011404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac147b9241325ef59b2f84a81dd728295ccc3de6ee18a853ba20326f55a6a7d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:34 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:12:34 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:12:34 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:34 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03da412883a51e21464226481f5dc565bc91499890464f6c8b947b8bb4f3224`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 6.8 MB (6800823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32017da75c3a70cb844f8cb7b3a37cd94f78537d3e2cd628483d23d537a2b9b8`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 559.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3bfb6f5d6546a6d9549ad1a5195221e2753c0f62fcc02026b3f4aca9944dde`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:a80b31cb272cdafe50b728781f58bb9e8f82058635d34dab166a1bb7943ab003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd3bc4d2dd9978a3547b6749a373898c58d319e3c2e1322b10454bf3f6dd41b`

```dockerfile
```

-	Layers:
	-	`sha256:3a3d19fde6df2d85168077489af805b3edb561dff5c4de446506516319464998`  
		Last Modified: Mon, 29 Jun 2026 19:12:39 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:e7a28a0c0300aa1a737b1fd8c567f6da0fe96d970c3ee97dedaf475bc065e2fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10589316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a473d4229d429ef3f28373acf98500d4f5fa8a054c1438e691c71f68c49977`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:27 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:12:27 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:12:27 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:27 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:27 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:27 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159748456c3959ce6919c808af480b38f00972cf9fc9db5caaf0d3ccdf33e9c5`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 6.5 MB (6467860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a71adc900265c0969d3baefd35719826032c2917baf34e23acb556bd849192`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef83f1bdacd18e095d1825b1e6534d4c8290d91e67047fbd6b726c9c3a2a4cb0`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:8af248235d9832c27c4088dfd29818c8474c47b99743d0ff62a2037c580bcc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e2ff5e55bab6e49a25ff808dd57a35732350849f8f38e7fa435b6472dc2b00`

```dockerfile
```

-	Layers:
	-	`sha256:0e95cccbe78acbcfc3d29b69f3a4ca240123e634f7b76d89f717ceb6c6d791c6`  
		Last Modified: Mon, 29 Jun 2026 19:12:32 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:79ab02351c08527aa75a4f0dcf0bcabf8313986a36b2974702bd8fb4980b9898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10248160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd4063f85a19f911d9ce871702a6b298f8a8f7bdb6cdd70bf271565cbd0383e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e590177a1f3832404927d73f703cd9b6de1bc6aa1c0a4071f73e62d61d6ff4d`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.5 MB (6527958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:ac4ea17abc7bdf67861515d4ae06c070fb7748d0cbec44453db6d05495a7af96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2a7741b38aa0865f53f2bc0c633a5727a70c07676d5f11582cbba4e5271703`

```dockerfile
```

-	Layers:
	-	`sha256:7c420f60382849b143e37e5624177f950ae9e5734cb82ee3cfc5487a594894d2`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:e416ac70e75c57154afc11270f4b79b26064bec8c6f45b33cc149de9369e4c35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10555129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8f5c696629dedfa3f5d4827265a0ce1a254b61e328c4016a252e05fd6cd5d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:47 GMT
ENV NATS_SERVER=2.12.12
# Mon, 29 Jun 2026 19:11:47 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Mon, 29 Jun 2026 19:11:47 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='d28651f6690a47f6115562f43570896aa3754aff7421dba0a9c11e99263a382e' ;;     armhf) natsArch='arm6'; sha256='3af51b2f7cd5aa7fe86f805ebcda6a136cdfd0ee2d9e39a1951663e51b309f70' ;;     armv7) natsArch='arm7'; sha256='ade3527a9c81befae6b6e6d849ca23d9e8fa7e95b597a41f96ad0b74dc751ea1' ;;     x86_64) natsArch='amd64'; sha256='0ade8c59f966a37b9898e5f9ae408ad47f64e529423d3d07330848f4c3bb9300' ;;     x86) natsArch='386'; sha256='3e68f7fbd79a6febea21ff54baba19d4c51444ee89ffba779b6d86adf4ae6f79' ;;     s390x) natsArch='s390x'; sha256='63104abaff9fce8ec9a4ff689da14e1c850b8e039cf4254b5be35da588d01ad9' ;;     ppc64le) natsArch='ppc64le'; sha256='b290015331fa69d477acdd6dda18bacecc0a63ec90b51511f664902c4cc72f31' ;;     loong64) natsArch='loong64'; sha256='35fd6f8b0904ecdbce217f7e23a21c5f1eb1b8e4123ddeac803c570295213acd' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:47 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:47 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:47 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca2bc2f93033c9b7f596631cea725b6923dfa8204a1fbd0cad289cfb66ad686`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 6.9 MB (6917070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3319d5c969f4b3502a099f99e8b9d1c3bac616a3bddc3b10057dc687980fd7b1`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6498ad1fc5102f83402c9c078f53d9db7682b83a100cdf63606f711bce0f5d43`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 412.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:9334e0829fc5846fd017385aec07371d829e8066ddd077be9208d80db65f9383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4430ea02178620fe9c9abc8a148ece6e6ef63f14d072c1c0f4852d54c98d2aa9`

```dockerfile
```

-	Layers:
	-	`sha256:f2d6fd7f8df0496ec5b02bad43bdccebdd9d1165cffbb23b9526bc4f3e6dbbdf`  
		Last Modified: Mon, 29 Jun 2026 19:11:57 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-linux`

```console
$ docker pull nats@sha256:d36030092fd6372ff8bd774b87cd5eee71245f48eb8dca5d46b52a88870d9852
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
$ docker pull nats@sha256:7150f4fdf587569abab9253aa349f72d871da06c77d36aac4436baab884f8c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6658478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6abe773e0ca7e8a35d9a950781562f2e0e465852116c0c49f2de69d6afba56`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:14:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:14:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:14:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:14:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:14:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:14:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:674ddc4edf02c32fd9e0c399e4ce2550d462d0349f360d1e401935b1cc4552a3`  
		Last Modified: Mon, 29 Jun 2026 15:45:26 GMT  
		Size: 6.7 MB (6657969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5702d3684f758185c73e87190842fd53cf65ff30cd7f72a65f65928e90fd72`  
		Last Modified: Mon, 29 Jun 2026 19:14:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:740aed9cbb77fa0feb9593a11b3ef7d80b0326393e62c8bdd29fb28f8deae33b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b929051330e300f3043167fc391e5a658f9be6b99625f14821f9e9168a8e6a1`

```dockerfile
```

-	Layers:
	-	`sha256:15be1d8687e3ccb288b2395ac350e965c7b7866d8520bd18a41480f378b731c2`  
		Last Modified: Mon, 29 Jun 2026 19:14:05 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:65f623b6cde3c78df0b0d142ddc6e3e3bd1d9501422375bf621c8ab4a1955ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6398008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a728c107fe662f7111598a56d71ae7c36f4f5a4dd5d1f3b1b4a18bf937df0c`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:14 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a9d8b42e91101f55d0b914352f42379d187b356167e68b6a4d7e248306781093`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.4 MB (6397501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d4cfe960fa26c031af0940ca78ea32b86745fc09a5196c72ee268c481ea651`  
		Last Modified: Mon, 29 Jun 2026 20:10:19 GMT  
		Size: 507.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:270e75e31932b739863421ce378d21bc9b4cbc65319749a56e84db12b75b06db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f84dc1cf6dac3435e77c51283d0504b385c0706684a17a6e1834692e0e300e9`

```dockerfile
```

-	Layers:
	-	`sha256:183c92f9da3d80b68ad84ea10e28ffa86aa9a426aa89e1ee50a75446473bdd53`  
		Last Modified: Mon, 29 Jun 2026 20:10:19 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:965e0f30952fe53c0edbbf51907861203a344a9f436d2f16e44ec62bbc6bc346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6389204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9954dc82025ebe69fb6051eba4e8b56422339f0c76b2978d73e05e4e95f4b686`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:13 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f51f3ae5a0e9a233d660597cb0991d0e4eda1b8d6081f2ebf7b11bf49726cbb`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.4 MB (6388696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064965fad9d634082e200408edb6c3cfd405a94c5e956a0589886e52ab1e280e`  
		Last Modified: Mon, 29 Jun 2026 20:10:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:371542e6b03232abc94eb181db393c6435a837da512cce3804798309c30bdd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512ea3056abc5f4e4d1b686c3750009080f9d259771aab353ae3dc28221d91b3`

```dockerfile
```

-	Layers:
	-	`sha256:207767c47f99e2d1e1fedd52ce5576598e2145c2fedbd08d52ebcb17283299be`  
		Last Modified: Mon, 29 Jun 2026 20:10:17 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:cab7e89c5c123fa2c3080f70c5b47f612c9dc4ac52dc4323fbb3a595c57d7e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6136ec41f85090255a3129de60d735886601c26b2dff3bb5ae840dcfe8972d4b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:59 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c7f4ed7c5caaf7674fe731cc4314250f15b64d928d938c120113fda642ab9e35`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.1 MB (6055262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54c6d444001ace11b4843342fbb1034885520461c7f6927b617ae9ceec4f2be`  
		Last Modified: Mon, 29 Jun 2026 20:10:03 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:21a6ec729bb63eeb5fd248400b0794cea72020b49014664c9ea8f69873926b8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1b8f27c27fd4485ac0c2fb9fbd5f577f624409582d839d08b012e5a8980744`

```dockerfile
```

-	Layers:
	-	`sha256:359f4232c60d44b72e23371b39eef2f62ada8b687692b2f6f30998f4754f5cd3`  
		Last Modified: Mon, 29 Jun 2026 20:10:03 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:dffd7ab5566215b39ecc27f4cfbcbec3c87c5fc4d32314065b27fd2f8ab7be7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6114182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac585563eab840d4c0a5e821db019f88a9ffed79a5b5ac27087e72ae35f1674`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:68d08cefc115ab2d0ba836794a2aafdbd770ca3b82386eaca56b76eface4067a`  
		Last Modified: Mon, 29 Jun 2026 15:45:25 GMT  
		Size: 6.1 MB (6113673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44bd89ff0f6f728c9f3bc4b6f7be421abaa6e18d57cfc1df853cbe8892117a2`  
		Last Modified: Mon, 29 Jun 2026 19:12:53 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:507a6e760ac10e306655b5e454edf3ada3f99dc7a91c5f550316e528a7eb2435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace002f95a4f8bad573dd00622c3969d09ed698044207e366057ba33a9a84a5f`

```dockerfile
```

-	Layers:
	-	`sha256:4caf767452a66fa4931c741b42734d256bf6283f3a6a1dd604cfba793beb3aa3`  
		Last Modified: Mon, 29 Jun 2026 19:12:53 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; s390x

```console
$ docker pull nats@sha256:b5f2090a2865bc73183bdbbd5c2db2d4a5e90ab9902682414eee67678f44290e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6507115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081b3d096315958b9213985797ab5c0d1d1f51a9c134de884bdaddeafc215ec5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:23 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ee8c267e3cc1a37bddcdb99b2da7bdd61a07738138488ac8641bc09f0cb7dc28`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.5 MB (6506606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3296f5cd680ca40417700ab16719d01bec8116be5da79289dd9c07b418c26d`  
		Last Modified: Mon, 29 Jun 2026 19:18:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:29663b73d5d3b96d00fbcad47681317129a61e699cc8a6a1b4c60f6b3773993e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8327c934690bae04254b49b552f8448751bd0bcc4abada12f8c086c470592bfc`

```dockerfile
```

-	Layers:
	-	`sha256:2e4c1745430ed822c5b545dbfce9175f49597264d12d3dc7bcd1aa56762e9a7f`  
		Last Modified: Mon, 29 Jun 2026 19:18:32 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-nanoserver`

```console
$ docker pull nats@sha256:497de23cb8bed18c9d47cc54093cdd2f3d56948daa2aea8a8505911dccb6ffb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:993ef517aad178a176b65cacaf3ec5593073c1549907b14ed56066d6a81b9e78
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130956217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85f527aab04042ce16a90e5bafa7f6063d7f0aeafd537f491566a7ecf701c73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop) COPY file:d8af06503cfb328e70ba402a862262e409f0fc6efb978ecfbf29b4bf28c77da7 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324464a0a8cc05e1730926d7056572b29821074bfed0e0022db8736abc13eb63`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bf8c13459c453fe09c6749ad61f6e0f8b0606fa95a89b4d53bb8326ef03b9c`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 6.8 MB (6847160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150b1bd35e6d73ffa67f319305797811710e79fe748800e4ae67d44539e12eff`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db0920edbb96f23f3c56a0502ff59a6596a5f7e674f2a5def94c6712747e532`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0818581df254179fa7be819b72fe8e07a6ca641c630a3d33d1c4f8e0ce6d4a`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46fc8d2e9613732e7a5725ccb56d7ffc242b67aae1d4812fda52872e014da2`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:497de23cb8bed18c9d47cc54093cdd2f3d56948daa2aea8a8505911dccb6ffb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:993ef517aad178a176b65cacaf3ec5593073c1549907b14ed56066d6a81b9e78
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130956217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85f527aab04042ce16a90e5bafa7f6063d7f0aeafd537f491566a7ecf701c73`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop) COPY file:d8af06503cfb328e70ba402a862262e409f0fc6efb978ecfbf29b4bf28c77da7 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324464a0a8cc05e1730926d7056572b29821074bfed0e0022db8736abc13eb63`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bf8c13459c453fe09c6749ad61f6e0f8b0606fa95a89b4d53bb8326ef03b9c`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 6.8 MB (6847160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150b1bd35e6d73ffa67f319305797811710e79fe748800e4ae67d44539e12eff`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db0920edbb96f23f3c56a0502ff59a6596a5f7e674f2a5def94c6712747e532`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a0818581df254179fa7be819b72fe8e07a6ca641c630a3d33d1c4f8e0ce6d4a`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46fc8d2e9613732e7a5725ccb56d7ffc242b67aae1d4812fda52872e014da2`  
		Last Modified: Wed, 15 Jul 2026 23:51:36 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-scratch`

```console
$ docker pull nats@sha256:d36030092fd6372ff8bd774b87cd5eee71245f48eb8dca5d46b52a88870d9852
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
$ docker pull nats@sha256:7150f4fdf587569abab9253aa349f72d871da06c77d36aac4436baab884f8c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6658478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6abe773e0ca7e8a35d9a950781562f2e0e465852116c0c49f2de69d6afba56`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:14:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:14:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:14:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:14:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:14:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:14:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:674ddc4edf02c32fd9e0c399e4ce2550d462d0349f360d1e401935b1cc4552a3`  
		Last Modified: Mon, 29 Jun 2026 15:45:26 GMT  
		Size: 6.7 MB (6657969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5702d3684f758185c73e87190842fd53cf65ff30cd7f72a65f65928e90fd72`  
		Last Modified: Mon, 29 Jun 2026 19:14:05 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:740aed9cbb77fa0feb9593a11b3ef7d80b0326393e62c8bdd29fb28f8deae33b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b929051330e300f3043167fc391e5a658f9be6b99625f14821f9e9168a8e6a1`

```dockerfile
```

-	Layers:
	-	`sha256:15be1d8687e3ccb288b2395ac350e965c7b7866d8520bd18a41480f378b731c2`  
		Last Modified: Mon, 29 Jun 2026 19:14:05 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:65f623b6cde3c78df0b0d142ddc6e3e3bd1d9501422375bf621c8ab4a1955ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6398008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a728c107fe662f7111598a56d71ae7c36f4f5a4dd5d1f3b1b4a18bf937df0c`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:14 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:14 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:14 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:14 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a9d8b42e91101f55d0b914352f42379d187b356167e68b6a4d7e248306781093`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.4 MB (6397501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d4cfe960fa26c031af0940ca78ea32b86745fc09a5196c72ee268c481ea651`  
		Last Modified: Mon, 29 Jun 2026 20:10:19 GMT  
		Size: 507.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:270e75e31932b739863421ce378d21bc9b4cbc65319749a56e84db12b75b06db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f84dc1cf6dac3435e77c51283d0504b385c0706684a17a6e1834692e0e300e9`

```dockerfile
```

-	Layers:
	-	`sha256:183c92f9da3d80b68ad84ea10e28ffa86aa9a426aa89e1ee50a75446473bdd53`  
		Last Modified: Mon, 29 Jun 2026 20:10:19 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:965e0f30952fe53c0edbbf51907861203a344a9f436d2f16e44ec62bbc6bc346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6389204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9954dc82025ebe69fb6051eba4e8b56422339f0c76b2978d73e05e4e95f4b686`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:13 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:13 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:13 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:13 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:13 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f51f3ae5a0e9a233d660597cb0991d0e4eda1b8d6081f2ebf7b11bf49726cbb`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.4 MB (6388696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064965fad9d634082e200408edb6c3cfd405a94c5e956a0589886e52ab1e280e`  
		Last Modified: Mon, 29 Jun 2026 20:10:17 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:371542e6b03232abc94eb181db393c6435a837da512cce3804798309c30bdd0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512ea3056abc5f4e4d1b686c3750009080f9d259771aab353ae3dc28221d91b3`

```dockerfile
```

-	Layers:
	-	`sha256:207767c47f99e2d1e1fedd52ce5576598e2145c2fedbd08d52ebcb17283299be`  
		Last Modified: Mon, 29 Jun 2026 20:10:17 GMT  
		Size: 8.8 KB (8750 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:cab7e89c5c123fa2c3080f70c5b47f612c9dc4ac52dc4323fbb3a595c57d7e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6055770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6136ec41f85090255a3129de60d735886601c26b2dff3bb5ae840dcfe8972d4b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:59 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:59 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c7f4ed7c5caaf7674fe731cc4314250f15b64d928d938c120113fda642ab9e35`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.1 MB (6055262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54c6d444001ace11b4843342fbb1034885520461c7f6927b617ae9ceec4f2be`  
		Last Modified: Mon, 29 Jun 2026 20:10:03 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:21a6ec729bb63eeb5fd248400b0794cea72020b49014664c9ea8f69873926b8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1b8f27c27fd4485ac0c2fb9fbd5f577f624409582d839d08b012e5a8980744`

```dockerfile
```

-	Layers:
	-	`sha256:359f4232c60d44b72e23371b39eef2f62ada8b687692b2f6f30998f4754f5cd3`  
		Last Modified: Mon, 29 Jun 2026 20:10:03 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:dffd7ab5566215b39ecc27f4cfbcbec3c87c5fc4d32314065b27fd2f8ab7be7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6114182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac585563eab840d4c0a5e821db019f88a9ffed79a5b5ac27087e72ae35f1674`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:47 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:68d08cefc115ab2d0ba836794a2aafdbd770ca3b82386eaca56b76eface4067a`  
		Last Modified: Mon, 29 Jun 2026 15:45:25 GMT  
		Size: 6.1 MB (6113673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44bd89ff0f6f728c9f3bc4b6f7be421abaa6e18d57cfc1df853cbe8892117a2`  
		Last Modified: Mon, 29 Jun 2026 19:12:53 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:507a6e760ac10e306655b5e454edf3ada3f99dc7a91c5f550316e528a7eb2435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace002f95a4f8bad573dd00622c3969d09ed698044207e366057ba33a9a84a5f`

```dockerfile
```

-	Layers:
	-	`sha256:4caf767452a66fa4931c741b42734d256bf6283f3a6a1dd604cfba793beb3aa3`  
		Last Modified: Mon, 29 Jun 2026 19:12:53 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; s390x

```console
$ docker pull nats@sha256:b5f2090a2865bc73183bdbbd5c2db2d4a5e90ab9902682414eee67678f44290e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6507115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081b3d096315958b9213985797ab5c0d1d1f51a9c134de884bdaddeafc215ec5`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:23 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:23 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:23 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:23 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:23 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ee8c267e3cc1a37bddcdb99b2da7bdd61a07738138488ac8641bc09f0cb7dc28`  
		Last Modified: Mon, 29 Jun 2026 15:45:30 GMT  
		Size: 6.5 MB (6506606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3296f5cd680ca40417700ab16719d01bec8116be5da79289dd9c07b418c26d`  
		Last Modified: Mon, 29 Jun 2026 19:18:32 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:29663b73d5d3b96d00fbcad47681317129a61e699cc8a6a1b4c60f6b3773993e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8327c934690bae04254b49b552f8448751bd0bcc4abada12f8c086c470592bfc`

```dockerfile
```

-	Layers:
	-	`sha256:2e4c1745430ed822c5b545dbfce9175f49597264d12d3dc7bcd1aa56762e9a7f`  
		Last Modified: Mon, 29 Jun 2026 19:18:32 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-windowsservercore`

```console
$ docker pull nats@sha256:28efe01db9587ce9b30434c0127205f0fedb4ced8533ebf22843caa8d36fa6a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:a5b2fb089798fe93887515f854fa7939dd280aa3529e5fadc16c227617af75d1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165208852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d7d48bf2785c6c8fc8188a230034e9e431737a8a7fd2e8d28b4d96a56ccd01`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:19:01 GMT
ENV NATS_SERVER=2.12.12
# Wed, 15 Jul 2026 23:19:02 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Wed, 15 Jul 2026 23:19:02 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.12/nats-server-v2.12.12-windows-amd64.zip
# Wed, 15 Jul 2026 23:19:03 GMT
ENV NATS_SERVER_SHASUM=66e2ab6250083794321905e1f79db4f4ea53465d84ba0760e9b00d022133050e
# Wed, 15 Jul 2026 23:19:09 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:19:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:19:24 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:19:25 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:19:25 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:19:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54916f3e99fd10bbf9b542da4c40f0096a2fc74b235869eb8032cfc472590c6a`  
		Last Modified: Wed, 15 Jul 2026 23:19:33 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5564a617d8024069a56cba6c18dc3ac5540d71d77f8cb23afa5df53c39c91884`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfb78676f18869e06692bdb580caa3d3a8ee3e91988656fcaeb05e9b5b57fdb`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8a8198b8510b82883cf66ffb2c9f36d3ddcd7bc0ce6f697c1d0b7caf848364`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0684c43fd6ba6f411fdfeb52ce2c1838372421844b754daea94a24f8c896c6`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 461.3 KB (461319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed0da3b94e8b752e6e13acfc39cd6a607995b04c8e050219725f3da98d07cd2`  
		Last Modified: Wed, 15 Jul 2026 23:19:34 GMT  
		Size: 7.2 MB (7180795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564714a40640376b6548ff7b2f81792b29bc5636d0f69bb7aba2cd405c8696c4`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5aae0f7567f1fd057cd15c055cc3cae8bea44571dd7e56fdb5e343085815c2`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e76ca19a1e619c8543536b0269ee66c7602ced4e5d8090a8276b898afaccf7`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970e4a632780b72dfa541fa2cf736861b3e6971b6cf1f28a820685128c70e5f7`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:28efe01db9587ce9b30434c0127205f0fedb4ced8533ebf22843caa8d36fa6a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:a5b2fb089798fe93887515f854fa7939dd280aa3529e5fadc16c227617af75d1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165208852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d7d48bf2785c6c8fc8188a230034e9e431737a8a7fd2e8d28b4d96a56ccd01`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:19:01 GMT
ENV NATS_SERVER=2.12.12
# Wed, 15 Jul 2026 23:19:02 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.12
# Wed, 15 Jul 2026 23:19:02 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.12/nats-server-v2.12.12-windows-amd64.zip
# Wed, 15 Jul 2026 23:19:03 GMT
ENV NATS_SERVER_SHASUM=66e2ab6250083794321905e1f79db4f4ea53465d84ba0760e9b00d022133050e
# Wed, 15 Jul 2026 23:19:09 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:19:24 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:19:24 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:19:25 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:19:25 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:19:26 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54916f3e99fd10bbf9b542da4c40f0096a2fc74b235869eb8032cfc472590c6a`  
		Last Modified: Wed, 15 Jul 2026 23:19:33 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5564a617d8024069a56cba6c18dc3ac5540d71d77f8cb23afa5df53c39c91884`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfb78676f18869e06692bdb580caa3d3a8ee3e91988656fcaeb05e9b5b57fdb`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8a8198b8510b82883cf66ffb2c9f36d3ddcd7bc0ce6f697c1d0b7caf848364`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0684c43fd6ba6f411fdfeb52ce2c1838372421844b754daea94a24f8c896c6`  
		Last Modified: Wed, 15 Jul 2026 23:19:31 GMT  
		Size: 461.3 KB (461319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed0da3b94e8b752e6e13acfc39cd6a607995b04c8e050219725f3da98d07cd2`  
		Last Modified: Wed, 15 Jul 2026 23:19:34 GMT  
		Size: 7.2 MB (7180795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564714a40640376b6548ff7b2f81792b29bc5636d0f69bb7aba2cd405c8696c4`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.9 KB (1887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5aae0f7567f1fd057cd15c055cc3cae8bea44571dd7e56fdb5e343085815c2`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e76ca19a1e619c8543536b0269ee66c7602ced4e5d8090a8276b898afaccf7`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970e4a632780b72dfa541fa2cf736861b3e6971b6cf1f28a820685128c70e5f7`  
		Last Modified: Wed, 15 Jul 2026 23:19:30 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.14`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-alpine`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-alpine3.22`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-linux`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-nanoserver`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-scratch`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-windowsservercore`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.12.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14`

```console
$ docker pull nats@sha256:67ac7866d010e8d83302dd30332eeae1a2b7a8ee051155e2eb5a5485b720cd4b
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
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14` - linux; amd64

```console
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:c11af972c99ae542de8925e6a7d9c533aa1eb039660420d2074beed6089b3bf0
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
$ docker pull nats@sha256:a42e284980d105c1b668d553175b4c7abc9b7187c5e9859baf4f1d564772b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bc12a71290912ecf2ffb2e5df45be9ae532fef1b8240aef6102891d375ce25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328794545e9bf2e5cced545a15e65e783306486272234d91c5d2719d0ec9b70`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 7.3 MB (7267461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266119c4af18be04cdea3885753ddc31a6343f4a3cdd22439d75ab32a2587dbb`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff0c17447e0330a97ae8ec95d6fdcadcd8cb8991d6c548858ec3d69a3c23a2`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2f3d3942c5b8e78340ff935ef0179cde1967969ba70ca4664fc6dfaaea0a4ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac360c9f1c2562befb519baafc614b6161d4ceee74f7701c04b24cb07d223f`

```dockerfile
```

-	Layers:
	-	`sha256:564b644082e6223b0d2da321c2a6a1e4337ba6eee056219eeed745c943604b09`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:d4e53bdfe4a9d810005abaf974dd9a12374c9cd187fa6be4622eff6a73b9e2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8ea3792d3865371b24b0504e2a7a61140487a85c1289a56e6b0a414f3aa451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fb591416c4f81c00164a6df7c9a0df260683e8939dad253a229dad6006eed7`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 7.0 MB (7001975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a94003f98dbb2cec821705d1615ee3fabdb6278a14a965fad556f00935df4e`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca954dfa8945adfa8283aac38370a786f5ed56c79b3a242cdc0a7717732e4c01`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d2617716222bd82abc599cbe8277f98292977c0dfdd769178f6be9d0fdbfafc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf691e94e06290aeb75516eb80f45749858c6ac66c0462f375e5b23f89c0f28`

```dockerfile
```

-	Layers:
	-	`sha256:051ab4a8c59747a86c2b341f78f881dcb5ce383e1adb18760b2e37658493f9f3`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:13a3f0e29c614c6b948bac76e8511e103dae75a1f3aafb215d49defef515bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b0bb66ac4162fc21cb64f4e23f7840a339f47c9c6e9fe68e07f879189b36aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c57aa7f84636f8b81c22758ea4a628036299dea2750a000eb5de6220234b418`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 7.0 MB (6992381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b307022eba60d3fa1d5f402e6c270a824a7c22733d6b54b89a11d8e47f5df06`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979223c0d164e45ff3d261730284785ca49e194cd773a37086da9bdd856159e`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cc9db77acad1e638c9d195fe27bf9cb73a582f1d6c8a48de4aac85d42fe8b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5e4eea65b1e82754ac2719f2026f89bf4d253eda69a68c1c7a0753cc424985`

```dockerfile
```

-	Layers:
	-	`sha256:be67ebf23efa9ed614c3e6ecbd8dbfe60c3c196c67672894c62befc4102a028d`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:064222a09af7b194af6760d6089aa9ebd93fe7b8136ec2193ddb72dd78d8bd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10740987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422fa2e0339d3eb86f18cdd7040198afd726fadc2c6c0f499eff9c9038c9926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d45f995edc436f16aee98c90da4e281a787ba379a91c7b812155f24b01f240c`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 6.6 MB (6619532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6721188e517e99c1592046fd1c1f9d23061e01b186bfce2cef6bc65a52a5f7fd`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d19df182cbee156b010b04853280b7c12519c2b2a73a5d9a80ae357c814c67`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e4aef08d7bba47a53a2cdfea2260f5792c1fdb440a5ad4ff982730170aa3deb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8badc11acca1d928d62f328aa0f3707584a4655e9abfa03e3b1b697d59a65`

```dockerfile
```

-	Layers:
	-	`sha256:e3cd06dd05bb0a25b9621e25ea152cd6cffebb5eff99e2740970497eaafedfd3`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4cf2613394dd476c98defc5949b0112c58104e69fdedcea45623d8a0500232ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10404101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e46a96841a5e8a1a059d0b1f2e9f7ef331d2f66c708831b9b3b20e44dd08b4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25f5c4125e4e65d2291719a7301077f73955ea8a486793cdff158dd5b38f2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.7 MB (6683899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:911ea621f7b7bdc2849cb0bf7c5d77fc52979adadcf778fe1895cca4f30c7d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1733bfcfab9d319252505097d1b8090505f3d0cfd8707c419d6e05613fec1bc7`

```dockerfile
```

-	Layers:
	-	`sha256:95525b415b6f44f224df4f52f3673394dacc4e6da64f4cdd96d7f69ed6227977`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:1b40e5777ca5e42f1a686c44c10756b93b42ecf9828e34535c3362c661ffe383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10715340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e765891c29d76f069d9a16b30c6de0b6d5dd98fec8bc48ac2a30e38412754a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:39 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771170401b4070c1dd173335f21881887683088a98679a5ad80585b2067bc1e2`  
		Last Modified: Mon, 29 Jun 2026 19:11:52 GMT  
		Size: 7.1 MB (7077286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24b09c93cbe4710a2235d033d228f7973210a7b7a93081d020e649a8ee2b2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcceda063df49f85902f8d00b7d2a5de091e8f90c478cb5943dfef623befe7c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5256630d95ea8d78de9df1f862aa8468e2618c70446f2b2b34a479e31cc09d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd0c6ed24bd266521a1aeef3a2d01fac948384e4dc7e53cf92e059d06220860`

```dockerfile
```

-	Layers:
	-	`sha256:e4110a5e17fc15bf29266ec20af296d24defb647f46623a029d38782d3188aa6`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:c11af972c99ae542de8925e6a7d9c533aa1eb039660420d2074beed6089b3bf0
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
$ docker pull nats@sha256:a42e284980d105c1b668d553175b4c7abc9b7187c5e9859baf4f1d564772b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bc12a71290912ecf2ffb2e5df45be9ae532fef1b8240aef6102891d375ce25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328794545e9bf2e5cced545a15e65e783306486272234d91c5d2719d0ec9b70`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 7.3 MB (7267461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266119c4af18be04cdea3885753ddc31a6343f4a3cdd22439d75ab32a2587dbb`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff0c17447e0330a97ae8ec95d6fdcadcd8cb8991d6c548858ec3d69a3c23a2`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2f3d3942c5b8e78340ff935ef0179cde1967969ba70ca4664fc6dfaaea0a4ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac360c9f1c2562befb519baafc614b6161d4ceee74f7701c04b24cb07d223f`

```dockerfile
```

-	Layers:
	-	`sha256:564b644082e6223b0d2da321c2a6a1e4337ba6eee056219eeed745c943604b09`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:d4e53bdfe4a9d810005abaf974dd9a12374c9cd187fa6be4622eff6a73b9e2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8ea3792d3865371b24b0504e2a7a61140487a85c1289a56e6b0a414f3aa451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fb591416c4f81c00164a6df7c9a0df260683e8939dad253a229dad6006eed7`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 7.0 MB (7001975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a94003f98dbb2cec821705d1615ee3fabdb6278a14a965fad556f00935df4e`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca954dfa8945adfa8283aac38370a786f5ed56c79b3a242cdc0a7717732e4c01`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d2617716222bd82abc599cbe8277f98292977c0dfdd769178f6be9d0fdbfafc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf691e94e06290aeb75516eb80f45749858c6ac66c0462f375e5b23f89c0f28`

```dockerfile
```

-	Layers:
	-	`sha256:051ab4a8c59747a86c2b341f78f881dcb5ce383e1adb18760b2e37658493f9f3`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:13a3f0e29c614c6b948bac76e8511e103dae75a1f3aafb215d49defef515bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b0bb66ac4162fc21cb64f4e23f7840a339f47c9c6e9fe68e07f879189b36aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c57aa7f84636f8b81c22758ea4a628036299dea2750a000eb5de6220234b418`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 7.0 MB (6992381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b307022eba60d3fa1d5f402e6c270a824a7c22733d6b54b89a11d8e47f5df06`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979223c0d164e45ff3d261730284785ca49e194cd773a37086da9bdd856159e`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cc9db77acad1e638c9d195fe27bf9cb73a582f1d6c8a48de4aac85d42fe8b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5e4eea65b1e82754ac2719f2026f89bf4d253eda69a68c1c7a0753cc424985`

```dockerfile
```

-	Layers:
	-	`sha256:be67ebf23efa9ed614c3e6ecbd8dbfe60c3c196c67672894c62befc4102a028d`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:064222a09af7b194af6760d6089aa9ebd93fe7b8136ec2193ddb72dd78d8bd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10740987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422fa2e0339d3eb86f18cdd7040198afd726fadc2c6c0f499eff9c9038c9926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d45f995edc436f16aee98c90da4e281a787ba379a91c7b812155f24b01f240c`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 6.6 MB (6619532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6721188e517e99c1592046fd1c1f9d23061e01b186bfce2cef6bc65a52a5f7fd`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d19df182cbee156b010b04853280b7c12519c2b2a73a5d9a80ae357c814c67`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e4aef08d7bba47a53a2cdfea2260f5792c1fdb440a5ad4ff982730170aa3deb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8badc11acca1d928d62f328aa0f3707584a4655e9abfa03e3b1b697d59a65`

```dockerfile
```

-	Layers:
	-	`sha256:e3cd06dd05bb0a25b9621e25ea152cd6cffebb5eff99e2740970497eaafedfd3`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4cf2613394dd476c98defc5949b0112c58104e69fdedcea45623d8a0500232ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10404101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e46a96841a5e8a1a059d0b1f2e9f7ef331d2f66c708831b9b3b20e44dd08b4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25f5c4125e4e65d2291719a7301077f73955ea8a486793cdff158dd5b38f2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.7 MB (6683899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:911ea621f7b7bdc2849cb0bf7c5d77fc52979adadcf778fe1895cca4f30c7d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1733bfcfab9d319252505097d1b8090505f3d0cfd8707c419d6e05613fec1bc7`

```dockerfile
```

-	Layers:
	-	`sha256:95525b415b6f44f224df4f52f3673394dacc4e6da64f4cdd96d7f69ed6227977`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1b40e5777ca5e42f1a686c44c10756b93b42ecf9828e34535c3362c661ffe383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10715340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e765891c29d76f069d9a16b30c6de0b6d5dd98fec8bc48ac2a30e38412754a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:39 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771170401b4070c1dd173335f21881887683088a98679a5ad80585b2067bc1e2`  
		Last Modified: Mon, 29 Jun 2026 19:11:52 GMT  
		Size: 7.1 MB (7077286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24b09c93cbe4710a2235d033d228f7973210a7b7a93081d020e649a8ee2b2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcceda063df49f85902f8d00b7d2a5de091e8f90c478cb5943dfef623befe7c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5256630d95ea8d78de9df1f862aa8468e2618c70446f2b2b34a479e31cc09d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd0c6ed24bd266521a1aeef3a2d01fac948384e4dc7e53cf92e059d06220860`

```dockerfile
```

-	Layers:
	-	`sha256:e4110a5e17fc15bf29266ec20af296d24defb647f46623a029d38782d3188aa6`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:1b5a0a665cbe50a4ea28e8a82cf809b26cee5027d1fcaf8682fadf8f385fdf29
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
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:1b5a0a665cbe50a4ea28e8a82cf809b26cee5027d1fcaf8682fadf8f385fdf29
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
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:8dc6fb5a0ee7e8187f3cdf7441a0750b311f085dab7927d13e21c4c9df40cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:adf4bf882f0a9401ced379937318d5b90fa110e734e66e96cd0f93672070c6a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165432526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d18afa60c53adbeabe61272a2c1aa4eab076707ff64604b09c9c45e3b6bfa97`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:18:14 GMT
ENV NATS_SERVER=2.14.3
# Wed, 15 Jul 2026 23:18:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Wed, 15 Jul 2026 23:18:16 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.3/nats-server-v2.14.3-windows-amd64.zip
# Wed, 15 Jul 2026 23:18:18 GMT
ENV NATS_SERVER_SHASUM=94e338d742761272e31eab1efb1f767eac3a2e56e4c05a7933c65a73fe95a27b
# Wed, 15 Jul 2026 23:18:22 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:18:34 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:18:35 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:18:36 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:18:37 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:18:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d119bed3ee756fe91818f2e17fdb430f3b0ace8afc94f156b47dddd3a4511ba9`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5253861723a79e38723b60cb1c46f4d147e69df8cea7f051cdabc0cb0dc423`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0dbd293fd64d7b627d6d57fd388c86aef4a1959368dd2811352a499b92f6ed`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41147b8c6f63027e262e9595c14c4afa40894f0ac011bef3f9ed1262cfe87509`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9adc2b8038c9bee27f2915233a98b9b8b3a93388bba7bc300abcff172214357`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 472.9 KB (472930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0831572e1a881a0b79876a53652511a638752af6e7eb44b783b0be4cb4488dbf`  
		Last Modified: Wed, 15 Jul 2026 23:18:46 GMT  
		Size: 7.4 MB (7392871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cf67163c32ce41b22738e6e21624816b74f8fad84333d4366c3d85cab13e5`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7cfa7a0b8d99cfca51cbe97826ca12df63c7e8c96f03b41e17ae3ea986ae`  
		Last Modified: Wed, 15 Jul 2026 23:18:42 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4378ce27f8d97519f53c69563c37fa1eddbfc4d6d2c8d8a11c2f5c3d229d107c`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c01c27499973cb234d03f747d0ec89cbed384a0ff267b2d5f525904931a77`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:8dc6fb5a0ee7e8187f3cdf7441a0750b311f085dab7927d13e21c4c9df40cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:adf4bf882f0a9401ced379937318d5b90fa110e734e66e96cd0f93672070c6a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165432526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d18afa60c53adbeabe61272a2c1aa4eab076707ff64604b09c9c45e3b6bfa97`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:18:14 GMT
ENV NATS_SERVER=2.14.3
# Wed, 15 Jul 2026 23:18:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Wed, 15 Jul 2026 23:18:16 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.3/nats-server-v2.14.3-windows-amd64.zip
# Wed, 15 Jul 2026 23:18:18 GMT
ENV NATS_SERVER_SHASUM=94e338d742761272e31eab1efb1f767eac3a2e56e4c05a7933c65a73fe95a27b
# Wed, 15 Jul 2026 23:18:22 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:18:34 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:18:35 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:18:36 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:18:37 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:18:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d119bed3ee756fe91818f2e17fdb430f3b0ace8afc94f156b47dddd3a4511ba9`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5253861723a79e38723b60cb1c46f4d147e69df8cea7f051cdabc0cb0dc423`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0dbd293fd64d7b627d6d57fd388c86aef4a1959368dd2811352a499b92f6ed`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41147b8c6f63027e262e9595c14c4afa40894f0ac011bef3f9ed1262cfe87509`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9adc2b8038c9bee27f2915233a98b9b8b3a93388bba7bc300abcff172214357`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 472.9 KB (472930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0831572e1a881a0b79876a53652511a638752af6e7eb44b783b0be4cb4488dbf`  
		Last Modified: Wed, 15 Jul 2026 23:18:46 GMT  
		Size: 7.4 MB (7392871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cf67163c32ce41b22738e6e21624816b74f8fad84333d4366c3d85cab13e5`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7cfa7a0b8d99cfca51cbe97826ca12df63c7e8c96f03b41e17ae3ea986ae`  
		Last Modified: Wed, 15 Jul 2026 23:18:42 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4378ce27f8d97519f53c69563c37fa1eddbfc4d6d2c8d8a11c2f5c3d229d107c`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c01c27499973cb234d03f747d0ec89cbed384a0ff267b2d5f525904931a77`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.4`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-alpine`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-alpine3.22`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-linux`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-nanoserver`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-scratch`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-windowsservercore`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:2.14.4-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `nats:alpine`

```console
$ docker pull nats@sha256:c11af972c99ae542de8925e6a7d9c533aa1eb039660420d2074beed6089b3bf0
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
$ docker pull nats@sha256:a42e284980d105c1b668d553175b4c7abc9b7187c5e9859baf4f1d564772b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bc12a71290912ecf2ffb2e5df45be9ae532fef1b8240aef6102891d375ce25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328794545e9bf2e5cced545a15e65e783306486272234d91c5d2719d0ec9b70`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 7.3 MB (7267461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266119c4af18be04cdea3885753ddc31a6343f4a3cdd22439d75ab32a2587dbb`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff0c17447e0330a97ae8ec95d6fdcadcd8cb8991d6c548858ec3d69a3c23a2`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:2f3d3942c5b8e78340ff935ef0179cde1967969ba70ca4664fc6dfaaea0a4ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac360c9f1c2562befb519baafc614b6161d4ceee74f7701c04b24cb07d223f`

```dockerfile
```

-	Layers:
	-	`sha256:564b644082e6223b0d2da321c2a6a1e4337ba6eee056219eeed745c943604b09`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:d4e53bdfe4a9d810005abaf974dd9a12374c9cd187fa6be4622eff6a73b9e2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8ea3792d3865371b24b0504e2a7a61140487a85c1289a56e6b0a414f3aa451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fb591416c4f81c00164a6df7c9a0df260683e8939dad253a229dad6006eed7`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 7.0 MB (7001975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a94003f98dbb2cec821705d1615ee3fabdb6278a14a965fad556f00935df4e`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca954dfa8945adfa8283aac38370a786f5ed56c79b3a242cdc0a7717732e4c01`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d2617716222bd82abc599cbe8277f98292977c0dfdd769178f6be9d0fdbfafc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf691e94e06290aeb75516eb80f45749858c6ac66c0462f375e5b23f89c0f28`

```dockerfile
```

-	Layers:
	-	`sha256:051ab4a8c59747a86c2b341f78f881dcb5ce383e1adb18760b2e37658493f9f3`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:13a3f0e29c614c6b948bac76e8511e103dae75a1f3aafb215d49defef515bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b0bb66ac4162fc21cb64f4e23f7840a339f47c9c6e9fe68e07f879189b36aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c57aa7f84636f8b81c22758ea4a628036299dea2750a000eb5de6220234b418`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 7.0 MB (6992381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b307022eba60d3fa1d5f402e6c270a824a7c22733d6b54b89a11d8e47f5df06`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979223c0d164e45ff3d261730284785ca49e194cd773a37086da9bdd856159e`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cc9db77acad1e638c9d195fe27bf9cb73a582f1d6c8a48de4aac85d42fe8b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5e4eea65b1e82754ac2719f2026f89bf4d253eda69a68c1c7a0753cc424985`

```dockerfile
```

-	Layers:
	-	`sha256:be67ebf23efa9ed614c3e6ecbd8dbfe60c3c196c67672894c62befc4102a028d`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:064222a09af7b194af6760d6089aa9ebd93fe7b8136ec2193ddb72dd78d8bd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10740987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422fa2e0339d3eb86f18cdd7040198afd726fadc2c6c0f499eff9c9038c9926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d45f995edc436f16aee98c90da4e281a787ba379a91c7b812155f24b01f240c`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 6.6 MB (6619532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6721188e517e99c1592046fd1c1f9d23061e01b186bfce2cef6bc65a52a5f7fd`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d19df182cbee156b010b04853280b7c12519c2b2a73a5d9a80ae357c814c67`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:e4aef08d7bba47a53a2cdfea2260f5792c1fdb440a5ad4ff982730170aa3deb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8badc11acca1d928d62f328aa0f3707584a4655e9abfa03e3b1b697d59a65`

```dockerfile
```

-	Layers:
	-	`sha256:e3cd06dd05bb0a25b9621e25ea152cd6cffebb5eff99e2740970497eaafedfd3`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:4cf2613394dd476c98defc5949b0112c58104e69fdedcea45623d8a0500232ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10404101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e46a96841a5e8a1a059d0b1f2e9f7ef331d2f66c708831b9b3b20e44dd08b4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25f5c4125e4e65d2291719a7301077f73955ea8a486793cdff158dd5b38f2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.7 MB (6683899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:911ea621f7b7bdc2849cb0bf7c5d77fc52979adadcf778fe1895cca4f30c7d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1733bfcfab9d319252505097d1b8090505f3d0cfd8707c419d6e05613fec1bc7`

```dockerfile
```

-	Layers:
	-	`sha256:95525b415b6f44f224df4f52f3673394dacc4e6da64f4cdd96d7f69ed6227977`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:1b40e5777ca5e42f1a686c44c10756b93b42ecf9828e34535c3362c661ffe383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10715340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e765891c29d76f069d9a16b30c6de0b6d5dd98fec8bc48ac2a30e38412754a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:39 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771170401b4070c1dd173335f21881887683088a98679a5ad80585b2067bc1e2`  
		Last Modified: Mon, 29 Jun 2026 19:11:52 GMT  
		Size: 7.1 MB (7077286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24b09c93cbe4710a2235d033d228f7973210a7b7a93081d020e649a8ee2b2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcceda063df49f85902f8d00b7d2a5de091e8f90c478cb5943dfef623befe7c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:5256630d95ea8d78de9df1f862aa8468e2618c70446f2b2b34a479e31cc09d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd0c6ed24bd266521a1aeef3a2d01fac948384e4dc7e53cf92e059d06220860`

```dockerfile
```

-	Layers:
	-	`sha256:e4110a5e17fc15bf29266ec20af296d24defb647f46623a029d38782d3188aa6`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:c11af972c99ae542de8925e6a7d9c533aa1eb039660420d2074beed6089b3bf0
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
$ docker pull nats@sha256:a42e284980d105c1b668d553175b4c7abc9b7187c5e9859baf4f1d564772b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11056026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bc12a71290912ecf2ffb2e5df45be9ae532fef1b8240aef6102891d375ce25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328794545e9bf2e5cced545a15e65e783306486272234d91c5d2719d0ec9b70`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 7.3 MB (7267461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:266119c4af18be04cdea3885753ddc31a6343f4a3cdd22439d75ab32a2587dbb`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ff0c17447e0330a97ae8ec95d6fdcadcd8cb8991d6c548858ec3d69a3c23a2`  
		Last Modified: Mon, 29 Jun 2026 19:11:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:2f3d3942c5b8e78340ff935ef0179cde1967969ba70ca4664fc6dfaaea0a4ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ac360c9f1c2562befb519baafc614b6161d4ceee74f7701c04b24cb07d223f`

```dockerfile
```

-	Layers:
	-	`sha256:564b644082e6223b0d2da321c2a6a1e4337ba6eee056219eeed745c943604b09`  
		Last Modified: Mon, 29 Jun 2026 19:11:25 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:d4e53bdfe4a9d810005abaf974dd9a12374c9cd187fa6be4622eff6a73b9e2e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10497746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8ea3792d3865371b24b0504e2a7a61140487a85c1289a56e6b0a414f3aa451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:42 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:42 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:42 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31fb591416c4f81c00164a6df7c9a0df260683e8939dad253a229dad6006eed7`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 7.0 MB (7001975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a94003f98dbb2cec821705d1615ee3fabdb6278a14a965fad556f00935df4e`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca954dfa8945adfa8283aac38370a786f5ed56c79b3a242cdc0a7717732e4c01`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d2617716222bd82abc599cbe8277f98292977c0dfdd769178f6be9d0fdbfafc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf691e94e06290aeb75516eb80f45749858c6ac66c0462f375e5b23f89c0f28`

```dockerfile
```

-	Layers:
	-	`sha256:051ab4a8c59747a86c2b341f78f881dcb5ce383e1adb18760b2e37658493f9f3`  
		Last Modified: Mon, 29 Jun 2026 19:12:47 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:13a3f0e29c614c6b948bac76e8511e103dae75a1f3aafb215d49defef515bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10202964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b0bb66ac4162fc21cb64f4e23f7840a339f47c9c6e9fe68e07f879189b36aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:19 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:19 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c57aa7f84636f8b81c22758ea4a628036299dea2750a000eb5de6220234b418`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 7.0 MB (6992381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b307022eba60d3fa1d5f402e6c270a824a7c22733d6b54b89a11d8e47f5df06`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4979223c0d164e45ff3d261730284785ca49e194cd773a37086da9bdd856159e`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cc9db77acad1e638c9d195fe27bf9cb73a582f1d6c8a48de4aac85d42fe8b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5e4eea65b1e82754ac2719f2026f89bf4d253eda69a68c1c7a0753cc424985`

```dockerfile
```

-	Layers:
	-	`sha256:be67ebf23efa9ed614c3e6ecbd8dbfe60c3c196c67672894c62befc4102a028d`  
		Last Modified: Mon, 29 Jun 2026 19:12:24 GMT  
		Size: 15.5 KB (15516 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:064222a09af7b194af6760d6089aa9ebd93fe7b8136ec2193ddb72dd78d8bd4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10740987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b422fa2e0339d3eb86f18cdd7040198afd726fadc2c6c0f499eff9c9038c9926`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:12:29 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:12:29 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:12:29 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d45f995edc436f16aee98c90da4e281a787ba379a91c7b812155f24b01f240c`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 6.6 MB (6619532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6721188e517e99c1592046fd1c1f9d23061e01b186bfce2cef6bc65a52a5f7fd`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d19df182cbee156b010b04853280b7c12519c2b2a73a5d9a80ae357c814c67`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:e4aef08d7bba47a53a2cdfea2260f5792c1fdb440a5ad4ff982730170aa3deb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb8badc11acca1d928d62f328aa0f3707584a4655e9abfa03e3b1b697d59a65`

```dockerfile
```

-	Layers:
	-	`sha256:e3cd06dd05bb0a25b9621e25ea152cd6cffebb5eff99e2740970497eaafedfd3`  
		Last Modified: Mon, 29 Jun 2026 19:12:33 GMT  
		Size: 15.6 KB (15556 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:4cf2613394dd476c98defc5949b0112c58104e69fdedcea45623d8a0500232ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10404101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e46a96841a5e8a1a059d0b1f2e9f7ef331d2f66c708831b9b3b20e44dd08b4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:24 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:24 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f25f5c4125e4e65d2291719a7301077f73955ea8a486793cdff158dd5b38f2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:31 GMT  
		Size: 6.7 MB (6683899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b5b2751240aedcffc66cd15114fdf1dc1edbd92583859340ff12750f05eee9`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46b6e66255726a7da20746e5335e6cfd61adcb302045bacb12653a3fb48796`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:911ea621f7b7bdc2849cb0bf7c5d77fc52979adadcf778fe1895cca4f30c7d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1733bfcfab9d319252505097d1b8090505f3d0cfd8707c419d6e05613fec1bc7`

```dockerfile
```

-	Layers:
	-	`sha256:95525b415b6f44f224df4f52f3673394dacc4e6da64f4cdd96d7f69ed6227977`  
		Last Modified: Mon, 29 Jun 2026 19:11:30 GMT  
		Size: 15.5 KB (15472 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1b40e5777ca5e42f1a686c44c10756b93b42ecf9828e34535c3362c661ffe383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10715340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e765891c29d76f069d9a16b30c6de0b6d5dd98fec8bc48ac2a30e38412754a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Mon, 29 Jun 2026 19:11:39 GMT
ENV NATS_SERVER=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Mon, 29 Jun 2026 19:11:39 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='1759b6a0ddebade9471b7c02891dfaa8c73b526c6f3ce391d4e21ec3eceffab8' ;;     armhf) natsArch='arm6'; sha256='95d285b170a1417121fbb62ec5c9b618552855d072f48be86cd4d11544227704' ;;     armv7) natsArch='arm7'; sha256='d70d6de7ad0d587ad3047f4516a054f64b693edb79894d7ec0a2d176be31f6cf' ;;     x86_64) natsArch='amd64'; sha256='f3d0c820c749f81d717310fb00d4903919e70e3e66b268bd352a088b9788eb93' ;;     x86) natsArch='386'; sha256='071d031273136987af2da68103bd1080fbdd463b244c703388d0164726b17357' ;;     s390x) natsArch='s390x'; sha256='be525fec7cf3dac23e9617ca2b4b3767e79b1f684a456f3a2e85e1b3d40a6da9' ;;     ppc64le) natsArch='ppc64le'; sha256='12b4ecc73e7023b501a374913c7e70f7487107743dbab7cc7da627348b87f9d3' ;;     loong64) natsArch='loong64'; sha256='9a69c1fd01d290695cef2e33412e0e3ad4fe8e4af03faf0be137cd7e287bd55b' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Mon, 29 Jun 2026 19:11:39 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Mon, 29 Jun 2026 19:11:40 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Jun 2026 19:11:40 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771170401b4070c1dd173335f21881887683088a98679a5ad80585b2067bc1e2`  
		Last Modified: Mon, 29 Jun 2026 19:11:52 GMT  
		Size: 7.1 MB (7077286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd24b09c93cbe4710a2235d033d228f7973210a7b7a93081d020e649a8ee2b2c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcceda063df49f85902f8d00b7d2a5de091e8f90c478cb5943dfef623befe7c`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:5256630d95ea8d78de9df1f862aa8468e2618c70446f2b2b34a479e31cc09d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd0c6ed24bd266521a1aeef3a2d01fac948384e4dc7e53cf92e059d06220860`

```dockerfile
```

-	Layers:
	-	`sha256:e4110a5e17fc15bf29266ec20af296d24defb647f46623a029d38782d3188aa6`  
		Last Modified: Mon, 29 Jun 2026 19:11:51 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:67ac7866d010e8d83302dd30332eeae1a2b7a8ee051155e2eb5a5485b720cd4b
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
	-	windows version 10.0.20348.5386; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:1b5a0a665cbe50a4ea28e8a82cf809b26cee5027d1fcaf8682fadf8f385fdf29
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
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:c07d25fff51199c0852e04960c77308a7713571b9c7ffdd180f938b1c4214f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:480c0d15a78fa53e4d45e278174a424a69248d14b4861f37e5251928ab31d12f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131160016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72abafcff9a1ca155408e8bac698e25331d9a6facd850c70e538984b66237b3f`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Wed, 15 Jul 2026 23:51:30 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:d28b1675c385af4d7600302dadf40a3bf46cd73b4ca42fe37500427a26b9b480 in C:\nats-server.exe 
# Wed, 15 Jul 2026 23:51:31 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:51:32 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:51:33 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfb1fa8e7ee476b7330f4b263fb025eb55a4a61bae274e7773d3367d4199c99`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6523aa228a1d883c5ab98388e3c4ced7c5135a16dc4a772d8d064868fba0d1b`  
		Last Modified: Wed, 15 Jul 2026 23:51:38 GMT  
		Size: 7.1 MB (7050911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c419dea42a3682090d8ab08dbe5cc2c93143bf94d739f8835e8d832b99c22b6`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12514ddb47aeb7b13b010e5bbdba6366b90b35dd1a13ce5ea4c8cc5d96f6ebc4`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab0c61ff7eee1b8a4abb8fffb1f0d1aa2d16a9a3be693adddb72cac2d4c1a60`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ffc4fbf3a276e71ebf1fbe70d85994d38d7b1d003dcbb17ed07faabbe10339`  
		Last Modified: Wed, 15 Jul 2026 23:51:37 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:1b5a0a665cbe50a4ea28e8a82cf809b26cee5027d1fcaf8682fadf8f385fdf29
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
$ docker pull nats@sha256:da52c7cd2dd8cfbfd7d2dfb251b761e42dbfd6fe0acb09fd26cbb42bdddb2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6857592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073ccfa5190b3b463a3fcf96e85c57584707cb0e37e977effc0b13df38ad27da`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:13:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:13:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:13:56 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:13:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:001b0b866410b42b38bcb2e428951af42433891ff425dfcce0b3a53cf93d9cf5`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.9 MB (6857082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301e2bd5843dce0ae9f53e3b56e505349c98b58f06c463430d25b5c5ff3d2ac`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:4e6b9bd23e99f1e6893cbc2298ff6542ff362ac45479424f0cbbaa44e0bd7932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b91a2a2149df4bdf026d1ba840708ff2f744d4552979b6f5238e32d4b9fadd`

```dockerfile
```

-	Layers:
	-	`sha256:f2654502a1c07929b5dba813de85a6fecf099bd5b4e5dc0304f5bffb9a55374a`  
		Last Modified: Mon, 29 Jun 2026 19:14:00 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:f954b0114100cc6b04d48371743c840445bbd9d9cd58fd347d548df20fb81377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6591898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fecc68893e7b073ba43eb1643ffef18c78a2bcde561b9df87690e4c25b31729d`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:02 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:02 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:02 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:02 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:087a70319659349faa0bc66d2f258c634f201af06cf4cd72fd052fe0f1741923`  
		Last Modified: Mon, 29 Jun 2026 15:45:00 GMT  
		Size: 6.6 MB (6591390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48bfacc9913ae01cc25da4a4e0b5b45dd8572ebef94eb75ee659e643ca668f`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:2ddfb53928614b91b72d029bf8c1fe2c18c9323525cddd2435738502af8f535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01c648adf5a8076bdff845afbe972feb29cbce83a045fc1fa7a6407350edd450`

```dockerfile
```

-	Layers:
	-	`sha256:f18d91a70c6190eda91e68db672ccbc0be90eca9e3a3cbca1053dac4180c85bb`  
		Last Modified: Mon, 29 Jun 2026 20:10:07 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:5acf1bcd52c9815e894b475e74896d5c20d20f75dc1d0a4609284c356a23e814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6581482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eaac6cac973cc88e6d44cfa8e4fa97db877aa382eca9ca11a3aabdc71efaa4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:10:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:10:01 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:10:01 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:10:01 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:10:01 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:95cb78be6f3eb15e97acc3a341503927e5ccafbd12a09b4a1b82fbb89f4787b5`  
		Last Modified: Mon, 29 Jun 2026 15:45:01 GMT  
		Size: 6.6 MB (6580972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce96a7f9a07f1a57504be91420ffc8fe2f13ee198161d2b34cfa5461201d23c9`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7350f027d99946847895026cb1af3842bdad2563af2c7a4902c947e3e5859335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6365d446dc11c95971d0b41e292ef423e0863365d7c070019c54d2c193b476ff`

```dockerfile
```

-	Layers:
	-	`sha256:0d8192ce2954c6a959615d982ceaa8825bd46cf89ead122b5706cc29fcf8bd71`  
		Last Modified: Mon, 29 Jun 2026 20:10:05 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:25e15191f85a79618d9811e8747e99ac98b0a40bfaae0aaaa5001bb1230c1d01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6207675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb2b8f5a6e48a97cd470606ae3bf871c5e7a728291b699ed0fc6ade464b4cd4`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 20:09:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 20:09:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 20:09:47 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 20:09:47 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 20:09:47 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ceb26b4c7119501bb3160d6cbbe50dce6ca269cc3bc37d3bfb9a8d65ab54e83e`  
		Last Modified: Mon, 29 Jun 2026 15:45:05 GMT  
		Size: 6.2 MB (6207167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c139d6bb37d99b808c536d15fdfb2452430180d1906126f13f7c0e3e65c8`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:dbb4f985f00b8ed1cf158bbc14683f3982c6af4dbbd8a11fb368833ce8ab40d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8762707c4a125db65916d8207dfc41bd88cb661dfd73431bef3936beaa1b6e79`

```dockerfile
```

-	Layers:
	-	`sha256:6d1ce7246188626d86f106948c8c45d6673d92d8b12bc55a2f76ad1a4a77c06b`  
		Last Modified: Mon, 29 Jun 2026 20:09:51 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:0d2f692536149ac22566cf1b8c8c155bbf8704b0219606b603d37a2eb62f66a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5853d65dc9c9039e59f599fe9d6264c1b4b775d3ec6a9efaefa2487a1b2910c1`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:12:46 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:12:46 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:12:46 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:12:46 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:094159f217313d715a9c9416ce56b6efb6774fae53d0a118eb72c19dd5050f69`  
		Last Modified: Mon, 29 Jun 2026 15:45:02 GMT  
		Size: 6.3 MB (6270639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa1d383fd4674e2d350a56d40d9d7a4a018dcdcac31733be7d84231bbad1d5b`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:7388f5e7e39dd5b070cb36fd9cf62973a1dbe1673ae86098ed3504c78e1ef328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a70cea4e571b8e5e9bb3f1775b350266ece5ba0911b4910d792e2f5c7a8522`

```dockerfile
```

-	Layers:
	-	`sha256:c683a72a6137cd681254bab9a60e1a450a3a8e636d80bcccb57e77942df0b512`  
		Last Modified: Mon, 29 Jun 2026 19:12:52 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:fa31a78cc1dfc74ac5954db2d0fabe8025d55442dd778436f11eb45bbad212b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6666748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a751449230c715131c826c9e954f6c6faab06fed9d6ac6ef617518f68b0f57`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Mon, 29 Jun 2026 19:18:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Mon, 29 Jun 2026 19:18:18 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Mon, 29 Jun 2026 19:18:19 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Mon, 29 Jun 2026 19:18:19 GMT
ENTRYPOINT ["/nats-server"]
# Mon, 29 Jun 2026 19:18:19 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:c051b099bef1cbfeba54872473e4a7281c4a402d9f0b7c1bdf892e5e21ea8c51`  
		Last Modified: Mon, 29 Jun 2026 15:45:04 GMT  
		Size: 6.7 MB (6666239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfd00d66579c55de314f0aa7536b46c9471486f908c26ae17a7d930bfdd9fb9`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:6e482d7d215597ddb64e6a49fb2d97ed5f170b063872e7b945de9574375342eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa169f897fcb8ad6d1b168458e6f22434b580cca5dd468838bbd781ec75f31a`

```dockerfile
```

-	Layers:
	-	`sha256:cfe01b7f8ddd174d7457c698713d2616d4d35273045161e7a898b8d8a593e3f4`  
		Last Modified: Mon, 29 Jun 2026 19:18:27 GMT  
		Size: 10.4 KB (10422 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:8dc6fb5a0ee7e8187f3cdf7441a0750b311f085dab7927d13e21c4c9df40cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:adf4bf882f0a9401ced379937318d5b90fa110e734e66e96cd0f93672070c6a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165432526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d18afa60c53adbeabe61272a2c1aa4eab076707ff64604b09c9c45e3b6bfa97`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:18:14 GMT
ENV NATS_SERVER=2.14.3
# Wed, 15 Jul 2026 23:18:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Wed, 15 Jul 2026 23:18:16 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.3/nats-server-v2.14.3-windows-amd64.zip
# Wed, 15 Jul 2026 23:18:18 GMT
ENV NATS_SERVER_SHASUM=94e338d742761272e31eab1efb1f767eac3a2e56e4c05a7933c65a73fe95a27b
# Wed, 15 Jul 2026 23:18:22 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:18:34 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:18:35 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:18:36 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:18:37 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:18:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d119bed3ee756fe91818f2e17fdb430f3b0ace8afc94f156b47dddd3a4511ba9`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5253861723a79e38723b60cb1c46f4d147e69df8cea7f051cdabc0cb0dc423`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0dbd293fd64d7b627d6d57fd388c86aef4a1959368dd2811352a499b92f6ed`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41147b8c6f63027e262e9595c14c4afa40894f0ac011bef3f9ed1262cfe87509`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9adc2b8038c9bee27f2915233a98b9b8b3a93388bba7bc300abcff172214357`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 472.9 KB (472930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0831572e1a881a0b79876a53652511a638752af6e7eb44b783b0be4cb4488dbf`  
		Last Modified: Wed, 15 Jul 2026 23:18:46 GMT  
		Size: 7.4 MB (7392871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cf67163c32ce41b22738e6e21624816b74f8fad84333d4366c3d85cab13e5`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7cfa7a0b8d99cfca51cbe97826ca12df63c7e8c96f03b41e17ae3ea986ae`  
		Last Modified: Wed, 15 Jul 2026 23:18:42 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4378ce27f8d97519f53c69563c37fa1eddbfc4d6d2c8d8a11c2f5c3d229d107c`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c01c27499973cb234d03f747d0ec89cbed384a0ff267b2d5f525904931a77`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:8dc6fb5a0ee7e8187f3cdf7441a0750b311f085dab7927d13e21c4c9df40cbd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:adf4bf882f0a9401ced379937318d5b90fa110e734e66e96cd0f93672070c6a0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165432526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d18afa60c53adbeabe61272a2c1aa4eab076707ff64604b09c9c45e3b6bfa97`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:18:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 15 Jul 2026 23:18:13 GMT
ENV NATS_DOCKERIZED=1
# Wed, 15 Jul 2026 23:18:14 GMT
ENV NATS_SERVER=2.14.3
# Wed, 15 Jul 2026 23:18:15 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.3
# Wed, 15 Jul 2026 23:18:16 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.3/nats-server-v2.14.3-windows-amd64.zip
# Wed, 15 Jul 2026 23:18:18 GMT
ENV NATS_SERVER_SHASUM=94e338d742761272e31eab1efb1f767eac3a2e56e4c05a7933c65a73fe95a27b
# Wed, 15 Jul 2026 23:18:22 GMT
RUN Set-PSDebug -Trace 2
# Wed, 15 Jul 2026 23:18:34 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Wed, 15 Jul 2026 23:18:35 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Wed, 15 Jul 2026 23:18:36 GMT
EXPOSE 4222 6222 8222
# Wed, 15 Jul 2026 23:18:37 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Wed, 15 Jul 2026 23:18:37 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf1c78502ad00fffdd2af2125d531140c1600970086b39c951658cd03fd6488`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660228a7e3aa738788fff9f74ff303e0401b1c9557cbe20717a1efeff7712d80`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d119bed3ee756fe91818f2e17fdb430f3b0ace8afc94f156b47dddd3a4511ba9`  
		Last Modified: Wed, 15 Jul 2026 23:18:45 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5253861723a79e38723b60cb1c46f4d147e69df8cea7f051cdabc0cb0dc423`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0dbd293fd64d7b627d6d57fd388c86aef4a1959368dd2811352a499b92f6ed`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41147b8c6f63027e262e9595c14c4afa40894f0ac011bef3f9ed1262cfe87509`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9adc2b8038c9bee27f2915233a98b9b8b3a93388bba7bc300abcff172214357`  
		Last Modified: Wed, 15 Jul 2026 23:18:43 GMT  
		Size: 472.9 KB (472930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0831572e1a881a0b79876a53652511a638752af6e7eb44b783b0be4cb4488dbf`  
		Last Modified: Wed, 15 Jul 2026 23:18:46 GMT  
		Size: 7.4 MB (7392871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cf67163c32ce41b22738e6e21624816b74f8fad84333d4366c3d85cab13e5`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7cfa7a0b8d99cfca51cbe97826ca12df63c7e8c96f03b41e17ae3ea986ae`  
		Last Modified: Wed, 15 Jul 2026 23:18:42 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4378ce27f8d97519f53c69563c37fa1eddbfc4d6d2c8d8a11c2f5c3d229d107c`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5c01c27499973cb234d03f747d0ec89cbed384a0ff267b2d5f525904931a77`  
		Last Modified: Wed, 15 Jul 2026 23:18:41 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
