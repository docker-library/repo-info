## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:c0ee87853e7798d835fa5854502351a2462938ffac58f10dfd991ac5c1c3a8a1
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

### `buildpack-deps:jammy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4b086cdd7973c671d250c4739324295ba657029c954cf09e4b93fab71abf036d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36800172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a1bbaed6c7f32cba569976169e6ab7eb02d341548d5e2ceb095190a9fc0768`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ad02ac6f1dd45c7505795ba1f18c4b6f8b5c8eac049b7ded88169d2cade3ac5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9550bd96b747c4e9b18f924266b67f32a67167962feb65a5bb0f302b2f56b7e`

```dockerfile
```

-	Layers:
	-	`sha256:720bbe7d612b5cead4ab08d1b6e792e70b34a82d685aeb31f10a6d3eb47389f4`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 3.2 MB (3188955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c68033ae53f8d6bc4f814ad0a92566b0fd31c1dac3b07d7c68e2557408f1dc3`  
		Last Modified: Tue, 04 Aug 2026 01:14:37 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:4ce90e05878b06008b13916c171c2bf0c6c748375bf9bc773436349ebf8cf9d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33811914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc2b9f13bf089da60a5cd2234115ab50541f4bde45ae7bea068e52f4d861f58`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f7bcbd58f80e58cb8eb2102d69784c6f358e26e70fcd3e6a9cc38c76a81cf4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e2acf9ec96c10ddf844e23c39c7085424182eba8f7d677b7e9e38e2dacc636`

```dockerfile
```

-	Layers:
	-	`sha256:b10970b9a619cb4b2b070aa2ac134e8a8e968d387524c37bb489e021d5b71e16`  
		Last Modified: Tue, 04 Aug 2026 01:12:28 GMT  
		Size: 3.2 MB (3191262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a1bc5eac9ac0709f4163944c45b5d23bfb5c6c78e2b6647882d751e31e083d0`  
		Last Modified: Tue, 04 Aug 2026 01:12:27 GMT  
		Size: 6.9 KB (6945 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:04a8bc1f6b45e2892d84c8fe89e42ea9b07a93489351741bb6106f5a021f6c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34637965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a425124ce96edb95d74aecc51a310e8308e9800f529b5e12674576e8118b9e9`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:815cf008895753d7a7c41ca1e251fb40a0e24e05262010db14cb3c1aac6a764a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3196183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb3547742830b9374590de50364986a036ca88b59cfccf09e10d5925e8e4b88`

```dockerfile
```

-	Layers:
	-	`sha256:b47bb20795b94796f7482ae86eaa3beb840d553f9d640205313bc19abc33cd70`  
		Last Modified: Tue, 04 Aug 2026 01:14:20 GMT  
		Size: 3.2 MB (3189222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b6ac695ab55533ec5925c18bf6035ff72798102a9bd126830b2939121f7ebec`  
		Last Modified: Tue, 04 Aug 2026 01:14:19 GMT  
		Size: 7.0 KB (6961 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d6ae4d9473b6096d8575603ca0ccf841d303e689e97b67518af5101d082f5291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.8 MB (42780019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda8b2649a809006c00df502105642dcd7339e0a67a08ce0bdff648f0f62e370`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:14f7e42f09aa4474710f6f982078e70ed0bc2a9f382009fa3bd81f1a55b5cce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b73a57353eae3bff5705a342bbf54af53bcfbf8d8ac5939fdfe7173e707ca14`

```dockerfile
```

-	Layers:
	-	`sha256:a5447cfbfbcff63d1dd84a64f49c4cb7a758b2d7e655a511ced8cfe71104cc6b`  
		Last Modified: Tue, 04 Aug 2026 01:11:46 GMT  
		Size: 3.2 MB (3193591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79c9dc2931f50012c0f40ecedacb75b3b0937707effb713bb1fe501e62ae6b2d`  
		Last Modified: Tue, 04 Aug 2026 01:11:46 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:0f6b630b0882df8d02f2e1c7d09b685bb7785a8a0cde6272e9b800bd4a4f6fd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34316592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f88755a72b3829670f03f37e5b5c4a61d46855d08d0d524f715696edce07f5d`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:87022c1be4ef9f49f09b9bc3c7dc2566eed41c9603df5fe44ef010d4cb203531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7efe8aeae3d59603e86da26aed46440a9bf785f1f43e8e60a8de6e4eb5a0f2`

```dockerfile
```

-	Layers:
	-	`sha256:173884c20079d873d2153db329770cb865c39750290b4d9c0d5e2ebdd0833093`  
		Last Modified: Tue, 04 Aug 2026 01:13:10 GMT  
		Size: 3.2 MB (3184215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d5327e06b046c37ffdebf3278f16a4b00aeb185705efe39252d7c1af5a4fc44`  
		Last Modified: Tue, 04 Aug 2026 01:13:10 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:122045cfb63e61491b0f27cb99891f3e1d08f9596dd890131e4ccac850b019ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35184560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc2512ec66ee354f62b806ae1c14a240cb807afad951459de608d61495f41a7`
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

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3bf4ecea8164cf49c849663d3b0b0b3eba001333074218416e3086a2c76251e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dbd6139d606e2a1e57564e1576ddf6360e5f11d695698978d6cd8e5687dd74`

```dockerfile
```

-	Layers:
	-	`sha256:3dbbbe0536197e401c8c4b70839e85c455be444de94e6dbac9f1d813bfa0a5aa`  
		Last Modified: Tue, 04 Aug 2026 01:11:26 GMT  
		Size: 3.2 MB (3191172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e099e55478d8e439019001dd6595d0a766dcd1327fced3951ed6191cc4700c7`  
		Last Modified: Tue, 04 Aug 2026 01:11:26 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json
