## `buildpack-deps:jammy-scm`

```console
$ docker pull buildpack-deps@sha256:bfbeb4fea7147d2f137b2ab669da6079e9794951e3d694be047906b5fa26e78a
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
$ docker pull buildpack-deps@sha256:e727571b4558ccc94c4a0a1a612974b13e3afb7ee46987d5aec247e784b1256f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d670703a1c0fe94dda918adb4ed144936c59ddaa71d1a2f0d80393b25c1f34fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:17:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6b7e7972ce6ea20796c34adbba02cab013efc61b6f31cfe4163e003611aff5`  
		Last Modified: Thu, 02 Jul 2026 02:11:54 GMT  
		Size: 7.1 MB (7065277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25e0dd602742f74b6bf90260e21b730b4589f8c7d1e36329e0ab55a7cde28df`  
		Last Modified: Thu, 02 Jul 2026 05:17:46 GMT  
		Size: 39.5 MB (39489448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8a693292ede80d1dd699f93409a4eb0114192e96238715fc789034c11ed10143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5803719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c13615cda4f4e97778a556e1b7ae0df65a0f427b02bd2839985f773bfae99d8`

```dockerfile
```

-	Layers:
	-	`sha256:48861250daeee2f8e22378dea26e3e4bef7f84752e43d0df1d16a2e04110cb33`  
		Last Modified: Thu, 02 Jul 2026 05:17:44 GMT  
		Size: 5.8 MB (5796438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a6acb709f0a0da0ac43aa4ebe1d37c03b39059b408807dbbca3ff5f481aeb02`  
		Last Modified: Thu, 02 Jul 2026 05:17:44 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5204b44325b14b77386df91fb680988bfe31730193e589dea14d8a00ba636a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76080759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b688be935b681a6bdd18010b1800721c48b0115200f9c42daa58fe0ba1408a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:37:54 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:37:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:37:55 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:37:58 GMT
ADD file:e7546f5c79f7a8bd7a469346f2df5e5e441b3dd98eeb097f35a0e4e12f178e37 in / 
# Mon, 29 Jun 2026 10:37:58 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:17:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7eb07192b0445ceecf2631737a38663aecbae5a424838f6da1b061161080da18`  
		Last Modified: Mon, 29 Jun 2026 11:25:33 GMT  
		Size: 26.8 MB (26844294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a26fbd6d0832c9d1c155fdbfdfde61bb5c196fe7808b56446a6ea23042e268`  
		Last Modified: Thu, 02 Jul 2026 02:11:18 GMT  
		Size: 7.0 MB (6965526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b3654a5c8126f23f51797691063f1b2bda1b4e1bffa99509c3774363d45d25`  
		Last Modified: Thu, 02 Jul 2026 05:17:55 GMT  
		Size: 42.3 MB (42270939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:91a72115b9899109f7b613fb736e652018e6e76524ade5f3a887bf95c27158bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5805063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62497244286f37ea970d75e51fbea94a6a6d7757d662a68439cacddd66e2793`

```dockerfile
```

-	Layers:
	-	`sha256:f36e38800be66d39f2e06bb802c0fb0d81067321f57934d44d44e29874d1ec84`  
		Last Modified: Thu, 02 Jul 2026 05:17:54 GMT  
		Size: 5.8 MB (5797718 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:316d882f1915c12ac9c0b33ab9da560e4622480cd1d42cc0693da304bd212aef`  
		Last Modified: Thu, 02 Jul 2026 05:17:54 GMT  
		Size: 7.3 KB (7345 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5a7b15d12052c54d8896e14c51d6cc4523dff0796838acef74c5354151ee35fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74044047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f2f49a3bcc0d87449659d4b03fdd83f861424b339070194cdea81fd1f33f2c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:17:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d3f25c890d2750fc9e944989d89aaf654ceb542f012b4b9e34979fbdbcf79d`  
		Last Modified: Thu, 02 Jul 2026 02:11:51 GMT  
		Size: 7.0 MB (7019663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5b22396278e9ee31d9a8d05e354a713372fca351d785d175e6702aae71bf6e`  
		Last Modified: Thu, 02 Jul 2026 05:17:48 GMT  
		Size: 39.4 MB (39411200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f400341f18ffc9ea99f3b04d5e414a47ac5bf84b07c5f0a6b24a4b12bee3083b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5810193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd9962cf572ba81212afa786f9a08960545d44ac508c2a7ab5ad7d0eed6fe33`

```dockerfile
```

-	Layers:
	-	`sha256:417753fe0301ec670de450d6a010fc948ff036610d27deaf5e0ed38300905126`  
		Last Modified: Thu, 02 Jul 2026 05:17:47 GMT  
		Size: 5.8 MB (5802832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9176fea224e564470c9c11e960b6823b1df98847d028aa77d6c2eaaffb296a91`  
		Last Modified: Thu, 02 Jul 2026 05:17:46 GMT  
		Size: 7.4 KB (7361 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:be6cc763d9f91a1efaa13440a117fad881b492566a702e246f9a7050a2a31bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86569871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a66239d1b5e87dfa36de26e22b6122de125ca2c939f1aefd3635c064a8fd5e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:10:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:16:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d20337bb2367d3cd363a0ef138ba16e7601336c05438a0d309764bb4e356b6`  
		Last Modified: Thu, 02 Jul 2026 02:10:46 GMT  
		Size: 8.1 MB (8145220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f00add9343507c93477905bc36d9c17f076eb6d27516a7743fb060e8940c03`  
		Last Modified: Thu, 02 Jul 2026 05:17:16 GMT  
		Size: 43.8 MB (43782783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4c28011cc88e82d02817a755d0441122a7c16571c977d5b3543943335cdaaff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5811595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103a048dd540f9cb9944dad761d271e77beb35fa6032fe5ec4973e0700de1973`

```dockerfile
```

-	Layers:
	-	`sha256:24df24bbd8408419480b38f8912616ba884073524c4687155d00350f0225093a`  
		Last Modified: Thu, 02 Jul 2026 05:17:15 GMT  
		Size: 5.8 MB (5804282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87228c32b907751800fc149b9d2f1ade15d3dc7b699814f722db4f43cb4ca21b`  
		Last Modified: Thu, 02 Jul 2026 05:17:15 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:89edfc8d57c485b5f5cc6f56874e50ad3e9a2bcb24a122cbf7c96237c8dbc513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76632166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9bd88bc04c5d86cfc9a487f796ba4dc581dde9163ea5d35ec02252737d5793f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:14:21 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:14:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:14:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:15:00 GMT
ADD file:affd8a61d29aacfcdcb16eab30e54a594221a348af474e628ea9b42d0fe0b012 in / 
# Mon, 29 Jun 2026 11:15:03 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:18:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9cfac39843e3efdbf15fbf59366c0695406f119dc6b3e2da7bcaf14c5dcd66b2`  
		Last Modified: Mon, 29 Jun 2026 11:25:49 GMT  
		Size: 27.2 MB (27242083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401fabc21af2628cd68418e563fef9b83859a00444404bcb39692db183496776`  
		Last Modified: Thu, 02 Jul 2026 02:12:42 GMT  
		Size: 7.1 MB (7074922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629aeedffc948fd9313bb53b758a11ee5949a27135f4ccad872b74e38d9cce31`  
		Last Modified: Thu, 02 Jul 2026 05:20:38 GMT  
		Size: 42.3 MB (42315161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d942461835924fa50634906332801e9292d3ff7223dda655f64cd87bf6412cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5794137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1149ea86df346956cb03e271e2e19cb71fcff3485d32ac8f65cf9836e0cbb79a`

```dockerfile
```

-	Layers:
	-	`sha256:37cf713553d50026b7230d98dbaf02e7092a1577475d89a1b811d0c2e9100be1`  
		Last Modified: Thu, 02 Jul 2026 05:20:32 GMT  
		Size: 5.8 MB (5786824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7beaf804e1eaa06456e3c452341e95781c89f45956c53c27a2f0a366110595b2`  
		Last Modified: Thu, 02 Jul 2026 05:20:30 GMT  
		Size: 7.3 KB (7313 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ea94c80e46f0c997b379d0be6a1c9f61d12ffa335429404dc8b529288645879c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74600539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb40bc9d515e6b2e1f45a4109270a6f6fd590a4e56ed08592591e30bcd27141`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:10:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:16:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e28806ee6600c9c5296dddd06daaf0f9e73fea38326ccef0cb2fec9a8fecb9`  
		Last Modified: Thu, 02 Jul 2026 02:10:26 GMT  
		Size: 7.0 MB (6976985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c12927505d5f08b81d13ed3ce49278b60f851194aa72086c7f9afdf1b541726`  
		Last Modified: Thu, 02 Jul 2026 05:17:00 GMT  
		Size: 39.4 MB (39419423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5f5834118cc9d4407f307851d836d47d29fda431d6d3c21c9bff30d4f31ac548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5804638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2777f908d01a3bcc4842a1356af5ca02141a07cc24681a2178f1b799980a4362`

```dockerfile
```

-	Layers:
	-	`sha256:c207f3bb759c6b235b00b9204bce86a600373754e09f2b196aa4e8b4c751623c`  
		Last Modified: Thu, 02 Jul 2026 05:16:59 GMT  
		Size: 5.8 MB (5797357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ee99aadcf7d9d1ae8e629fed4e0b44a8c3cd1fc5c38a221af8f8cc2904a505e`  
		Last Modified: Thu, 02 Jul 2026 05:16:59 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json
