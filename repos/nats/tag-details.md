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
$ docker pull nats@sha256:ecf677bae6a0ae7900bd3217be041c6614d5dcd2cae780000f9cd69462b36541
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-alpine`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-alpine3.22`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-linux`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-linux` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-nanoserver`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-scratch`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2-scratch` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2-windowsservercore`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12`

```console
$ docker pull nats@sha256:8d4a33b617f0bb535fd6abd2ed251bb1afabb0cb656c97be0adfb378e6e7591a
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
$ docker pull nats@sha256:f672e5c5a675c7320dab47ed320270b702a31da2788f520c0f650c790b18e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e6671e68103f1931e61a17c8f4bdbb4437d7d80d89d301e6383f0e92ba3162`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:15 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:15 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:15 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:589952464ceaad711cb262c23c8dfc4cd9f9f55715e088fdc4fd126faaccea8d`  
		Last Modified: Thu, 30 Jul 2026 14:08:37 GMT  
		Size: 6.7 MB (6683365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1026424672acb149ac1ac4ae3d2221af08d6e03dec79093502bc0c4fb725a`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:0aabccc0fdadc3cc5d779d9a3067f71ecd7b879fdbcff02001572105b27bd98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00502487770bbca409b5f1823c8eabc38bd02a0d7da87e273aa3ad18b9ccccf`

```dockerfile
```

-	Layers:
	-	`sha256:72940527c43f0642534941a361ddb3d108df6fbcc1cbdbfc4e54291787081524`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm variant v6

```console
$ docker pull nats@sha256:1a744a4ef582a9736c387a4aba6e3185dc8e8c2b58c89177f16df93054d0f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bb69a6daec45760a65800c0152f349379e606e29da1a94a21482954aeb32c3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:44 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:26e54cab80c9e738091e0e3fe82c185c216834bedea01372ad7df3b3dc868618`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.4 MB (6422521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58494b7a3fe04b97641d37edf1e11409346dfedae8a9a1087cb7a487549b09ce`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:8775d8c9af2de56f524e7b454c48dce41f60c36173d024f7488f19d4e4789bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc0960b0b9c7840511664ae660c1cdd9462059932bb44c9588de5f9d62223b9`

```dockerfile
```

-	Layers:
	-	`sha256:d8120f81c5b0c0404a20a045f730804ace6a9e3a8da6ebef889dd0b1edb51c23`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm variant v7

```console
$ docker pull nats@sha256:f7ca32f50d387f855da003c54e32163c32507a20157ea155f410c77f025d0ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6414409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7199196e340bc5a922007c3373f2e854df17463fe69287c39239175d273f8172`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e653d8113269ee233984898cbc14a6c4dbc22166a9e44381a8a093e91fcfabbc`  
		Last Modified: Thu, 30 Jul 2026 14:08:36 GMT  
		Size: 6.4 MB (6413899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb541c002db4d3cdcd8134a54d48ec0c2228aed913351fb1db9e8804a19226`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:cf823cbb6e48e6717d31c32490578c1e1e35aaf23df1db5eda6f93cc531ce4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd0ce86353acb55ae376169da4ba5442d8fefcd211097811d11a2745da3526`

```dockerfile
```

-	Layers:
	-	`sha256:85558210757c16208e22a05041e12bf956f406443751b2dd1ab5445eb75e4082`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:83548cd4da1fe4e2972c503630b6263cce176a91c2c629ed99985c35f78ed9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6079114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4da189920173981a32b6bfebf26e5e4e7e889beb0aaac341bb3015addfaa68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cbd34d9ad9c2fc08757274a724f3402b49fed97449717dc1766f510ea24e9d49`  
		Last Modified: Thu, 30 Jul 2026 14:08:38 GMT  
		Size: 6.1 MB (6078604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c9f1fc92c94146e543a5ddb8d35f7ceb48436c04dc59a2bb1078817eaa2fa`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:1965a61259c1a637f2784839bec0ce79970fff6ea605319fa1aca7334c26735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a174a76724620da61d3302ca7d7d69b553a68a98c0dacf2505ff09d4fffab30`

```dockerfile
```

-	Layers:
	-	`sha256:8b37164f190603ef9bce9995c5c3738de26715b1a13bb41b2fdf07a69e49d197`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; ppc64le

```console
$ docker pull nats@sha256:969f84c8861861c0283fb98a9dfe991de5eb99e682991a471a643ab4bd31b3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5099b45247a87dc0ee98272151641cb43d439bb3bb46746d86fd30c4fd8c5a87`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bb682b2c5cf44200cbae2d2470d15f8f0f97980dcdc88294aa01ce88721a30f5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.1 MB (6141100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd656007e4832c82257e5aa0aff94beb01a6762556681b566bcdc71f5051d55`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:5b60a2c054b6ce01c5e8a38e8169e7c6eaf0a053b2263a9aef2fa4403b57852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c62c3e197193308019691bf19556adea2dd388afdc7a8a19431c75e165166b`

```dockerfile
```

-	Layers:
	-	`sha256:caf8fa564c20f80661a2664046a6424e3ec578220735764424ddff1c5c97e74d`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - linux; s390x

```console
$ docker pull nats@sha256:0c63f036d246a2e741c3ad44055e4c5af99d07c779a18794b5ca34b2075d6ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a8bf7310f73f16d7e01e9030534062b96c495b76db35515b4d651b042fa6`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:407c746fe0ad8a17f7a55811eda33f7a19b30d62fdcd07f02a485772b056afa5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.5 MB (6532717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6cc41eb49d6c037e4441ac879fe3c2d5888d5be52348b50a0585d6c04897c`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12` - unknown; unknown

```console
$ docker pull nats@sha256:9a1472c1e7aa10c293b2f83e5a266868008236d5fcae09a2cb34f3adfe079b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e8eeffac085a7b4bb28efcd45c8c9b3b84262792d2462a5650a4511069d8a`

```dockerfile
```

-	Layers:
	-	`sha256:ba71c36f2752069c1a599e57c9fbcc47ea560bc21b02fbbe2962b0e5b5d01658`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:0e37701a851f7ef6b697860a270aa7b941eb53c083562f2661f252da342ffd90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130984897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a9a33165c4d1448334c6b35fff5106eee0e70afbdc5b680318dadcf1d0a45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:69ed8f5e3db352a33cd0da9b6409c80134a6b567e5e280ef88655b33e59be8b9 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2597b07a0bff31c0fa0cc9082156903d9008a866247268262041a99e77956f7`  
		Last Modified: Thu, 30 Jul 2026 21:14:02 GMT  
		Size: 6.9 MB (6875824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff0c87978d61aaba26006fd4fe629eab3c9c5efaae914c9e36f37505aecf40`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270e455f3df843f23e9b70fc756567ec96ac9d516310bdda2f020c4162e29d7b`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567b30c5950061f0ad3fe2a4abc0d9d58a5f62e65259a8bf5186753db70747f3`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3903d42df6bab83381c468caf0d724520ecd8345bad9b6afbb5983e8a94f33`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-alpine`

```console
$ docker pull nats@sha256:7cef1bd3fed6034e95cf6e6bc9c28c5afa6dc58e9fb778dd7924a1ac62569f2d
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
$ docker pull nats@sha256:24d8928f4e1b5d7372eaf4ebe2fe19758f06154f81a4a646e02c966ec4ccedfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10883901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42e55ec4f46d59447526bad7d1e83f8b3eb4adf09fa49b99ebe7355be6e884c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856f8399a42761ddcb33ef31f01210bf146969ae0555fbdac6c09ad181e36713`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 7.1 MB (7095337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914efbcfb36c85f1b1760dee36099b7720553fb01ec215c7b09855ad031d6858`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8ac32f57d210d77d68370d81043a7f86de191c684881ce64d0be9ed55a0e95`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd5c18176080196276f1b919d0231ef5ad4ca31e02b42bfe7f5a4d063d6e77e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0cb06bf8954b1651bf059443b7750d1911c81b26f4378da6d57d7f44b7a3a1`

```dockerfile
```

-	Layers:
	-	`sha256:01cfd2a76b0c969efa0111da1832865901e82dc9c621e8925addb0a6f66a5d9e`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:f929cfeb4003dc87320f24845f8c9ad684de4325e98d42a120aa2c8950655561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10328492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fae8844227c5356b34e96d7a90150736fdc531537f824e27b30f58889616c82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dcf23d7efc89d17b498c78d441faec9a8736e5b9a71048711e3de8759947ff`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 6.8 MB (6832721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271beceb7b80ff4401be8c03b6141aed4af92b254c1d50f0a83d89d657a28418`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69a1d103accac2305805160c2e13a46c1ea2d25904360309307c3d275f26944`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd716127cb50b44186b5c5645483b4dc0f1420e5fd231915a30470f093050697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37308bb91429ecb4131c1e9f9d3e2cf38c48eeb9d29dd20e41931a2a30db8d2e`

```dockerfile
```

-	Layers:
	-	`sha256:bbd4f0a66ac51ed480a642a53ed4096825547305098eb2e332e45d30cfdb2430`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:357056ba12f7eb29e420a13a55db3d81396c9cd2674c254c8da90a5382d0b41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10033369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2cb345723e0d3cc3e101d5444cebfb5ca8ecd0e1dd570b5b02ec4b9972825a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c898ef7e98ee408d97e635c0dbf582f4b41a871230889939cd271e113cdf5dfc`  
		Last Modified: Thu, 30 Jul 2026 19:47:46 GMT  
		Size: 6.8 MB (6822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27544e3fe36b0a91c2002a56360ea0070ae0d9fa4423fbd1f869cda8783807ef`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf91bf14cdc9b6d656aeabddfde49e87b777ab7491f651f7033b2fc707adbbe`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:89ed264b89aa172ba93b5987407b742fc20a47db6e76e60a9875e374f5d79d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a108c632c30c2660efc6b35c5808757e8e0bbc36ae527567c01e546d1b1a87`

```dockerfile
```

-	Layers:
	-	`sha256:27685a98c6462b31b1c6e715540b53ec6c688f9b9300fd9fb3b64137c9883708`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 14.3 KB (14288 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:815e8b0d81aafeedebac533e8e81147f261c141b2279b07957411162faff7fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1288377007a7aec4ba9968a5b6a97be0b80b9018195344d8304f01c7d63eaa70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d60b08616a1e5957c0552b6704aac56a166a51fcc8f457a388b734dbdf17be7`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 6.5 MB (6489513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc874ab1c284c5a287f5d3fe73de7768e6b2a9fa1db7d0f293a23a4d960ca0e`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b65f32b04b457346eb1fbfd0dc9858aad57236016b9db2c2e9e0b6f70c1ab34`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d505746c61c4cd3c744773bcac62624fac111e9ec2dc74c54e035db3a51ed454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8b5b7a0a00dd6d7eb09bf4994d70aa6917f9a4832a529427a0347029f8caf9`

```dockerfile
```

-	Layers:
	-	`sha256:89d60eb8bb68454dcfa76614c765739d65bd3390668e0f7fb173e3683d13836f`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:78af967442c7071df70c546d0fe32715bdfbb572100c690ce96b0f3a0ff49ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10272423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0ed1561bab9594c57eb6012900992c338d6e892b3f587d875d56d5a1b8e4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2a007e4ea900f77dcb895f7a7813c3283ac6bcb2f6693a9cc645e58477479`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.6 MB (6552221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a939d2e85f8ebf64360df8dd1e1cbf9eaa48f79579182aedd0330f0761db46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620e88939d426912596f098a89ba8bc4b57ed7da0bd4a6f2a5636e115838eeb8`

```dockerfile
```

-	Layers:
	-	`sha256:7dfe98b939fc105ed460317fa212eee267e0262bef62f1e8b1af1903f2918d58`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine` - linux; s390x

```console
$ docker pull nats@sha256:86e6503bcebae8f2b094b7c6bdb1afe40f6ca2a50269f3d0cc195ee37c90d87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10583594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44305ec4cee0cbf33144676d36deed11ab0619b3202482349dd0ff33c85b4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76f0838e4bfd7d030c8a225a877cd6f162434e0df8d0466b2f97fcba9f458dd`  
		Last Modified: Thu, 30 Jul 2026 20:00:52 GMT  
		Size: 6.9 MB (6945538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48b8bfdaa7c30f7117cb0ed2437cf54431ef41257dbff90c9ed2029a311997b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ea6073b08932137416457927ed1060fe5441556f05befc67e4432e0a89da7b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:ad709588f2182e3e079651eab825582a8102c13d54e423be18632369332b95bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950fa7443ca8503c8dcc765f0ac76d6fbd376ddef4a162240af783336202ac2`

```dockerfile
```

-	Layers:
	-	`sha256:127ed549a450147b6d6fa5478fad794c7b036f1ce21aeeda0cbd99cd67937796`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-alpine3.22`

```console
$ docker pull nats@sha256:7cef1bd3fed6034e95cf6e6bc9c28c5afa6dc58e9fb778dd7924a1ac62569f2d
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
$ docker pull nats@sha256:24d8928f4e1b5d7372eaf4ebe2fe19758f06154f81a4a646e02c966ec4ccedfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10883901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42e55ec4f46d59447526bad7d1e83f8b3eb4adf09fa49b99ebe7355be6e884c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856f8399a42761ddcb33ef31f01210bf146969ae0555fbdac6c09ad181e36713`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 7.1 MB (7095337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914efbcfb36c85f1b1760dee36099b7720553fb01ec215c7b09855ad031d6858`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8ac32f57d210d77d68370d81043a7f86de191c684881ce64d0be9ed55a0e95`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd5c18176080196276f1b919d0231ef5ad4ca31e02b42bfe7f5a4d063d6e77e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0cb06bf8954b1651bf059443b7750d1911c81b26f4378da6d57d7f44b7a3a1`

```dockerfile
```

-	Layers:
	-	`sha256:01cfd2a76b0c969efa0111da1832865901e82dc9c621e8925addb0a6f66a5d9e`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:f929cfeb4003dc87320f24845f8c9ad684de4325e98d42a120aa2c8950655561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10328492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fae8844227c5356b34e96d7a90150736fdc531537f824e27b30f58889616c82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dcf23d7efc89d17b498c78d441faec9a8736e5b9a71048711e3de8759947ff`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 6.8 MB (6832721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271beceb7b80ff4401be8c03b6141aed4af92b254c1d50f0a83d89d657a28418`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69a1d103accac2305805160c2e13a46c1ea2d25904360309307c3d275f26944`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd716127cb50b44186b5c5645483b4dc0f1420e5fd231915a30470f093050697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37308bb91429ecb4131c1e9f9d3e2cf38c48eeb9d29dd20e41931a2a30db8d2e`

```dockerfile
```

-	Layers:
	-	`sha256:bbd4f0a66ac51ed480a642a53ed4096825547305098eb2e332e45d30cfdb2430`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:357056ba12f7eb29e420a13a55db3d81396c9cd2674c254c8da90a5382d0b41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10033369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2cb345723e0d3cc3e101d5444cebfb5ca8ecd0e1dd570b5b02ec4b9972825a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c898ef7e98ee408d97e635c0dbf582f4b41a871230889939cd271e113cdf5dfc`  
		Last Modified: Thu, 30 Jul 2026 19:47:46 GMT  
		Size: 6.8 MB (6822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27544e3fe36b0a91c2002a56360ea0070ae0d9fa4423fbd1f869cda8783807ef`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf91bf14cdc9b6d656aeabddfde49e87b777ab7491f651f7033b2fc707adbbe`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:89ed264b89aa172ba93b5987407b742fc20a47db6e76e60a9875e374f5d79d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a108c632c30c2660efc6b35c5808757e8e0bbc36ae527567c01e546d1b1a87`

```dockerfile
```

-	Layers:
	-	`sha256:27685a98c6462b31b1c6e715540b53ec6c688f9b9300fd9fb3b64137c9883708`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 14.3 KB (14288 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:815e8b0d81aafeedebac533e8e81147f261c141b2279b07957411162faff7fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1288377007a7aec4ba9968a5b6a97be0b80b9018195344d8304f01c7d63eaa70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d60b08616a1e5957c0552b6704aac56a166a51fcc8f457a388b734dbdf17be7`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 6.5 MB (6489513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc874ab1c284c5a287f5d3fe73de7768e6b2a9fa1db7d0f293a23a4d960ca0e`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b65f32b04b457346eb1fbfd0dc9858aad57236016b9db2c2e9e0b6f70c1ab34`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d505746c61c4cd3c744773bcac62624fac111e9ec2dc74c54e035db3a51ed454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8b5b7a0a00dd6d7eb09bf4994d70aa6917f9a4832a529427a0347029f8caf9`

```dockerfile
```

-	Layers:
	-	`sha256:89d60eb8bb68454dcfa76614c765739d65bd3390668e0f7fb173e3683d13836f`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:78af967442c7071df70c546d0fe32715bdfbb572100c690ce96b0f3a0ff49ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10272423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0ed1561bab9594c57eb6012900992c338d6e892b3f587d875d56d5a1b8e4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2a007e4ea900f77dcb895f7a7813c3283ac6bcb2f6693a9cc645e58477479`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.6 MB (6552221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a939d2e85f8ebf64360df8dd1e1cbf9eaa48f79579182aedd0330f0761db46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620e88939d426912596f098a89ba8bc4b57ed7da0bd4a6f2a5636e115838eeb8`

```dockerfile
```

-	Layers:
	-	`sha256:7dfe98b939fc105ed460317fa212eee267e0262bef62f1e8b1af1903f2918d58`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:86e6503bcebae8f2b094b7c6bdb1afe40f6ca2a50269f3d0cc195ee37c90d87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10583594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44305ec4cee0cbf33144676d36deed11ab0619b3202482349dd0ff33c85b4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76f0838e4bfd7d030c8a225a877cd6f162434e0df8d0466b2f97fcba9f458dd`  
		Last Modified: Thu, 30 Jul 2026 20:00:52 GMT  
		Size: 6.9 MB (6945538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48b8bfdaa7c30f7117cb0ed2437cf54431ef41257dbff90c9ed2029a311997b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ea6073b08932137416457927ed1060fe5441556f05befc67e4432e0a89da7b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:ad709588f2182e3e079651eab825582a8102c13d54e423be18632369332b95bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950fa7443ca8503c8dcc765f0ac76d6fbd376ddef4a162240af783336202ac2`

```dockerfile
```

-	Layers:
	-	`sha256:127ed549a450147b6d6fa5478fad794c7b036f1ce21aeeda0cbd99cd67937796`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-linux`

```console
$ docker pull nats@sha256:dd5152d5de4ce2a22b970cc553dd5b45ac9533bdddc440a79f970ac489ce2fa5
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
$ docker pull nats@sha256:f672e5c5a675c7320dab47ed320270b702a31da2788f520c0f650c790b18e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e6671e68103f1931e61a17c8f4bdbb4437d7d80d89d301e6383f0e92ba3162`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:15 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:15 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:15 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:589952464ceaad711cb262c23c8dfc4cd9f9f55715e088fdc4fd126faaccea8d`  
		Last Modified: Thu, 30 Jul 2026 14:08:37 GMT  
		Size: 6.7 MB (6683365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1026424672acb149ac1ac4ae3d2221af08d6e03dec79093502bc0c4fb725a`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0aabccc0fdadc3cc5d779d9a3067f71ecd7b879fdbcff02001572105b27bd98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00502487770bbca409b5f1823c8eabc38bd02a0d7da87e273aa3ad18b9ccccf`

```dockerfile
```

-	Layers:
	-	`sha256:72940527c43f0642534941a361ddb3d108df6fbcc1cbdbfc4e54291787081524`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:1a744a4ef582a9736c387a4aba6e3185dc8e8c2b58c89177f16df93054d0f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bb69a6daec45760a65800c0152f349379e606e29da1a94a21482954aeb32c3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:44 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:26e54cab80c9e738091e0e3fe82c185c216834bedea01372ad7df3b3dc868618`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.4 MB (6422521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58494b7a3fe04b97641d37edf1e11409346dfedae8a9a1087cb7a487549b09ce`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8775d8c9af2de56f524e7b454c48dce41f60c36173d024f7488f19d4e4789bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc0960b0b9c7840511664ae660c1cdd9462059932bb44c9588de5f9d62223b9`

```dockerfile
```

-	Layers:
	-	`sha256:d8120f81c5b0c0404a20a045f730804ace6a9e3a8da6ebef889dd0b1edb51c23`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:f7ca32f50d387f855da003c54e32163c32507a20157ea155f410c77f025d0ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6414409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7199196e340bc5a922007c3373f2e854df17463fe69287c39239175d273f8172`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e653d8113269ee233984898cbc14a6c4dbc22166a9e44381a8a093e91fcfabbc`  
		Last Modified: Thu, 30 Jul 2026 14:08:36 GMT  
		Size: 6.4 MB (6413899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb541c002db4d3cdcd8134a54d48ec0c2228aed913351fb1db9e8804a19226`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cf823cbb6e48e6717d31c32490578c1e1e35aaf23df1db5eda6f93cc531ce4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd0ce86353acb55ae376169da4ba5442d8fefcd211097811d11a2745da3526`

```dockerfile
```

-	Layers:
	-	`sha256:85558210757c16208e22a05041e12bf956f406443751b2dd1ab5445eb75e4082`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:83548cd4da1fe4e2972c503630b6263cce176a91c2c629ed99985c35f78ed9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6079114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4da189920173981a32b6bfebf26e5e4e7e889beb0aaac341bb3015addfaa68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cbd34d9ad9c2fc08757274a724f3402b49fed97449717dc1766f510ea24e9d49`  
		Last Modified: Thu, 30 Jul 2026 14:08:38 GMT  
		Size: 6.1 MB (6078604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c9f1fc92c94146e543a5ddb8d35f7ceb48436c04dc59a2bb1078817eaa2fa`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1965a61259c1a637f2784839bec0ce79970fff6ea605319fa1aca7334c26735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a174a76724620da61d3302ca7d7d69b553a68a98c0dacf2505ff09d4fffab30`

```dockerfile
```

-	Layers:
	-	`sha256:8b37164f190603ef9bce9995c5c3738de26715b1a13bb41b2fdf07a69e49d197`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:969f84c8861861c0283fb98a9dfe991de5eb99e682991a471a643ab4bd31b3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5099b45247a87dc0ee98272151641cb43d439bb3bb46746d86fd30c4fd8c5a87`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bb682b2c5cf44200cbae2d2470d15f8f0f97980dcdc88294aa01ce88721a30f5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.1 MB (6141100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd656007e4832c82257e5aa0aff94beb01a6762556681b566bcdc71f5051d55`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5b60a2c054b6ce01c5e8a38e8169e7c6eaf0a053b2263a9aef2fa4403b57852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c62c3e197193308019691bf19556adea2dd388afdc7a8a19431c75e165166b`

```dockerfile
```

-	Layers:
	-	`sha256:caf8fa564c20f80661a2664046a6424e3ec578220735764424ddff1c5c97e74d`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-linux` - linux; s390x

```console
$ docker pull nats@sha256:0c63f036d246a2e741c3ad44055e4c5af99d07c779a18794b5ca34b2075d6ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a8bf7310f73f16d7e01e9030534062b96c495b76db35515b4d651b042fa6`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:407c746fe0ad8a17f7a55811eda33f7a19b30d62fdcd07f02a485772b056afa5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.5 MB (6532717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6cc41eb49d6c037e4441ac879fe3c2d5888d5be52348b50a0585d6c04897c`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9a1472c1e7aa10c293b2f83e5a266868008236d5fcae09a2cb34f3adfe079b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e8eeffac085a7b4bb28efcd45c8c9b3b84262792d2462a5650a4511069d8a`

```dockerfile
```

-	Layers:
	-	`sha256:ba71c36f2752069c1a599e57c9fbcc47ea560bc21b02fbbe2962b0e5b5d01658`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-nanoserver`

```console
$ docker pull nats@sha256:8031627775576a3a01e1ea415f47943b2be94ae1aa0fbc85cfacf915e06ba54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:0e37701a851f7ef6b697860a270aa7b941eb53c083562f2661f252da342ffd90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130984897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a9a33165c4d1448334c6b35fff5106eee0e70afbdc5b680318dadcf1d0a45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:69ed8f5e3db352a33cd0da9b6409c80134a6b567e5e280ef88655b33e59be8b9 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2597b07a0bff31c0fa0cc9082156903d9008a866247268262041a99e77956f7`  
		Last Modified: Thu, 30 Jul 2026 21:14:02 GMT  
		Size: 6.9 MB (6875824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff0c87978d61aaba26006fd4fe629eab3c9c5efaae914c9e36f37505aecf40`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270e455f3df843f23e9b70fc756567ec96ac9d516310bdda2f020c4162e29d7b`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567b30c5950061f0ad3fe2a4abc0d9d58a5f62e65259a8bf5186753db70747f3`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3903d42df6bab83381c468caf0d724520ecd8345bad9b6afbb5983e8a94f33`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:8031627775576a3a01e1ea415f47943b2be94ae1aa0fbc85cfacf915e06ba54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:0e37701a851f7ef6b697860a270aa7b941eb53c083562f2661f252da342ffd90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130984897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a9a33165c4d1448334c6b35fff5106eee0e70afbdc5b680318dadcf1d0a45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:69ed8f5e3db352a33cd0da9b6409c80134a6b567e5e280ef88655b33e59be8b9 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2597b07a0bff31c0fa0cc9082156903d9008a866247268262041a99e77956f7`  
		Last Modified: Thu, 30 Jul 2026 21:14:02 GMT  
		Size: 6.9 MB (6875824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff0c87978d61aaba26006fd4fe629eab3c9c5efaae914c9e36f37505aecf40`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270e455f3df843f23e9b70fc756567ec96ac9d516310bdda2f020c4162e29d7b`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567b30c5950061f0ad3fe2a4abc0d9d58a5f62e65259a8bf5186753db70747f3`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3903d42df6bab83381c468caf0d724520ecd8345bad9b6afbb5983e8a94f33`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-scratch`

```console
$ docker pull nats@sha256:dd5152d5de4ce2a22b970cc553dd5b45ac9533bdddc440a79f970ac489ce2fa5
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
$ docker pull nats@sha256:f672e5c5a675c7320dab47ed320270b702a31da2788f520c0f650c790b18e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e6671e68103f1931e61a17c8f4bdbb4437d7d80d89d301e6383f0e92ba3162`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:15 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:15 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:15 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:589952464ceaad711cb262c23c8dfc4cd9f9f55715e088fdc4fd126faaccea8d`  
		Last Modified: Thu, 30 Jul 2026 14:08:37 GMT  
		Size: 6.7 MB (6683365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1026424672acb149ac1ac4ae3d2221af08d6e03dec79093502bc0c4fb725a`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0aabccc0fdadc3cc5d779d9a3067f71ecd7b879fdbcff02001572105b27bd98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00502487770bbca409b5f1823c8eabc38bd02a0d7da87e273aa3ad18b9ccccf`

```dockerfile
```

-	Layers:
	-	`sha256:72940527c43f0642534941a361ddb3d108df6fbcc1cbdbfc4e54291787081524`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:1a744a4ef582a9736c387a4aba6e3185dc8e8c2b58c89177f16df93054d0f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bb69a6daec45760a65800c0152f349379e606e29da1a94a21482954aeb32c3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:44 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:26e54cab80c9e738091e0e3fe82c185c216834bedea01372ad7df3b3dc868618`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.4 MB (6422521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58494b7a3fe04b97641d37edf1e11409346dfedae8a9a1087cb7a487549b09ce`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8775d8c9af2de56f524e7b454c48dce41f60c36173d024f7488f19d4e4789bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc0960b0b9c7840511664ae660c1cdd9462059932bb44c9588de5f9d62223b9`

```dockerfile
```

-	Layers:
	-	`sha256:d8120f81c5b0c0404a20a045f730804ace6a9e3a8da6ebef889dd0b1edb51c23`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:f7ca32f50d387f855da003c54e32163c32507a20157ea155f410c77f025d0ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6414409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7199196e340bc5a922007c3373f2e854df17463fe69287c39239175d273f8172`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e653d8113269ee233984898cbc14a6c4dbc22166a9e44381a8a093e91fcfabbc`  
		Last Modified: Thu, 30 Jul 2026 14:08:36 GMT  
		Size: 6.4 MB (6413899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb541c002db4d3cdcd8134a54d48ec0c2228aed913351fb1db9e8804a19226`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cf823cbb6e48e6717d31c32490578c1e1e35aaf23df1db5eda6f93cc531ce4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd0ce86353acb55ae376169da4ba5442d8fefcd211097811d11a2745da3526`

```dockerfile
```

-	Layers:
	-	`sha256:85558210757c16208e22a05041e12bf956f406443751b2dd1ab5445eb75e4082`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:83548cd4da1fe4e2972c503630b6263cce176a91c2c629ed99985c35f78ed9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6079114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4da189920173981a32b6bfebf26e5e4e7e889beb0aaac341bb3015addfaa68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cbd34d9ad9c2fc08757274a724f3402b49fed97449717dc1766f510ea24e9d49`  
		Last Modified: Thu, 30 Jul 2026 14:08:38 GMT  
		Size: 6.1 MB (6078604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c9f1fc92c94146e543a5ddb8d35f7ceb48436c04dc59a2bb1078817eaa2fa`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1965a61259c1a637f2784839bec0ce79970fff6ea605319fa1aca7334c26735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a174a76724620da61d3302ca7d7d69b553a68a98c0dacf2505ff09d4fffab30`

```dockerfile
```

-	Layers:
	-	`sha256:8b37164f190603ef9bce9995c5c3738de26715b1a13bb41b2fdf07a69e49d197`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:969f84c8861861c0283fb98a9dfe991de5eb99e682991a471a643ab4bd31b3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5099b45247a87dc0ee98272151641cb43d439bb3bb46746d86fd30c4fd8c5a87`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bb682b2c5cf44200cbae2d2470d15f8f0f97980dcdc88294aa01ce88721a30f5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.1 MB (6141100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd656007e4832c82257e5aa0aff94beb01a6762556681b566bcdc71f5051d55`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5b60a2c054b6ce01c5e8a38e8169e7c6eaf0a053b2263a9aef2fa4403b57852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c62c3e197193308019691bf19556adea2dd388afdc7a8a19431c75e165166b`

```dockerfile
```

-	Layers:
	-	`sha256:caf8fa564c20f80661a2664046a6424e3ec578220735764424ddff1c5c97e74d`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12-scratch` - linux; s390x

```console
$ docker pull nats@sha256:0c63f036d246a2e741c3ad44055e4c5af99d07c779a18794b5ca34b2075d6ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a8bf7310f73f16d7e01e9030534062b96c495b76db35515b4d651b042fa6`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:407c746fe0ad8a17f7a55811eda33f7a19b30d62fdcd07f02a485772b056afa5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.5 MB (6532717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6cc41eb49d6c037e4441ac879fe3c2d5888d5be52348b50a0585d6c04897c`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9a1472c1e7aa10c293b2f83e5a266868008236d5fcae09a2cb34f3adfe079b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e8eeffac085a7b4bb28efcd45c8c9b3b84262792d2462a5650a4511069d8a`

```dockerfile
```

-	Layers:
	-	`sha256:ba71c36f2752069c1a599e57c9fbcc47ea560bc21b02fbbe2962b0e5b5d01658`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12-windowsservercore`

```console
$ docker pull nats@sha256:e6a86d8ba6ae53f713e32a665296c982f7fed622f14c63b92289ce076e4f1667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:daae5a9e59fd4dd1a6ba6135ac26d7554f656ec58c9e7ed604ede44371145795
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165291948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71def6df75a80d5b2a173a0d82d27e79c85aa1c5da53d15c6b608ac95774ba0e`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 20:08:46 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:08:48 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:08:49 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.14/nats-server-v2.12.14-windows-amd64.zip
# Thu, 30 Jul 2026 20:08:50 GMT
ENV NATS_SERVER_SHASUM=e47765d49e4b768de0a583906dbbbd9a8475f21c5ff8ac28d2110f5f2197148c
# Thu, 30 Jul 2026 20:08:55 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 20:09:07 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 20:09:08 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 20:09:10 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a805896a72af967839c62dfdde5cf3ffb588076c52d389dda4b40cb07cc8cd`  
		Last Modified: Thu, 30 Jul 2026 20:09:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd07c2019407128477709f9c01a410a7344aca48a298838fe31cb537ad633ba`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1592b69267477cc07beb16fb3d2d3d4bbfa53e6d89321a2e009237c8b0c78`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a15f1980d961cdfeb284b9669327e53c625fd1e0068a01987a21b6ff33704`  
		Last Modified: Thu, 30 Jul 2026 20:09:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48938227cbd65b84a25b340a7249d508f068b232465602901e5dfbe4fab7ac05`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 490.6 KB (490576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04eb60cd07d7e31e75c9d8ba4264fa91c4b7ebb581f579efbbeeab9bffe78d77`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 7.2 MB (7234627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5626ea73f314914430d499d3a1f73937a3245d523c10b805beacea94eae5793`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a85906ce37f0fe354f55f6e337de633ce55859223f253e2ed30e7f60aa06714`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66f1928435823793cf39eca89c15f7d094f9cadbab83f38db11bef6320a10c1`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a2a9f5ead9c37ab65518013980a2a0a750a37dd29744e85e73238249e4a6c`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:e6a86d8ba6ae53f713e32a665296c982f7fed622f14c63b92289ce076e4f1667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:daae5a9e59fd4dd1a6ba6135ac26d7554f656ec58c9e7ed604ede44371145795
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165291948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71def6df75a80d5b2a173a0d82d27e79c85aa1c5da53d15c6b608ac95774ba0e`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 20:08:46 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:08:48 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:08:49 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.14/nats-server-v2.12.14-windows-amd64.zip
# Thu, 30 Jul 2026 20:08:50 GMT
ENV NATS_SERVER_SHASUM=e47765d49e4b768de0a583906dbbbd9a8475f21c5ff8ac28d2110f5f2197148c
# Thu, 30 Jul 2026 20:08:55 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 20:09:07 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 20:09:08 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 20:09:10 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a805896a72af967839c62dfdde5cf3ffb588076c52d389dda4b40cb07cc8cd`  
		Last Modified: Thu, 30 Jul 2026 20:09:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd07c2019407128477709f9c01a410a7344aca48a298838fe31cb537ad633ba`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1592b69267477cc07beb16fb3d2d3d4bbfa53e6d89321a2e009237c8b0c78`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a15f1980d961cdfeb284b9669327e53c625fd1e0068a01987a21b6ff33704`  
		Last Modified: Thu, 30 Jul 2026 20:09:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48938227cbd65b84a25b340a7249d508f068b232465602901e5dfbe4fab7ac05`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 490.6 KB (490576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04eb60cd07d7e31e75c9d8ba4264fa91c4b7ebb581f579efbbeeab9bffe78d77`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 7.2 MB (7234627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5626ea73f314914430d499d3a1f73937a3245d523c10b805beacea94eae5793`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a85906ce37f0fe354f55f6e337de633ce55859223f253e2ed30e7f60aa06714`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66f1928435823793cf39eca89c15f7d094f9cadbab83f38db11bef6320a10c1`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a2a9f5ead9c37ab65518013980a2a0a750a37dd29744e85e73238249e4a6c`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.14`

```console
$ docker pull nats@sha256:8d4a33b617f0bb535fd6abd2ed251bb1afabb0cb656c97be0adfb378e6e7591a
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

### `nats:2.12.14` - linux; amd64

```console
$ docker pull nats@sha256:f672e5c5a675c7320dab47ed320270b702a31da2788f520c0f650c790b18e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e6671e68103f1931e61a17c8f4bdbb4437d7d80d89d301e6383f0e92ba3162`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:15 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:15 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:15 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:589952464ceaad711cb262c23c8dfc4cd9f9f55715e088fdc4fd126faaccea8d`  
		Last Modified: Thu, 30 Jul 2026 14:08:37 GMT  
		Size: 6.7 MB (6683365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1026424672acb149ac1ac4ae3d2221af08d6e03dec79093502bc0c4fb725a`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14` - unknown; unknown

```console
$ docker pull nats@sha256:0aabccc0fdadc3cc5d779d9a3067f71ecd7b879fdbcff02001572105b27bd98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00502487770bbca409b5f1823c8eabc38bd02a0d7da87e273aa3ad18b9ccccf`

```dockerfile
```

-	Layers:
	-	`sha256:72940527c43f0642534941a361ddb3d108df6fbcc1cbdbfc4e54291787081524`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:1a744a4ef582a9736c387a4aba6e3185dc8e8c2b58c89177f16df93054d0f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bb69a6daec45760a65800c0152f349379e606e29da1a94a21482954aeb32c3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:44 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:26e54cab80c9e738091e0e3fe82c185c216834bedea01372ad7df3b3dc868618`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.4 MB (6422521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58494b7a3fe04b97641d37edf1e11409346dfedae8a9a1087cb7a487549b09ce`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14` - unknown; unknown

```console
$ docker pull nats@sha256:8775d8c9af2de56f524e7b454c48dce41f60c36173d024f7488f19d4e4789bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc0960b0b9c7840511664ae660c1cdd9462059932bb44c9588de5f9d62223b9`

```dockerfile
```

-	Layers:
	-	`sha256:d8120f81c5b0c0404a20a045f730804ace6a9e3a8da6ebef889dd0b1edb51c23`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:f7ca32f50d387f855da003c54e32163c32507a20157ea155f410c77f025d0ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6414409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7199196e340bc5a922007c3373f2e854df17463fe69287c39239175d273f8172`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e653d8113269ee233984898cbc14a6c4dbc22166a9e44381a8a093e91fcfabbc`  
		Last Modified: Thu, 30 Jul 2026 14:08:36 GMT  
		Size: 6.4 MB (6413899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb541c002db4d3cdcd8134a54d48ec0c2228aed913351fb1db9e8804a19226`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14` - unknown; unknown

```console
$ docker pull nats@sha256:cf823cbb6e48e6717d31c32490578c1e1e35aaf23df1db5eda6f93cc531ce4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd0ce86353acb55ae376169da4ba5442d8fefcd211097811d11a2745da3526`

```dockerfile
```

-	Layers:
	-	`sha256:85558210757c16208e22a05041e12bf956f406443751b2dd1ab5445eb75e4082`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:83548cd4da1fe4e2972c503630b6263cce176a91c2c629ed99985c35f78ed9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6079114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4da189920173981a32b6bfebf26e5e4e7e889beb0aaac341bb3015addfaa68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cbd34d9ad9c2fc08757274a724f3402b49fed97449717dc1766f510ea24e9d49`  
		Last Modified: Thu, 30 Jul 2026 14:08:38 GMT  
		Size: 6.1 MB (6078604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c9f1fc92c94146e543a5ddb8d35f7ceb48436c04dc59a2bb1078817eaa2fa`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14` - unknown; unknown

```console
$ docker pull nats@sha256:1965a61259c1a637f2784839bec0ce79970fff6ea605319fa1aca7334c26735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a174a76724620da61d3302ca7d7d69b553a68a98c0dacf2505ff09d4fffab30`

```dockerfile
```

-	Layers:
	-	`sha256:8b37164f190603ef9bce9995c5c3738de26715b1a13bb41b2fdf07a69e49d197`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14` - linux; ppc64le

```console
$ docker pull nats@sha256:969f84c8861861c0283fb98a9dfe991de5eb99e682991a471a643ab4bd31b3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5099b45247a87dc0ee98272151641cb43d439bb3bb46746d86fd30c4fd8c5a87`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bb682b2c5cf44200cbae2d2470d15f8f0f97980dcdc88294aa01ce88721a30f5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.1 MB (6141100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd656007e4832c82257e5aa0aff94beb01a6762556681b566bcdc71f5051d55`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14` - unknown; unknown

```console
$ docker pull nats@sha256:5b60a2c054b6ce01c5e8a38e8169e7c6eaf0a053b2263a9aef2fa4403b57852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c62c3e197193308019691bf19556adea2dd388afdc7a8a19431c75e165166b`

```dockerfile
```

-	Layers:
	-	`sha256:caf8fa564c20f80661a2664046a6424e3ec578220735764424ddff1c5c97e74d`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14` - linux; s390x

```console
$ docker pull nats@sha256:0c63f036d246a2e741c3ad44055e4c5af99d07c779a18794b5ca34b2075d6ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a8bf7310f73f16d7e01e9030534062b96c495b76db35515b4d651b042fa6`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:407c746fe0ad8a17f7a55811eda33f7a19b30d62fdcd07f02a485772b056afa5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.5 MB (6532717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6cc41eb49d6c037e4441ac879fe3c2d5888d5be52348b50a0585d6c04897c`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14` - unknown; unknown

```console
$ docker pull nats@sha256:9a1472c1e7aa10c293b2f83e5a266868008236d5fcae09a2cb34f3adfe079b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e8eeffac085a7b4bb28efcd45c8c9b3b84262792d2462a5650a4511069d8a`

```dockerfile
```

-	Layers:
	-	`sha256:ba71c36f2752069c1a599e57c9fbcc47ea560bc21b02fbbe2962b0e5b5d01658`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:0e37701a851f7ef6b697860a270aa7b941eb53c083562f2661f252da342ffd90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130984897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a9a33165c4d1448334c6b35fff5106eee0e70afbdc5b680318dadcf1d0a45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:69ed8f5e3db352a33cd0da9b6409c80134a6b567e5e280ef88655b33e59be8b9 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2597b07a0bff31c0fa0cc9082156903d9008a866247268262041a99e77956f7`  
		Last Modified: Thu, 30 Jul 2026 21:14:02 GMT  
		Size: 6.9 MB (6875824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff0c87978d61aaba26006fd4fe629eab3c9c5efaae914c9e36f37505aecf40`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270e455f3df843f23e9b70fc756567ec96ac9d516310bdda2f020c4162e29d7b`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567b30c5950061f0ad3fe2a4abc0d9d58a5f62e65259a8bf5186753db70747f3`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3903d42df6bab83381c468caf0d724520ecd8345bad9b6afbb5983e8a94f33`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.14-alpine`

```console
$ docker pull nats@sha256:7cef1bd3fed6034e95cf6e6bc9c28c5afa6dc58e9fb778dd7924a1ac62569f2d
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

### `nats:2.12.14-alpine` - linux; amd64

```console
$ docker pull nats@sha256:24d8928f4e1b5d7372eaf4ebe2fe19758f06154f81a4a646e02c966ec4ccedfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10883901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42e55ec4f46d59447526bad7d1e83f8b3eb4adf09fa49b99ebe7355be6e884c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856f8399a42761ddcb33ef31f01210bf146969ae0555fbdac6c09ad181e36713`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 7.1 MB (7095337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914efbcfb36c85f1b1760dee36099b7720553fb01ec215c7b09855ad031d6858`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8ac32f57d210d77d68370d81043a7f86de191c684881ce64d0be9ed55a0e95`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd5c18176080196276f1b919d0231ef5ad4ca31e02b42bfe7f5a4d063d6e77e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0cb06bf8954b1651bf059443b7750d1911c81b26f4378da6d57d7f44b7a3a1`

```dockerfile
```

-	Layers:
	-	`sha256:01cfd2a76b0c969efa0111da1832865901e82dc9c621e8925addb0a6f66a5d9e`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:f929cfeb4003dc87320f24845f8c9ad684de4325e98d42a120aa2c8950655561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10328492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fae8844227c5356b34e96d7a90150736fdc531537f824e27b30f58889616c82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dcf23d7efc89d17b498c78d441faec9a8736e5b9a71048711e3de8759947ff`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 6.8 MB (6832721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271beceb7b80ff4401be8c03b6141aed4af92b254c1d50f0a83d89d657a28418`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69a1d103accac2305805160c2e13a46c1ea2d25904360309307c3d275f26944`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:bd716127cb50b44186b5c5645483b4dc0f1420e5fd231915a30470f093050697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37308bb91429ecb4131c1e9f9d3e2cf38c48eeb9d29dd20e41931a2a30db8d2e`

```dockerfile
```

-	Layers:
	-	`sha256:bbd4f0a66ac51ed480a642a53ed4096825547305098eb2e332e45d30cfdb2430`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:357056ba12f7eb29e420a13a55db3d81396c9cd2674c254c8da90a5382d0b41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10033369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2cb345723e0d3cc3e101d5444cebfb5ca8ecd0e1dd570b5b02ec4b9972825a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c898ef7e98ee408d97e635c0dbf582f4b41a871230889939cd271e113cdf5dfc`  
		Last Modified: Thu, 30 Jul 2026 19:47:46 GMT  
		Size: 6.8 MB (6822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27544e3fe36b0a91c2002a56360ea0070ae0d9fa4423fbd1f869cda8783807ef`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf91bf14cdc9b6d656aeabddfde49e87b777ab7491f651f7033b2fc707adbbe`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:89ed264b89aa172ba93b5987407b742fc20a47db6e76e60a9875e374f5d79d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a108c632c30c2660efc6b35c5808757e8e0bbc36ae527567c01e546d1b1a87`

```dockerfile
```

-	Layers:
	-	`sha256:27685a98c6462b31b1c6e715540b53ec6c688f9b9300fd9fb3b64137c9883708`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 14.3 KB (14288 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:815e8b0d81aafeedebac533e8e81147f261c141b2279b07957411162faff7fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1288377007a7aec4ba9968a5b6a97be0b80b9018195344d8304f01c7d63eaa70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d60b08616a1e5957c0552b6704aac56a166a51fcc8f457a388b734dbdf17be7`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 6.5 MB (6489513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc874ab1c284c5a287f5d3fe73de7768e6b2a9fa1db7d0f293a23a4d960ca0e`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b65f32b04b457346eb1fbfd0dc9858aad57236016b9db2c2e9e0b6f70c1ab34`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:d505746c61c4cd3c744773bcac62624fac111e9ec2dc74c54e035db3a51ed454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8b5b7a0a00dd6d7eb09bf4994d70aa6917f9a4832a529427a0347029f8caf9`

```dockerfile
```

-	Layers:
	-	`sha256:89d60eb8bb68454dcfa76614c765739d65bd3390668e0f7fb173e3683d13836f`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:78af967442c7071df70c546d0fe32715bdfbb572100c690ce96b0f3a0ff49ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10272423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0ed1561bab9594c57eb6012900992c338d6e892b3f587d875d56d5a1b8e4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2a007e4ea900f77dcb895f7a7813c3283ac6bcb2f6693a9cc645e58477479`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.6 MB (6552221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a939d2e85f8ebf64360df8dd1e1cbf9eaa48f79579182aedd0330f0761db46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620e88939d426912596f098a89ba8bc4b57ed7da0bd4a6f2a5636e115838eeb8`

```dockerfile
```

-	Layers:
	-	`sha256:7dfe98b939fc105ed460317fa212eee267e0262bef62f1e8b1af1903f2918d58`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:86e6503bcebae8f2b094b7c6bdb1afe40f6ca2a50269f3d0cc195ee37c90d87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10583594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44305ec4cee0cbf33144676d36deed11ab0619b3202482349dd0ff33c85b4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76f0838e4bfd7d030c8a225a877cd6f162434e0df8d0466b2f97fcba9f458dd`  
		Last Modified: Thu, 30 Jul 2026 20:00:52 GMT  
		Size: 6.9 MB (6945538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48b8bfdaa7c30f7117cb0ed2437cf54431ef41257dbff90c9ed2029a311997b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ea6073b08932137416457927ed1060fe5441556f05befc67e4432e0a89da7b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:ad709588f2182e3e079651eab825582a8102c13d54e423be18632369332b95bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950fa7443ca8503c8dcc765f0ac76d6fbd376ddef4a162240af783336202ac2`

```dockerfile
```

-	Layers:
	-	`sha256:127ed549a450147b6d6fa5478fad794c7b036f1ce21aeeda0cbd99cd67937796`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.14-alpine3.22`

```console
$ docker pull nats@sha256:7cef1bd3fed6034e95cf6e6bc9c28c5afa6dc58e9fb778dd7924a1ac62569f2d
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

### `nats:2.12.14-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:24d8928f4e1b5d7372eaf4ebe2fe19758f06154f81a4a646e02c966ec4ccedfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10883901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42e55ec4f46d59447526bad7d1e83f8b3eb4adf09fa49b99ebe7355be6e884c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:20 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:20 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:20 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856f8399a42761ddcb33ef31f01210bf146969ae0555fbdac6c09ad181e36713`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 7.1 MB (7095337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914efbcfb36c85f1b1760dee36099b7720553fb01ec215c7b09855ad031d6858`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8ac32f57d210d77d68370d81043a7f86de191c684881ce64d0be9ed55a0e95`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd5c18176080196276f1b919d0231ef5ad4ca31e02b42bfe7f5a4d063d6e77e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0cb06bf8954b1651bf059443b7750d1911c81b26f4378da6d57d7f44b7a3a1`

```dockerfile
```

-	Layers:
	-	`sha256:01cfd2a76b0c969efa0111da1832865901e82dc9c621e8925addb0a6f66a5d9e`  
		Last Modified: Thu, 30 Jul 2026 19:46:24 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:f929cfeb4003dc87320f24845f8c9ad684de4325e98d42a120aa2c8950655561
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10328492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fae8844227c5356b34e96d7a90150736fdc531537f824e27b30f58889616c82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:48:12 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:12 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:12 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dcf23d7efc89d17b498c78d441faec9a8736e5b9a71048711e3de8759947ff`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 6.8 MB (6832721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271beceb7b80ff4401be8c03b6141aed4af92b254c1d50f0a83d89d657a28418`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69a1d103accac2305805160c2e13a46c1ea2d25904360309307c3d275f26944`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:bd716127cb50b44186b5c5645483b4dc0f1420e5fd231915a30470f093050697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37308bb91429ecb4131c1e9f9d3e2cf38c48eeb9d29dd20e41931a2a30db8d2e`

```dockerfile
```

-	Layers:
	-	`sha256:bbd4f0a66ac51ed480a642a53ed4096825547305098eb2e332e45d30cfdb2430`  
		Last Modified: Thu, 30 Jul 2026 19:48:16 GMT  
		Size: 14.3 KB (14289 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:357056ba12f7eb29e420a13a55db3d81396c9cd2674c254c8da90a5382d0b41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (10033369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2cb345723e0d3cc3e101d5444cebfb5ca8ecd0e1dd570b5b02ec4b9972825a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:47:41 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:41 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c898ef7e98ee408d97e635c0dbf582f4b41a871230889939cd271e113cdf5dfc`  
		Last Modified: Thu, 30 Jul 2026 19:47:46 GMT  
		Size: 6.8 MB (6822785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27544e3fe36b0a91c2002a56360ea0070ae0d9fa4423fbd1f869cda8783807ef`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf91bf14cdc9b6d656aeabddfde49e87b777ab7491f651f7033b2fc707adbbe`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 411.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:89ed264b89aa172ba93b5987407b742fc20a47db6e76e60a9875e374f5d79d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a108c632c30c2660efc6b35c5808757e8e0bbc36ae527567c01e546d1b1a87`

```dockerfile
```

-	Layers:
	-	`sha256:27685a98c6462b31b1c6e715540b53ec6c688f9b9300fd9fb3b64137c9883708`  
		Last Modified: Thu, 30 Jul 2026 19:47:45 GMT  
		Size: 14.3 KB (14288 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:815e8b0d81aafeedebac533e8e81147f261c141b2279b07957411162faff7fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10610970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1288377007a7aec4ba9968a5b6a97be0b80b9018195344d8304f01c7d63eaa70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:54:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d60b08616a1e5957c0552b6704aac56a166a51fcc8f457a388b734dbdf17be7`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 6.5 MB (6489513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc874ab1c284c5a287f5d3fe73de7768e6b2a9fa1db7d0f293a23a4d960ca0e`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b65f32b04b457346eb1fbfd0dc9858aad57236016b9db2c2e9e0b6f70c1ab34`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:d505746c61c4cd3c744773bcac62624fac111e9ec2dc74c54e035db3a51ed454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8b5b7a0a00dd6d7eb09bf4994d70aa6917f9a4832a529427a0347029f8caf9`

```dockerfile
```

-	Layers:
	-	`sha256:89d60eb8bb68454dcfa76614c765739d65bd3390668e0f7fb173e3683d13836f`  
		Last Modified: Thu, 30 Jul 2026 19:54:22 GMT  
		Size: 14.3 KB (14313 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:78af967442c7071df70c546d0fe32715bdfbb572100c690ce96b0f3a0ff49ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10272423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0ed1561bab9594c57eb6012900992c338d6e892b3f587d875d56d5a1b8e4df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb2a007e4ea900f77dcb895f7a7813c3283ac6bcb2f6693a9cc645e58477479`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.6 MB (6552221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a939d2e85f8ebf64360df8dd1e1cbf9eaa48f79579182aedd0330f0761db46f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 KB (14253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620e88939d426912596f098a89ba8bc4b57ed7da0bd4a6f2a5636e115838eeb8`

```dockerfile
```

-	Layers:
	-	`sha256:7dfe98b939fc105ed460317fa212eee267e0262bef62f1e8b1af1903f2918d58`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 14.3 KB (14253 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:86e6503bcebae8f2b094b7c6bdb1afe40f6ca2a50269f3d0cc195ee37c90d87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 MB (10583594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44305ec4cee0cbf33144676d36deed11ab0619b3202482349dd0ff33c85b4599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:00:35 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='5c7f50a6c14883a04475c6e6ed54b2091b0fa00c7022c10e21d395fdfc5a211d' ;;     armhf) natsArch='arm6'; sha256='48860fe19256e926b7e2f68ad0e151ab2131c0fcd4b94acdca76485f4e6a99b7' ;;     armv7) natsArch='arm7'; sha256='acbb66deccb4df5ac4a8c7503cd81335452c8265946d05b0ad47fd6991a81698' ;;     x86_64) natsArch='amd64'; sha256='84e7251f6a745e5950b9adf2159638a29fbfdcec040c13674b2362a3446b4eaa' ;;     x86) natsArch='386'; sha256='e1bd6e8df589757c0822f2668e8da29ce9a3deabc7d1c1c9cafdfe283192e6e7' ;;     s390x) natsArch='s390x'; sha256='65bbbd07a96b7cc5b51ee2263025f02c5d4e37c7a0d714e16b00042cb14e2966' ;;     ppc64le) natsArch='ppc64le'; sha256='404fed33fb94dc6b29b8212434e547c54b501b94541977596c87b8a47cdad890' ;;     loong64) natsArch='loong64'; sha256='97f70d8d6ce99fdd8ed26738bf109dd8d7cf2dd16a9745ac5f78d5ae80d32aea' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:35 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76f0838e4bfd7d030c8a225a877cd6f162434e0df8d0466b2f97fcba9f458dd`  
		Last Modified: Thu, 30 Jul 2026 20:00:52 GMT  
		Size: 6.9 MB (6945538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48b8bfdaa7c30f7117cb0ed2437cf54431ef41257dbff90c9ed2029a311997b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ea6073b08932137416457927ed1060fe5441556f05befc67e4432e0a89da7b`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:ad709588f2182e3e079651eab825582a8102c13d54e423be18632369332b95bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 KB (14209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950fa7443ca8503c8dcc765f0ac76d6fbd376ddef4a162240af783336202ac2`

```dockerfile
```

-	Layers:
	-	`sha256:127ed549a450147b6d6fa5478fad794c7b036f1ce21aeeda0cbd99cd67937796`  
		Last Modified: Thu, 30 Jul 2026 20:00:51 GMT  
		Size: 14.2 KB (14209 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.14-linux`

```console
$ docker pull nats@sha256:dd5152d5de4ce2a22b970cc553dd5b45ac9533bdddc440a79f970ac489ce2fa5
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

### `nats:2.12.14-linux` - linux; amd64

```console
$ docker pull nats@sha256:f672e5c5a675c7320dab47ed320270b702a31da2788f520c0f650c790b18e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e6671e68103f1931e61a17c8f4bdbb4437d7d80d89d301e6383f0e92ba3162`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:15 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:15 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:15 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:589952464ceaad711cb262c23c8dfc4cd9f9f55715e088fdc4fd126faaccea8d`  
		Last Modified: Thu, 30 Jul 2026 14:08:37 GMT  
		Size: 6.7 MB (6683365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1026424672acb149ac1ac4ae3d2221af08d6e03dec79093502bc0c4fb725a`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:0aabccc0fdadc3cc5d779d9a3067f71ecd7b879fdbcff02001572105b27bd98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00502487770bbca409b5f1823c8eabc38bd02a0d7da87e273aa3ad18b9ccccf`

```dockerfile
```

-	Layers:
	-	`sha256:72940527c43f0642534941a361ddb3d108df6fbcc1cbdbfc4e54291787081524`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:1a744a4ef582a9736c387a4aba6e3185dc8e8c2b58c89177f16df93054d0f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bb69a6daec45760a65800c0152f349379e606e29da1a94a21482954aeb32c3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:44 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:26e54cab80c9e738091e0e3fe82c185c216834bedea01372ad7df3b3dc868618`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.4 MB (6422521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58494b7a3fe04b97641d37edf1e11409346dfedae8a9a1087cb7a487549b09ce`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8775d8c9af2de56f524e7b454c48dce41f60c36173d024f7488f19d4e4789bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc0960b0b9c7840511664ae660c1cdd9462059932bb44c9588de5f9d62223b9`

```dockerfile
```

-	Layers:
	-	`sha256:d8120f81c5b0c0404a20a045f730804ace6a9e3a8da6ebef889dd0b1edb51c23`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:f7ca32f50d387f855da003c54e32163c32507a20157ea155f410c77f025d0ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6414409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7199196e340bc5a922007c3373f2e854df17463fe69287c39239175d273f8172`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e653d8113269ee233984898cbc14a6c4dbc22166a9e44381a8a093e91fcfabbc`  
		Last Modified: Thu, 30 Jul 2026 14:08:36 GMT  
		Size: 6.4 MB (6413899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb541c002db4d3cdcd8134a54d48ec0c2228aed913351fb1db9e8804a19226`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cf823cbb6e48e6717d31c32490578c1e1e35aaf23df1db5eda6f93cc531ce4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd0ce86353acb55ae376169da4ba5442d8fefcd211097811d11a2745da3526`

```dockerfile
```

-	Layers:
	-	`sha256:85558210757c16208e22a05041e12bf956f406443751b2dd1ab5445eb75e4082`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:83548cd4da1fe4e2972c503630b6263cce176a91c2c629ed99985c35f78ed9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6079114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4da189920173981a32b6bfebf26e5e4e7e889beb0aaac341bb3015addfaa68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cbd34d9ad9c2fc08757274a724f3402b49fed97449717dc1766f510ea24e9d49`  
		Last Modified: Thu, 30 Jul 2026 14:08:38 GMT  
		Size: 6.1 MB (6078604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c9f1fc92c94146e543a5ddb8d35f7ceb48436c04dc59a2bb1078817eaa2fa`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1965a61259c1a637f2784839bec0ce79970fff6ea605319fa1aca7334c26735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a174a76724620da61d3302ca7d7d69b553a68a98c0dacf2505ff09d4fffab30`

```dockerfile
```

-	Layers:
	-	`sha256:8b37164f190603ef9bce9995c5c3738de26715b1a13bb41b2fdf07a69e49d197`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:969f84c8861861c0283fb98a9dfe991de5eb99e682991a471a643ab4bd31b3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5099b45247a87dc0ee98272151641cb43d439bb3bb46746d86fd30c4fd8c5a87`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bb682b2c5cf44200cbae2d2470d15f8f0f97980dcdc88294aa01ce88721a30f5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.1 MB (6141100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd656007e4832c82257e5aa0aff94beb01a6762556681b566bcdc71f5051d55`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:5b60a2c054b6ce01c5e8a38e8169e7c6eaf0a053b2263a9aef2fa4403b57852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c62c3e197193308019691bf19556adea2dd388afdc7a8a19431c75e165166b`

```dockerfile
```

-	Layers:
	-	`sha256:caf8fa564c20f80661a2664046a6424e3ec578220735764424ddff1c5c97e74d`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:0c63f036d246a2e741c3ad44055e4c5af99d07c779a18794b5ca34b2075d6ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a8bf7310f73f16d7e01e9030534062b96c495b76db35515b4d651b042fa6`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:407c746fe0ad8a17f7a55811eda33f7a19b30d62fdcd07f02a485772b056afa5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.5 MB (6532717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6cc41eb49d6c037e4441ac879fe3c2d5888d5be52348b50a0585d6c04897c`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9a1472c1e7aa10c293b2f83e5a266868008236d5fcae09a2cb34f3adfe079b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e8eeffac085a7b4bb28efcd45c8c9b3b84262792d2462a5650a4511069d8a`

```dockerfile
```

-	Layers:
	-	`sha256:ba71c36f2752069c1a599e57c9fbcc47ea560bc21b02fbbe2962b0e5b5d01658`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.14-nanoserver`

```console
$ docker pull nats@sha256:8031627775576a3a01e1ea415f47943b2be94ae1aa0fbc85cfacf915e06ba54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12.14-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:0e37701a851f7ef6b697860a270aa7b941eb53c083562f2661f252da342ffd90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130984897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a9a33165c4d1448334c6b35fff5106eee0e70afbdc5b680318dadcf1d0a45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:69ed8f5e3db352a33cd0da9b6409c80134a6b567e5e280ef88655b33e59be8b9 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2597b07a0bff31c0fa0cc9082156903d9008a866247268262041a99e77956f7`  
		Last Modified: Thu, 30 Jul 2026 21:14:02 GMT  
		Size: 6.9 MB (6875824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff0c87978d61aaba26006fd4fe629eab3c9c5efaae914c9e36f37505aecf40`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270e455f3df843f23e9b70fc756567ec96ac9d516310bdda2f020c4162e29d7b`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567b30c5950061f0ad3fe2a4abc0d9d58a5f62e65259a8bf5186753db70747f3`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3903d42df6bab83381c468caf0d724520ecd8345bad9b6afbb5983e8a94f33`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:8031627775576a3a01e1ea415f47943b2be94ae1aa0fbc85cfacf915e06ba54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12.14-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:0e37701a851f7ef6b697860a270aa7b941eb53c083562f2661f252da342ffd90
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130984897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a9a33165c4d1448334c6b35fff5106eee0e70afbdc5b680318dadcf1d0a45`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:69ed8f5e3db352a33cd0da9b6409c80134a6b567e5e280ef88655b33e59be8b9 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:52 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:53 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2597b07a0bff31c0fa0cc9082156903d9008a866247268262041a99e77956f7`  
		Last Modified: Thu, 30 Jul 2026 21:14:02 GMT  
		Size: 6.9 MB (6875824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ff0c87978d61aaba26006fd4fe629eab3c9c5efaae914c9e36f37505aecf40`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270e455f3df843f23e9b70fc756567ec96ac9d516310bdda2f020c4162e29d7b`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567b30c5950061f0ad3fe2a4abc0d9d58a5f62e65259a8bf5186753db70747f3`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3903d42df6bab83381c468caf0d724520ecd8345bad9b6afbb5983e8a94f33`  
		Last Modified: Thu, 30 Jul 2026 21:13:58 GMT  
		Size: 1.1 KB (1078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.14-scratch`

```console
$ docker pull nats@sha256:dd5152d5de4ce2a22b970cc553dd5b45ac9533bdddc440a79f970ac489ce2fa5
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

### `nats:2.12.14-scratch` - linux; amd64

```console
$ docker pull nats@sha256:f672e5c5a675c7320dab47ed320270b702a31da2788f520c0f650c790b18e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6683874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e6671e68103f1931e61a17c8f4bdbb4437d7d80d89d301e6383f0e92ba3162`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:15 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:15 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:15 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:15 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:589952464ceaad711cb262c23c8dfc4cd9f9f55715e088fdc4fd126faaccea8d`  
		Last Modified: Thu, 30 Jul 2026 14:08:37 GMT  
		Size: 6.7 MB (6683365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1026424672acb149ac1ac4ae3d2221af08d6e03dec79093502bc0c4fb725a`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:0aabccc0fdadc3cc5d779d9a3067f71ecd7b879fdbcff02001572105b27bd98b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00502487770bbca409b5f1823c8eabc38bd02a0d7da87e273aa3ad18b9ccccf`

```dockerfile
```

-	Layers:
	-	`sha256:72940527c43f0642534941a361ddb3d108df6fbcc1cbdbfc4e54291787081524`  
		Last Modified: Thu, 30 Jul 2026 20:10:19 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:1a744a4ef582a9736c387a4aba6e3185dc8e8c2b58c89177f16df93054d0f0ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40bb69a6daec45760a65800c0152f349379e606e29da1a94a21482954aeb32c3`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:44 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:44 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:44 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:26e54cab80c9e738091e0e3fe82c185c216834bedea01372ad7df3b3dc868618`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.4 MB (6422521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58494b7a3fe04b97641d37edf1e11409346dfedae8a9a1087cb7a487549b09ce`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8775d8c9af2de56f524e7b454c48dce41f60c36173d024f7488f19d4e4789bf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc0960b0b9c7840511664ae660c1cdd9462059932bb44c9588de5f9d62223b9`

```dockerfile
```

-	Layers:
	-	`sha256:d8120f81c5b0c0404a20a045f730804ace6a9e3a8da6ebef889dd0b1edb51c23`  
		Last Modified: Thu, 30 Jul 2026 20:09:47 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:f7ca32f50d387f855da003c54e32163c32507a20157ea155f410c77f025d0ce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6414409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7199196e340bc5a922007c3373f2e854df17463fe69287c39239175d273f8172`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:07 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:07 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:07 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:07 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e653d8113269ee233984898cbc14a6c4dbc22166a9e44381a8a093e91fcfabbc`  
		Last Modified: Thu, 30 Jul 2026 14:08:36 GMT  
		Size: 6.4 MB (6413899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb541c002db4d3cdcd8134a54d48ec0c2228aed913351fb1db9e8804a19226`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cf823cbb6e48e6717d31c32490578c1e1e35aaf23df1db5eda6f93cc531ce4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fd0ce86353acb55ae376169da4ba5442d8fefcd211097811d11a2745da3526`

```dockerfile
```

-	Layers:
	-	`sha256:85558210757c16208e22a05041e12bf956f406443751b2dd1ab5445eb75e4082`  
		Last Modified: Thu, 30 Jul 2026 20:09:11 GMT  
		Size: 8.8 KB (8751 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:83548cd4da1fe4e2972c503630b6263cce176a91c2c629ed99985c35f78ed9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6079114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4da189920173981a32b6bfebf26e5e4e7e889beb0aaac341bb3015addfaa68`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:41 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:41 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:41 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cbd34d9ad9c2fc08757274a724f3402b49fed97449717dc1766f510ea24e9d49`  
		Last Modified: Thu, 30 Jul 2026 14:08:38 GMT  
		Size: 6.1 MB (6078604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398c9f1fc92c94146e543a5ddb8d35f7ceb48436c04dc59a2bb1078817eaa2fa`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1965a61259c1a637f2784839bec0ce79970fff6ea605319fa1aca7334c26735c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 KB (8781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a174a76724620da61d3302ca7d7d69b553a68a98c0dacf2505ff09d4fffab30`

```dockerfile
```

-	Layers:
	-	`sha256:8b37164f190603ef9bce9995c5c3738de26715b1a13bb41b2fdf07a69e49d197`  
		Last Modified: Thu, 30 Jul 2026 20:08:45 GMT  
		Size: 8.8 KB (8781 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:969f84c8861861c0283fb98a9dfe991de5eb99e682991a471a643ab4bd31b3aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6141610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5099b45247a87dc0ee98272151641cb43d439bb3bb46746d86fd30c4fd8c5a87`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:bb682b2c5cf44200cbae2d2470d15f8f0f97980dcdc88294aa01ce88721a30f5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.1 MB (6141100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd656007e4832c82257e5aa0aff94beb01a6762556681b566bcdc71f5051d55`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:5b60a2c054b6ce01c5e8a38e8169e7c6eaf0a053b2263a9aef2fa4403b57852f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c62c3e197193308019691bf19556adea2dd388afdc7a8a19431c75e165166b`

```dockerfile
```

-	Layers:
	-	`sha256:caf8fa564c20f80661a2664046a6424e3ec578220735764424ddff1c5c97e74d`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 8.7 KB (8722 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.12.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:0c63f036d246a2e741c3ad44055e4c5af99d07c779a18794b5ca34b2075d6ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6533227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206a8bf7310f73f16d7e01e9030534062b96c495b76db35515b4d651b042fa6`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:407c746fe0ad8a17f7a55811eda33f7a19b30d62fdcd07f02a485772b056afa5`  
		Last Modified: Thu, 30 Jul 2026 14:08:41 GMT  
		Size: 6.5 MB (6532717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d6cc41eb49d6c037e4441ac879fe3c2d5888d5be52348b50a0585d6c04897c`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.12.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9a1472c1e7aa10c293b2f83e5a266868008236d5fcae09a2cb34f3adfe079b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 KB (8668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496e8eeffac085a7b4bb28efcd45c8c9b3b84262792d2462a5650a4511069d8a`

```dockerfile
```

-	Layers:
	-	`sha256:ba71c36f2752069c1a599e57c9fbcc47ea560bc21b02fbbe2962b0e5b5d01658`  
		Last Modified: Thu, 30 Jul 2026 20:09:24 GMT  
		Size: 8.7 KB (8668 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.12.14-windowsservercore`

```console
$ docker pull nats@sha256:e6a86d8ba6ae53f713e32a665296c982f7fed622f14c63b92289ce076e4f1667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12.14-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:daae5a9e59fd4dd1a6ba6135ac26d7554f656ec58c9e7ed604ede44371145795
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165291948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71def6df75a80d5b2a173a0d82d27e79c85aa1c5da53d15c6b608ac95774ba0e`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 20:08:46 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:08:48 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:08:49 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.14/nats-server-v2.12.14-windows-amd64.zip
# Thu, 30 Jul 2026 20:08:50 GMT
ENV NATS_SERVER_SHASUM=e47765d49e4b768de0a583906dbbbd9a8475f21c5ff8ac28d2110f5f2197148c
# Thu, 30 Jul 2026 20:08:55 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 20:09:07 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 20:09:08 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 20:09:10 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a805896a72af967839c62dfdde5cf3ffb588076c52d389dda4b40cb07cc8cd`  
		Last Modified: Thu, 30 Jul 2026 20:09:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd07c2019407128477709f9c01a410a7344aca48a298838fe31cb537ad633ba`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1592b69267477cc07beb16fb3d2d3d4bbfa53e6d89321a2e009237c8b0c78`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a15f1980d961cdfeb284b9669327e53c625fd1e0068a01987a21b6ff33704`  
		Last Modified: Thu, 30 Jul 2026 20:09:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48938227cbd65b84a25b340a7249d508f068b232465602901e5dfbe4fab7ac05`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 490.6 KB (490576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04eb60cd07d7e31e75c9d8ba4264fa91c4b7ebb581f579efbbeeab9bffe78d77`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 7.2 MB (7234627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5626ea73f314914430d499d3a1f73937a3245d523c10b805beacea94eae5793`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a85906ce37f0fe354f55f6e337de633ce55859223f253e2ed30e7f60aa06714`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66f1928435823793cf39eca89c15f7d094f9cadbab83f38db11bef6320a10c1`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a2a9f5ead9c37ab65518013980a2a0a750a37dd29744e85e73238249e4a6c`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.12.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:e6a86d8ba6ae53f713e32a665296c982f7fed622f14c63b92289ce076e4f1667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.12.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:daae5a9e59fd4dd1a6ba6135ac26d7554f656ec58c9e7ed604ede44371145795
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165291948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71def6df75a80d5b2a173a0d82d27e79c85aa1c5da53d15c6b608ac95774ba0e`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 20:08:46 GMT
ENV NATS_SERVER=2.12.14
# Thu, 30 Jul 2026 20:08:48 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.12.14
# Thu, 30 Jul 2026 20:08:49 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.12.14/nats-server-v2.12.14-windows-amd64.zip
# Thu, 30 Jul 2026 20:08:50 GMT
ENV NATS_SERVER_SHASUM=e47765d49e4b768de0a583906dbbbd9a8475f21c5ff8ac28d2110f5f2197148c
# Thu, 30 Jul 2026 20:08:55 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 20:09:07 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 20:09:08 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 20:09:10 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a805896a72af967839c62dfdde5cf3ffb588076c52d389dda4b40cb07cc8cd`  
		Last Modified: Thu, 30 Jul 2026 20:09:17 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd07c2019407128477709f9c01a410a7344aca48a298838fe31cb537ad633ba`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b1592b69267477cc07beb16fb3d2d3d4bbfa53e6d89321a2e009237c8b0c78`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22a15f1980d961cdfeb284b9669327e53c625fd1e0068a01987a21b6ff33704`  
		Last Modified: Thu, 30 Jul 2026 20:09:15 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48938227cbd65b84a25b340a7249d508f068b232465602901e5dfbe4fab7ac05`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 490.6 KB (490576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04eb60cd07d7e31e75c9d8ba4264fa91c4b7ebb581f579efbbeeab9bffe78d77`  
		Last Modified: Thu, 30 Jul 2026 20:09:16 GMT  
		Size: 7.2 MB (7234627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5626ea73f314914430d499d3a1f73937a3245d523c10b805beacea94eae5793`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a85906ce37f0fe354f55f6e337de633ce55859223f253e2ed30e7f60aa06714`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66f1928435823793cf39eca89c15f7d094f9cadbab83f38db11bef6320a10c1`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32a2a9f5ead9c37ab65518013980a2a0a750a37dd29744e85e73238249e4a6c`  
		Last Modified: Thu, 30 Jul 2026 20:09:14 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14`

```console
$ docker pull nats@sha256:ecf677bae6a0ae7900bd3217be041c6614d5dcd2cae780000f9cd69462b36541
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-alpine`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-alpine3.22`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-linux`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-linux` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-nanoserver`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-scratch`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14-scratch` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14-windowsservercore`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.4`

```console
$ docker pull nats@sha256:ecf677bae6a0ae7900bd3217be041c6614d5dcd2cae780000f9cd69462b36541
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

### `nats:2.14.4` - linux; amd64

```console
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.4-alpine`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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

### `nats:2.14.4-alpine` - linux; amd64

```console
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.4-alpine3.22`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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

### `nats:2.14.4-alpine3.22` - linux; amd64

```console
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.4-linux`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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

### `nats:2.14.4-linux` - linux; amd64

```console
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-linux` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-linux` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-linux` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-linux` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-linux` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-linux` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.4-nanoserver`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14.4-nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.4-nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14.4-nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.4-scratch`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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

### `nats:2.14.4-scratch` - linux; amd64

```console
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:2.14.4-scratch` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:2.14.4-scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:2.14.4-windowsservercore`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14.4-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.14.4-windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:2.14.4-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:alpine`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:alpine3.22`

```console
$ docker pull nats@sha256:f2123f533c2b0cada0a5c5ec434fb2b8cfe1cf220215ef9d7517e1372917ad66
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
$ docker pull nats@sha256:304a5f13020ccab5f50fe8d5549855cf99a9ed424560b95660c0c0a98b7c9e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2978f67bea67f09466accdc7786b781fd456572c446b459ca5922ad58b14e0d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:18 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:18 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:18 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b371e0fcdf523eaa191ad343ddf119da4ec5b41baf3c9b2335fd0347b527897e`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 7.3 MB (7296601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29ecd94035e0c2884a5031a7d015409c6012432b82ea77ae60e1ee2ff932723`  
		Last Modified: Thu, 30 Jul 2026 19:46:23 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8286ca67b4d414e755db4b66125eec7d6f7a144ae20a246c876f024594186`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:1a705aa00ac8388c89228c0eb7089f469ae4e927d1710e65c0717c3ecd5b2e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c59943abc340c82c3eed49402d905fc8f0ada25134add7b6031e653380ccf8`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5969a2ce92513fde378ffa3d2868b5fd92aa25d55ae9cff5430977379dc75`  
		Last Modified: Thu, 30 Jul 2026 19:46:22 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v6

```console
$ docker pull nats@sha256:3fe05d9e1ca7069d94fa4cae9e07aa028229d14a21fbde52c249d7bc7bef6199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 MB (10534325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fe1178d127d39ddb162a0a27c148b22ca18e051c90a4f98198812f66f8a908`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:53 GMT
ADD alpine-minirootfs-3.22.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:53 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:48:09 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:48:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:48:09 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:8efcda622ba07f4da6b9309a34f4650a7a052a1d29a2fc346284c2c1b0899202`  
		Last Modified: Mon, 22 Jun 2026 19:19:58 GMT  
		Size: 3.5 MB (3494800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56438e7cd676c239c9292f2e13660c7575cbe7aea0b7ddcc5e7862b1d00c6c60`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 7.0 MB (7038555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5526e175b5d96afd2a6bfe785d56a08fa849c1dde326ac4c5ff42d4dae39700`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d7dd82921aca96afe02db3362e4d1073c3e128a4c15ca139f6abdcf52fe656`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:c12142f9d753942c7cccfbbb5ae5912927ae8a081bc73a5d000e8c4025bcf61b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcee0099919bd34cdd86a09ed7f0ebc41b2dd048edb609c5faaac70ad5728b7`

```dockerfile
```

-	Layers:
	-	`sha256:7d70fee1bd001e90f3d9e49d2f896f93d20dce5aa56ce140a8c7afcf2e25cc76`  
		Last Modified: Thu, 30 Jul 2026 19:48:13 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm variant v7

```console
$ docker pull nats@sha256:08482f0822734e7a1511273b88506bff5a05d2e31d1789245b24e30337099314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.2 MB (10235237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba196af1593f36c7b8306b27bd19619515cb38bfd7f87e70f4a2ea3c8d1b187`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:47 GMT
ADD alpine-minirootfs-3.22.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:47 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:47:37 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:47:37 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:47:38 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:47:38 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:276ca41f8e7974c0de50f2551aabece03d11f231f68ab5c6c5051410e0d8c2e7`  
		Last Modified: Mon, 22 Jun 2026 12:03:28 GMT  
		Size: 3.2 MB (3209612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6accf3941be47dffc167aa588d29a449ec3efa03f7c107a53015af4620210dc8`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 7.0 MB (7024654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ae77fad8257c3dac210e7faec18d33fad25c88c79bfc7ecd14fb8bdd1eb6ea`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b341a60ae0577d8af6bac54aced30d6e931df033feb71c5f86dcb46addd9d06`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:03ec86968f3bb23b6438cda4bf5fc64f9fb065007bed1bc8c8a336d3d7151a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d762de80fd0103c355c1b82702202eeda18cefbd6c731e25f8d4f1d87bca72f`

```dockerfile
```

-	Layers:
	-	`sha256:47cd93d5bf5727ecaf5764f27ffaca1fb22505ee05b83f53cbcf2cccb4a59ffe`  
		Last Modified: Thu, 30 Jul 2026 19:47:42 GMT  
		Size: 15.5 KB (15515 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:862c0b3de443e209f342b8d224a88a54f4981834816849e27c40f4fc6b221b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10767387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4307ddcd899e1fe23dca6804b696d83ece771ff2fd1aecaa3228e7eb6fe5086`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:54:14 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:54:14 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:54:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:54:14 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaddca5c5aeedcbee5b791e9c4246babb2ccb5c86913c9712b2d46260f3cec5e`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 6.6 MB (6645930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41c2022a7bb6b50adf1b3706b0b2251be632aa3a6f4fb7c6cb47d7fc18d7a34`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459eb92a47107eb27e1edd600645bd270b5ef54ea150a4029f9022438a4ddd63`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:4b290e402af6223b4d3b760926ce7558649b8dddc6d02420259201c00f574290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 KB (15554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85697de658bcdd536f7efe002fb16555fa13db5538a465daacbe67c53fb4ab5c`

```dockerfile
```

-	Layers:
	-	`sha256:63dc4c6e5d9d279e26c7ff370fe4054e33a7c46a97571b1587bf8d9a360d6e5f`  
		Last Modified: Thu, 30 Jul 2026 19:54:18 GMT  
		Size: 15.6 KB (15554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; ppc64le

```console
$ docker pull nats@sha256:899d2a3a57e78469b9ace267d485e48458cd294dabd6bf51f19348a89d8cc184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 MB (10435607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6416ca0e300e44e0086afdf536ee197d1ae8a1da6326f7d282987112d1ddea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 19:46:43 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:46:43 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 19:46:44 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 19:46:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 19:46:44 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56f9a55af6106dc359b1fd93614eeb26d37886f1e667bfafdac19289823c7e5`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 6.7 MB (6715405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35ff5bc435e05871ca205a5576ae2df9ac1ff33493f4ba5a65fad507a3b80b8`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 560.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d9a57c46dd7e71f354dc85901add84e1a386c69e849bca2b1247156c2b7fd7`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:cd051e747aa91b9c2ae288e0e2707c317042835c8c41eec73841073b7b522949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 KB (15471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0e6058edd56fadaa92080e4156eca1b773daf49917cb8744d9572c20dc5294`

```dockerfile
```

-	Layers:
	-	`sha256:05ed59d45b63bae628863616b2399ff861ac9c1e0c5b2ae9dd8007b29420aa91`  
		Last Modified: Thu, 30 Jul 2026 19:46:52 GMT  
		Size: 15.5 KB (15471 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:alpine3.22` - linux; s390x

```console
$ docker pull nats@sha256:1c7d20e9f6df644bdf8c5ff23ed7178fe7381d40da595e645bf9ac523b8665e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10748316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfd004f7a5d9aa4c89a17fdfa7bb27ae8a3debb52657a4d7484e2ea86772a56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["nats-server","--config","\/etc\/nats\/nats-server.conf"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:15 GMT
ADD alpine-minirootfs-3.22.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:15 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 20:00:24 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 20:00:24 GMT
RUN set -eux;     apkArch="$(apk --print-arch)";     case "$apkArch" in     aarch64) natsArch='arm64'; sha256='2143f4317ac8e1dd42793c912fa09b405c7036ba181b2a3002b74501d13562b0' ;;     armhf) natsArch='arm6'; sha256='96bf604d44f03d2a572f38fc3df5908827ad14ebe3aa3b2e2b1cbb88bd52c739' ;;     armv7) natsArch='arm7'; sha256='52b6039d5652264d1d528650a8feded0a61ad92c5bc2a8cd25e95d6e2606d0e2' ;;     x86_64) natsArch='amd64'; sha256='20f9d6a199560f243610908bcccea2e27e9f47213242d1c609ca46d1d73e91ea' ;;     x86) natsArch='386'; sha256='ffa936eedc8d50708da79d8e0c43bce7c5fdd268e58b5b5e8cf54a1c1c3043e7' ;;     s390x) natsArch='s390x'; sha256='121830ed6492c0baf213993c0904719531c8108272d5d139df0ac459bde1ba4d' ;;     ppc64le) natsArch='ppc64le'; sha256='cc577f9ad2adbc3a873282c12f8d507f33dbd6c42e433ad8334c4c9ca8f84448' ;;     loong64) natsArch='loong64'; sha256='e42639f78170fec5e0c9928701bcd34718e5e32a1fc15b4837a745dd37fc98a4' ;;     *) echo >&2 "error: $apkArch is not supported!"; exit 1 ;;     esac;         wget -O nats-server.tar.gz "https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER}/nats-server-v${NATS_SERVER}-linux-${natsArch}.tar.gz";     echo "${sha256} *nats-server.tar.gz" | sha256sum -c -;         apk add --no-cache ca-certificates tzdata;         tar -xf nats-server.tar.gz;     rm nats-server.tar.gz;     mv "nats-server-v${NATS_SERVER}-linux-${natsArch}/nats-server" /usr/local/bin;     rm -rf "nats-server-v${NATS_SERVER}-linux-${natsArch}"; # buildkit
# Thu, 30 Jul 2026 20:00:25 GMT
COPY nats-server.conf /etc/nats/nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
COPY docker-entrypoint.sh /usr/local/bin # buildkit
# Thu, 30 Jul 2026 20:00:26 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:00:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 20:00:26 GMT
CMD ["nats-server" "--config" "/etc/nats/nats-server.conf"]
```

-	Layers:
	-	`sha256:5cc76dd142694657b89f934ffd4984b6a34734e31f9cfb8fd5e05181e6a23101`  
		Last Modified: Mon, 22 Jun 2026 12:03:27 GMT  
		Size: 3.6 MB (3637085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668e9d14a82ea27e74ec62445c4f762e2024d3ba2ad65d2333fd1d9538cea039`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 7.1 MB (7110260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ccf00d72871bca8cf1affb2760e765fd8059d46abae2c28bb517a7c1b0d5f0e`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 561.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316080f8912a5c46217221e692cca850fc8e64c603b163f4a4732ad32c344edf`  
		Last Modified: Thu, 30 Jul 2026 20:00:40 GMT  
		Size: 410.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:alpine3.22` - unknown; unknown

```console
$ docker pull nats@sha256:acbb7eb6c6e899cb7b6abec701b971900e21de30d213f547fe219a1d6ecb1f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 KB (15404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039046eeb4f84c1ed0c231aa499aaf8217f2d152ee2d51296fad67689a573378`

```dockerfile
```

-	Layers:
	-	`sha256:6a30c3e8c00dbfb6a38116cab18ab96b37ed1cddd5156ccf95eed00f2a3c956c`  
		Last Modified: Thu, 30 Jul 2026 20:00:41 GMT  
		Size: 15.4 KB (15404 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:latest`

```console
$ docker pull nats@sha256:ecf677bae6a0ae7900bd3217be041c6614d5dcd2cae780000f9cd69462b36541
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:latest` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:latest` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:nanoserver`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:nanoserver` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-ltsc2022`

```console
$ docker pull nats@sha256:ed59ad520b8b16f954312e880c3cbdefe90ff056beb3c54081161f5561703194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:nanoserver-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:b9fde56f492f4763b1209a3bb0986361d859f67aa30de4b4a286fca50787df7b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131198066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce07e68818d8f2b25389fdf5eca1f2c437ce934f9ae8b2941290f1182a776931`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 11 Jul 2026 16:21:41 GMT
RUN Apply image 10.0.20348.5386
# Thu, 30 Jul 2026 21:13:06 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 21:13:15 GMT
RUN cmd /S /C #(nop) COPY file:3abb077fbee7b28d69ba2d54ae383495a9070b5c90920937bfd3b328c8a829d3 in C:\nats-server.exe 
# Thu, 30 Jul 2026 21:13:16 GMT
RUN cmd /S /C #(nop) COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 21:13:17 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 21:13:18 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 21:13:19 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:63c3a07073b5f66a0d507b2c6f828ce13c4111f1ea6fd765e12056f59f6b7041`  
		Last Modified: Tue, 14 Jul 2026 20:06:05 GMT  
		Size: 124.1 MB (124103131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17bf5e4cba2a97f2edf05d1cd9e10829758217b55d2b11db44e5be44561d4aa`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd4e5964f4b9714d3f8470add2af5abc312ba7bf3c7d58e67290acfbdc9d898`  
		Last Modified: Thu, 30 Jul 2026 21:13:26 GMT  
		Size: 7.1 MB (7089002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94a4a3aa86fdd31105ace964088b8ad7d2612b0d9e955af9e55ff7530368ab`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7055952ae65797d58d3cf4c04a062c962fa0769fc823f874acb2ebf7e13cca45`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370f5f1cdeff054621c3faa02030f774a3c7eea49e5b75ddbe6a9c9528ff0cc2`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babd887b5ae63ef0b7273ad0faefc5d7a4c79ae6d392e3a35b36ab3f8e580d34`  
		Last Modified: Thu, 30 Jul 2026 21:13:24 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:scratch`

```console
$ docker pull nats@sha256:01339d55f87eb62aff572968b82a1075a4db30b540ed268e26407c7765c80dc6
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
$ docker pull nats@sha256:8bc179888241f3d36f0faeba927e93a18e47b57d2b32143c6d2e95edcdc5bea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6887381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85bd371fa4a6067ece86467ae463537fa91e3e9b024ab2df9193077bb077cd2`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:10:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:10:04 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:10:04 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:10:04 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:10:04 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:87ffe8f061c32c7b991c27d6884dad8c8fa4e7ebc0eef64934d274f70818f716`  
		Last Modified: Thu, 30 Jul 2026 14:08:28 GMT  
		Size: 6.9 MB (6886872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b239641e31449513d32090904c7c0fef639d982719751c2f0a0866bed21fb5b7`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9b32eb50d1dfcae3f0923e8232368160c754dd310a4df5eaf4f90f22ea053a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1b29e45e6139578475f94ca660f64b7855bb2af89bc1502eea88b13a2671`

```dockerfile
```

-	Layers:
	-	`sha256:451766151b6c4e3bbc4395f432906450036505b6907759133952f56e35bf1297`  
		Last Modified: Thu, 30 Jul 2026 20:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v6

```console
$ docker pull nats@sha256:bad4d51f0851e180b80a5113afc4838e0801bb78a717bdd3d1376b02bf536649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9188e43b0482f640597752f5e6b21a8a6bdbbe6c6627d20c2a18c0a70b703ac`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:32 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:32 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:32 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:32 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ade96dd9e4cc6ac57f00440c7d16b9de7be28f1d08e8d243002206b68211e2f2`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.6 MB (6627665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb99225c9d8e00afc5ac86b47291573d2e666567a4461d8ccc55d1a59ce4ce85`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:1f47153f46b5fe2dedff7035114e3128f5d789d9aaf54fe8f4b033aa13a8a366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf3af5b77b181b9f018c078591e66c0073bbf2cf87c95ff3c3276fb19c6ffd8`

```dockerfile
```

-	Layers:
	-	`sha256:4b46e0a3d9a395a36d23266242288f86da8b145b63ce336852ea9c334dc58350`  
		Last Modified: Thu, 30 Jul 2026 20:09:36 GMT  
		Size: 10.6 KB (10553 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm variant v7

```console
$ docker pull nats@sha256:a9ba06160967966befe2152dce02d4204fbacb83bfd524fd199e78b4e2d4f8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb74808e4e92fa059744c957403fb9e03ed0e43ee20d3ab019489ed0a2d5b56e`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:56 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:56 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:56 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:56 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ae7f8d36b1248f94fb0fd01a9b92ec9fad563ce1be4f0ec7012b706b1b4944c2`  
		Last Modified: Thu, 30 Jul 2026 14:08:31 GMT  
		Size: 6.6 MB (6614460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246a78abd2b34c58be5792c0959a4e48f65591e4897eed0b21efe355960adeec`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:cb51f7ca52e1b6cfb54efd02de1cab495beaf4c13c5071cda09703f70c9eac8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e35444cc6768771dacb29ac213322fc2e131070526de698c9cf7eb7664cd8`

```dockerfile
```

-	Layers:
	-	`sha256:78d9c452e60e346061f576109c30c4fdb0728261f342d3d83b582dc723dd267e`  
		Last Modified: Thu, 30 Jul 2026 20:09:00 GMT  
		Size: 10.6 KB (10552 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:64f5842cbbed7de8ec6fb72bf188f0d2077d27451b2d86c659735207cfd8c186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731669c166d3b59012260f8a75d083e2d5634163ac7e58eb80534c419a595562`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:31 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9ba930f02f0693146906d861e42916190fded9ba366bd549395bcd41e7c5cf63`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.2 MB (6235967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7be0840aecef118ebb87e876ad3b2c96b2a92e049e670b6bc9b13d44913e96`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:8267575f2fba563c0db74dee620ccbfb6ae7b736c3b2ede57010b7da89d78bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab21261e2d1e59287ddf432a6d255dfdfff2de28f1fe3b7d611eb5ddceedc329`

```dockerfile
```

-	Layers:
	-	`sha256:606e47da7a30237c7e402dd143ea8e6c1a40d6f54cfb70f5c9911e95961c713b`  
		Last Modified: Thu, 30 Jul 2026 20:08:35 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; ppc64le

```console
$ docker pull nats@sha256:32cce7a1326c6e3daaf871ca1b963d56bb4d7a9ee3d67ca00885f6938c53e4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6303083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:672977a4112f9f4edfa9f22a8b7316cfd5584abe58bffd028e467e07552bbc5b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:08:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:08:57 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:08:58 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:08:58 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:08:58 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1b197f4e9e98c3294a8bde4109424f92ca7a3fdca3633390c87ee21eb377d4ac`  
		Last Modified: Thu, 30 Jul 2026 14:08:32 GMT  
		Size: 6.3 MB (6302573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4912cf3a6be65b727250d6cf041055dd05519362062eab089f6ab530bab16b11`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:9cb8bcbb503cf1e7167948ba9f48da021eeebffe06c6e102d2fdf814f0789b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4640add731e19f59198e109b220a7c78cf0853b85002363b10e545320174828e`

```dockerfile
```

-	Layers:
	-	`sha256:94aa1a55d49738900c594856ff54831c259b17eafd9fd234048576c8d31a4ffb`  
		Last Modified: Thu, 30 Jul 2026 20:09:06 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:scratch` - linux; s390x

```console
$ docker pull nats@sha256:fda558b47380881d5b7e3820004983915164ceac7a13fe457315951b9d7a61f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6698659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4ae086f2e7cfce106982021fe6b6e6f846f7288e6b07fdd3e967da1ec53dda`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 30 Jul 2026 20:09:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 30 Jul 2026 20:09:08 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 30 Jul 2026 20:09:09 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 30 Jul 2026 20:09:09 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 30 Jul 2026 20:09:09 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:9e2e27c9e64b1594f6175b4954754af410470bc8a898d0dfc767ca606d39b3b8`  
		Last Modified: Thu, 30 Jul 2026 14:08:29 GMT  
		Size: 6.7 MB (6698149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc6b6ffcc77d297a2b9b9b61a9187dd968ad944f5cac295c8063c67174ebb04`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:scratch` - unknown; unknown

```console
$ docker pull nats@sha256:a32963152ed61e73ff066fe6a4bb129fac231af0d06f438f5ad2b2257f78e57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2214116c3a6979d8a8bc5b5823033d892f8ca3b712a92bfa6cf39b815ade5`

```dockerfile
```

-	Layers:
	-	`sha256:223f9b853b8417539fb8d42601ae44b76f91248bd05efe40499164751361df34`  
		Last Modified: Thu, 30 Jul 2026 20:09:25 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore-ltsc2022`

```console
$ docker pull nats@sha256:1f31c2ad1bd9e397cd21bf884a86f070fa8fa50ce3716705815790207095eee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `nats:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull nats@sha256:50f2c16820874784867381928cab7a9a74f58409b45a41efdb2d611e47e34652
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2165515362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:514fdbc84f6fea1e0ddc8df18be6a4587444c77e01861d11bac74655ad7cf59a`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Thu, 30 Jul 2026 19:53:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 30 Jul 2026 19:53:54 GMT
ENV NATS_DOCKERIZED=1
# Thu, 30 Jul 2026 19:53:56 GMT
ENV NATS_SERVER=2.14.4
# Thu, 30 Jul 2026 19:53:57 GMT
LABEL org.opencontainers.image.title=NATS Server org.opencontainers.image.description=NATS is an open-source, high-performance, cloud native messaging system. org.opencontainers.image.url=https://nats.io org.opencontainers.image.documentation=https://docs.nats.io org.opencontainers.image.source=https://github.com/nats-io/nats-docker org.opencontainers.image.vendor=NATS.io org.opencontainers.image.licenses=Apache-2.0 org.opencontainers.image.version=2.14.4
# Thu, 30 Jul 2026 19:53:59 GMT
ENV NATS_SERVER_DOWNLOAD=https://github.com/nats-io/nats-server/releases/download/v2.14.4/nats-server-v2.14.4-windows-amd64.zip
# Thu, 30 Jul 2026 19:54:00 GMT
ENV NATS_SERVER_SHASUM=b6755c58ffec1518d0efaa6985284f6e796d22caab7cae4ec90a49a1bf79fa5d
# Thu, 30 Jul 2026 19:54:49 GMT
RUN Set-PSDebug -Trace 2
# Thu, 30 Jul 2026 19:55:08 GMT
RUN Write-Host ('downloading from {0} ...' -f $env:NATS_SERVER_DOWNLOAD); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:NATS_SERVER_DOWNLOAD -OutFile nats.zip; 		Write-Host ('verifying sha256 ({0}) ...' -f $env:NATS_SERVER_SHASUM); 	if ((Get-FileHash nats.zip -Algorithm sha256).Hash -ne $env:NATS_SERVER_SHASUM) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 	Write-Host 'extracting nats.zip'; 	Expand-Archive -Path 'nats.zip' -DestinationPath .; 		Write-Host 'copying binary'; 	Copy-Item nats-server-v*/nats-server.exe -Destination C:\\nats-server.exe; 		Write-Host 'cleaning up'; 	Remove-Item -Force nats.zip; 	Remove-Item -Recurse -Force nats-server-v*; 		Write-Host 'complete.';
# Thu, 30 Jul 2026 19:55:09 GMT
COPY file:955816fff9b6400a43d9954c1d8f3dc8ab654bfbdf5936157955e3e678752b7b in C:\nats-server.conf 
# Thu, 30 Jul 2026 19:55:09 GMT
EXPOSE 4222 6222 8222
# Thu, 30 Jul 2026 19:55:10 GMT
ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 30 Jul 2026 19:55:12 GMT
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
	-	`sha256:4185c69659d4ed3117051032fd5cbe88193db84d1c1afa838205e3c143bbb943`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02d56e61b200b24ff7814e299c395dc4881a98c5212c4b32f597807921f5460`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce3a0fa5afd914b945d1e4473d2266c9e431adbb5a248c59b0a75f95a55d82`  
		Last Modified: Thu, 30 Jul 2026 19:55:19 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271a2343439dee0d8707853f108d4c561e1022b879cc6424031f308f3de667d`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ff1c4808d632f0c8babf8c18179917b2e3eb3d323dd788ad2dc014b153dee4`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e87f61061b050689d51e6f365190fd4f2676484664fa300c104e909e03756a7`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c7b827517dec575af00a1c275be675c13f17d111b186d2c2090012ad91879b`  
		Last Modified: Thu, 30 Jul 2026 19:55:18 GMT  
		Size: 497.7 KB (497724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6e406d0efe487ec8e24aba4838c50d8ec27c8d0f23e9abac4d5784824f483f`  
		Last Modified: Thu, 30 Jul 2026 19:55:17 GMT  
		Size: 7.5 MB (7450824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8821815bb20bc852b557f53cf088a2a005fd0411e5643e4772f3a98df51306cb`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.9 KB (1863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4cea8e07315b0143fc0d8bca922c347021905aea1d847396dbc2cd708a97f7`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c8f0f61e4a2f04970b8540fa6917d80ce445856a3bd1f4db373dabf80b38c`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34428255804aba0c0ec48137bbfcadf88dab3a44568a170d911be3737009289f`  
		Last Modified: Thu, 30 Jul 2026 19:55:16 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
