## `buildpack-deps:jammy-scm`

```console
$ docker pull buildpack-deps@sha256:f7fe1dce74956b7271394b5ab89a95e78f3b425d2480a5a3239f80a953cac5ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:jammy-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7cd6ecd8eec6e228bfa2d49c77c7a6b8db3982161495ef6fa37b39112a8a654f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76277734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc6a42cd4be31005ac29846d40ddd194dbc3125ae4dfdc8619a36ec982c26b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf7b87befb50213765c951274751e197c76a5f245262eb4a9fa7e520aa15a79`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 7.1 MB (7063655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d513d6f6d6beaeddbcb10aafa64a26738869519763752c853a4dd84562c07e`  
		Last Modified: Tue, 04 Aug 2026 02:18:33 GMT  
		Size: 39.5 MB (39477562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3aaf66a59ce6ca8ed97cfaa684e8770bf2d8071ce5e355679f18b6e5c1bd2b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5803719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd5745fcfff5badd20dbdade1946970244b893afd2d02be540f8106c8c454e7`

```dockerfile
```

-	Layers:
	-	`sha256:61be2a24b304b834d4c2b7f4d03bf035dc695f6ea2d6db2603a57e0a19b75de0`  
		Last Modified: Tue, 04 Aug 2026 02:18:32 GMT  
		Size: 5.8 MB (5796438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e1993ec0317f4703322792cdd4ecda8f50ea2fbf40ec33ca6f94484cc8b8fa8`  
		Last Modified: Tue, 04 Aug 2026 02:18:32 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:731358f2e0aea3fd4079e0cba8259d75181f77408f0c5f317c825011960808fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76085429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619e327d9db8a3d0db3817c996cef849984af353b23eb075867c09a579efc964`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:20 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:23 GMT
ADD file:4057637c576bdd7a4abd7b7389029536db4b4e25afde5d38fadb08a13b87397a in / 
# Fri, 31 Jul 2026 21:58:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:17:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9ed8c4ebcc05481c34e8f12f944f7c077f91c71c295871472f499a22112a0cc1`  
		Last Modified: Fri, 31 Jul 2026 22:54:04 GMT  
		Size: 26.8 MB (26848033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105b4f25f99c15159aadd630df53bdee66d95fc9f45e22be6c72003a90ded61b`  
		Last Modified: Tue, 04 Aug 2026 01:12:28 GMT  
		Size: 7.0 MB (6963881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d4cfe116e294cd730ed207b0ba6b4f6a7e76b3f604bdb7c50f7f97e449ca03`  
		Last Modified: Tue, 04 Aug 2026 02:18:05 GMT  
		Size: 42.3 MB (42273515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7da3e817e031b12ad8c1e7a6c41712c3b3fd9da8377a1258973b4b73f5f03dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5805063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2888ffd0a59d14307133c35c14f357809404afb9ee3fe34d538692ce1a0d0d2f`

```dockerfile
```

-	Layers:
	-	`sha256:e98fbcfe5a7358ed2e4a1b2effe0bac27d6678bfc1a1042e21192d22b68db1a5`  
		Last Modified: Tue, 04 Aug 2026 02:18:04 GMT  
		Size: 5.8 MB (5797718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b8538c69c411dadc6b0cb0e0be3d336cf3f8e48692346d29ad47649d590c360`  
		Last Modified: Tue, 04 Aug 2026 02:18:03 GMT  
		Size: 7.3 KB (7345 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6f61630b7ce53fb60512c314d94fb61bb5fd2790ef827b4632d5dd89306cc71d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74062015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076180ba5f934cdc38692feb2e00d893410d91581bc7c5269a22e285a71cac66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:18:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db488204f6ccfeed9bd4a5ec9dbf3df1a747afd85c90041db92f12f770654be4`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 7.0 MB (7017933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2d3de559b9469d5da08383c5cce9e5e1db6ce39520ee01fb754d14154b43f1`  
		Last Modified: Tue, 04 Aug 2026 02:18:50 GMT  
		Size: 39.4 MB (39424050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dc3521eee2583cca6a0cbc271592e7adeb657d871f0cd7bbb2c52cd7bb530c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5810193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6616fe49f966b5b735061749ab6d905cc98fa4981a34468ff0031d120127614c`

```dockerfile
```

-	Layers:
	-	`sha256:155546a58c42f71cc68362bd3f24e77f9f9cbc18eaaebbe15f33cabd87f95b7d`  
		Last Modified: Tue, 04 Aug 2026 02:18:49 GMT  
		Size: 5.8 MB (5802832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcb156fdd4baa2f5119869579d439e0e3049f0a01dca3d3979af841e325e6440`  
		Last Modified: Tue, 04 Aug 2026 02:18:49 GMT  
		Size: 7.4 KB (7361 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:03b522cb44962bae935f9102b7ec594c8c7046aacbc00df2d5c27b51d79c3f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86566589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44710970ed66893b7fc4583db54ec63e4ddadda3c4880ba3569d8bc0d097bb9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:11:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:09:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5da1b5040759355cfe44e68f01e0d10353d1647c19317a5c6ac44038afa3c9`  
		Last Modified: Tue, 04 Aug 2026 01:11:46 GMT  
		Size: 8.1 MB (8142353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30b67d33d744325e56106227bed0ab5a7b75e5e9cef59bc890a469ec6b103f4`  
		Last Modified: Tue, 04 Aug 2026 03:09:43 GMT  
		Size: 43.8 MB (43786570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7737b1837c980d4075c778b3ac8d86acc3679f622cc1e92cf45fa9db70d83f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5811595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6f8ee818373d35f5e5b6b2dbe56fe4b4208f189b37d9f8f4725ace843e865e`

```dockerfile
```

-	Layers:
	-	`sha256:7411ff92c548e6563a3ade60c35432911ef9f28f0a130d89a82147cd6886c7f8`  
		Last Modified: Tue, 04 Aug 2026 03:09:42 GMT  
		Size: 5.8 MB (5804282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88b0a8c564d25a755f0832ea70a36fbc3d8102fb1fc6fff9c53e810c28745775`  
		Last Modified: Tue, 04 Aug 2026 03:09:42 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:1f028147ed257ddf6e6797b17ae6752786999257b94e02e1a17d64484c0c7278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76643772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f197f5009f461bfba9948d8e35ef66530f2161de2747e7ce3a30a7d57d186f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 22:41:14 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:41:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:41:16 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 22:42:30 GMT
ADD file:1b41c05681cb7a552c58ebb2cff8b233ec1b6baffb591147d89a7862790cdd47 in / 
# Fri, 31 Jul 2026 22:42:36 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 03:50:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e7db681b52dfe370b124bd9523c8d01db9eb56d64a4f1b2a93bc40f155dd82c7`  
		Last Modified: Fri, 31 Jul 2026 22:54:17 GMT  
		Size: 27.2 MB (27243458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd339aec0826cc28485d291ba4e1f3f8dd98dcfa0cd0fb0c8560d046650b2ef`  
		Last Modified: Tue, 04 Aug 2026 01:13:11 GMT  
		Size: 7.1 MB (7073134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648f2e7862950e27ecbc05bb2133a8e39f23f9cca3a1782c205a254cc13e9bc0`  
		Last Modified: Tue, 04 Aug 2026 03:52:42 GMT  
		Size: 42.3 MB (42327180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2828ee2f6db9ca48fd7e3dd7c502bd3cb1dbf60a740694d9fa682e01b759c450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5795509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac57b85eb32c2be0faa7e1300df1e667e11efd12bd368ade198136d92f66c01`

```dockerfile
```

-	Layers:
	-	`sha256:8735067a93875fdb9836362c138f631046a7fe41083041a23c364dcc03a8e714`  
		Last Modified: Tue, 04 Aug 2026 03:52:36 GMT  
		Size: 5.8 MB (5788196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90288b785f54d90c991e357fcad34eb08c86ba389b52af6e14e2f353297daf0c`  
		Last Modified: Tue, 04 Aug 2026 03:52:35 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e47020aabc4f9fa3bd72d06ac604b972b8315d51e981876199f708461fee0ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74622034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7deb19f0be561919e5a74086fb0c3bd46a4f102ba3aba302c6cf04e7b3790df7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 31 Jul 2026 21:55:19 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:55:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:55:19 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:55:21 GMT
ADD file:98836c73e1ff3d764fd3ad911919bc2fa26732cdc016cedf045ad454f04a7e20 in / 
# Fri, 31 Jul 2026 21:55:21 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:11:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:17:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0c891f1f0f7387672dc5f23b57a662b266f4decb4523b0b77d0abc0b1e165161`  
		Last Modified: Fri, 31 Jul 2026 22:54:24 GMT  
		Size: 28.2 MB (28210302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4e83d9fa5bc370e1b9ef16f84c7af9dccb3975c82d523fd7095ab71dfbae92`  
		Last Modified: Tue, 04 Aug 2026 01:11:27 GMT  
		Size: 7.0 MB (6974258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0d3b1b5da249b200a5e1859f36de6c21bc71ebed521937a68095499d7e5a7f`  
		Last Modified: Tue, 04 Aug 2026 02:17:24 GMT  
		Size: 39.4 MB (39437474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b0e09e7431de7bc2efe13474a45c03faaf8d9459e6247c733482788f32c203f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5804638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bca6bc0dc184ea823e0ef26e23223b085b8be0e7b8d5a91fdc2a0776b56445b`

```dockerfile
```

-	Layers:
	-	`sha256:43a2ada6b93d50d9df857dc3d5ea38e6440460901323d901103d13d1a4fc5e95`  
		Last Modified: Tue, 04 Aug 2026 02:17:23 GMT  
		Size: 5.8 MB (5797357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:603c927c350b9a55f64ee4c69f8eac6323e8d6da4f11bcb4f9adf4435c254340`  
		Last Modified: Tue, 04 Aug 2026 02:17:23 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json
