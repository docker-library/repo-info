## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:abde0164e260a64ca8feb3d37a7748a002e3ab67f662f461078afb7ea0c34a6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `buildpack-deps:bookworm-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e36195843463898b54b6e24ab3623b1e7aef2420e8f945afa1b9bb96f2611a87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (136966674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2b00127bceb0658141e3315481c9b7685968f588363f2208ce3fc80723b20c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f4c0a11ca8db9df2f22b4e4171d55cf8512da7192346f568cfe04db2edb8a31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7978672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f53bcea095ef245e7080b12c92e7134f4e22c58bafd8f48d045be35163e7cb6`

```dockerfile
```

-	Layers:
	-	`sha256:15f11d68bcfc44049b7d7954fa8f51c6b091a1ea59dba480a853fe83473ae423`  
		Last Modified: Tue, 25 Aug 2026 01:38:23 GMT  
		Size: 8.0 MB (7971363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad273446820c3428d10cf4a78adcc0af19c3c1b50c4f974cc970e562fa9d52f`  
		Last Modified: Tue, 25 Aug 2026 01:38:23 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f2dfc99361e6d1a888e6276beaf3a4e4f8c60e4e5e5c7fc73cf0a411ca4a9cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125827796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1a5a01a3a345727f80994a4dbd8940f24afd56d9859d7108df04524fdd617b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:236b04b4b69b12101dbd45dae0f059e6332168d0370e6371bfc34adf608f6535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7980014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd4279878a1f30f6112a78d75c6e1182d0fdc95195b294eaf3f4d07ee6ca9b4`

```dockerfile
```

-	Layers:
	-	`sha256:80ed8a2f291b73372e523bf4d50ec97d0a691f4e76dac3679adbc067520fa03b`  
		Last Modified: Tue, 25 Aug 2026 02:36:27 GMT  
		Size: 8.0 MB (7972640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e868a702aa575f9a1188db8e1a68ff585f16470bb2d5b9d9b9819ca4abeb355`  
		Last Modified: Tue, 25 Aug 2026 02:36:26 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4d8ad93d960376f4663b18d0aaaa9ebb6e158b9ad1691df638e15ad0af358d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136517739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ba214a59129ff46bcf6b52ab326e666bba5c76d4f692b67548ad4c1d6a2931`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b27924a9daa7b4058623401ad375424611d1ea7cacfb83ae0848b5f929d9ced4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:257454efa8b5d4c83bb3aeeb6f3c638dfdf04d5acec5baa2862b237ba417e898`

```dockerfile
```

-	Layers:
	-	`sha256:d8819d035dcd9e5922ccf62ea49d103490e3c7b79c8efad320bf660043b63b23`  
		Last Modified: Sat, 19 Sep 2026 01:31:37 GMT  
		Size: 8.0 MB (7977017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de0c5972518102268b2de118aa73ffa7bdebfb5194d63db9dc705c4dbebeeda`  
		Last Modified: Sat, 19 Sep 2026 01:31:36 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3bdb0908f7c91bfcd752f48fd6ed0ac9dde7f47493d3ec3b1766802ea8edbe16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140628212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f382113bd53f6a96802629ecdb4f6a706b40fdee2a832be953989f468272e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3fb971610e50bef8da550d97c0e5627b5fa70e211cf3a8a8608ac4dff3c6446e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ccac599ce2cebce00df0259be8aecf1efdd741a56821baf6921b66ea27c879`

```dockerfile
```

-	Layers:
	-	`sha256:f88a6ba8e7b381a372c381495ed1363cbe199702ded69623534b45f92518ec00`  
		Last Modified: Tue, 25 Aug 2026 01:42:04 GMT  
		Size: 8.0 MB (7967521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3c51cf654ed476daa81391264f2e0b7a845b504d5a2aee0a2850bc6002cf7`  
		Last Modified: Tue, 25 Aug 2026 01:42:03 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:93963da9f5740e64e77085ac0a0842921e27dd1ce53bb5f678a0585ac7befc9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147901501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2697bff69f5ab9d3deecbcd931dd90a313e67d3725d7ff5e2337272b57922569`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4455183f6a856eb4eff9264c3a00b7e75fb6ebbc829fd9a62ba1566fafc92a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7986578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6ecb318df4a95dcd0d1fcb62b7a2f8c41de70a3da567ce9c6e6c8e54e93af7`

```dockerfile
```

-	Layers:
	-	`sha256:25984e060db8ef35a439ff8e88047164fc414354129f65a3e1bfd5d59fb117e4`  
		Last Modified: Tue, 25 Aug 2026 09:48:04 GMT  
		Size: 8.0 MB (7979236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb78ce22adaa4b1fccbd1050fa58519a19d72f9041fdb5f8e86ead76afa33aaa`  
		Last Modified: Tue, 25 Aug 2026 09:48:04 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
