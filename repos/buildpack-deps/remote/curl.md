## `buildpack-deps:curl`

```console
$ docker pull buildpack-deps@sha256:9969322b9314660e76898d9bb455b498fbb71f5c00cb125853347534726e5d1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:02cf37bed4cf99845542589e7d7ef53c63665489c8015371f4a5dcb64b747fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75060166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adee5db27ec48f1e3919204ef5ac4a92982cb4e5c5239a1799004474d3796b7e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0be6780dc18eb58a60fabb4c8bedb0c3ea852f4f3c7d199d0dd2ca073068d3c`  
		Last Modified: Tue, 24 Nov 2026 04:39:30 GMT  
		Size: 25.7 MB (25650878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bc4d5e75127544cf0bc18056141c90951eabf3f1ac53beed055359544174f92e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4134373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8752cb794bde5662eeb9b1ce58bc830d3b7b2a9ccbfe32c32efb7bf195355188`

```dockerfile
```

-	Layers:
	-	`sha256:325f0faf9d43ff27cd950653bb3d017735e58a443f5821fbcab6953f1114b84a`  
		Last Modified: Tue, 24 Nov 2026 04:39:29 GMT  
		Size: 4.1 MB (4127287 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38fd01b4fdf3ef27f1e7ca25339232b7f033e35191ff0ff5420dc6cddac3eb8d`  
		Last Modified: Tue, 24 Nov 2026 04:39:29 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:5e6d9f92e0a68f890a1613adad1645c4cb9bc69087ffaf3656b1e7a776e308cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71943792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebfe46868a28ed7e53eccaf3507f4ab38f47a8b15ff7af2093ba377b7b57e529`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:40:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6014ad01ba3bbdd7a5930a9421ba5183b08db4d400276b1280526dcab0eeca2d`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 47.6 MB (47579859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb20858af143effa2a6ff08699aefb8066d30be903ba6746924bc47d13b3548`  
		Last Modified: Thu, 05 Nov 2026 07:41:01 GMT  
		Size: 24.4 MB (24363933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:49892892939f0e567b9f5fc6becfc0c4465ea67c1d6d8504817885c983a896d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ffc929ef8fe2fc02343fb8bdd8fcc9a751a0ed17d881e1360bf4b7fb861013`

```dockerfile
```

-	Layers:
	-	`sha256:de88213c4147b3d57dbff3f6b0e832e402ec26ed820742a3dc66677812a64cd1`  
		Last Modified: Thu, 05 Nov 2026 07:41:00 GMT  
		Size: 4.1 MB (4131049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce7ccb5ad73ba27ac7d0cbb7eb681d226b7fe25fcf880573ff4bd20597e312b3`  
		Last Modified: Thu, 05 Nov 2026 07:41:00 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ad8e5c1ba2d7292070fb0d94cec4e533d35deb8703afd91da260ef663f00ccee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69496274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7ac8ce32aaef91b41b84b4c549cc5a184c4bbf8effecb97df1420cd8abc290`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:16:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfa0232b027632cfcd6c75af294b9fb093493d5e9bedb208e40bbda0d946291d`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 45.8 MB (45838797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a206e093b7d6b9756ce6436106bd63bfb623d6bd0cde12e4a8b4c232298b048d`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 23.7 MB (23657477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ce5bb30355a93eac625d972ad0a29bff9840f7e29f2201656b1b41ad4a06884d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc42b748a517233c8c2145cd19dfb3dfd126cd6663184f9f4f935d68ebbacce7`

```dockerfile
```

-	Layers:
	-	`sha256:ec97a7037376c84733773fb415df180271a884e60ed86195b2d6211e574fc285`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 4.1 MB (4128788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4af55953c28e99e443aed22d51cd6a8540a9a988f480ad568815e849bc980e1b`  
		Last Modified: Tue, 24 Nov 2026 05:16:21 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4c90bdf326e8230cfe469129d1ff3bfabefb2200ddfc6ab17358b8a06921ffe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74815967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4b9a9d1e54893d2e90683a45ac66dc6065f919d62cb5e83f72f38cbb5b2a92b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:43:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dacf7f1531c38a9330958dd49f965097481ac7feb033dbc834cab26a8120fa0`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 25.0 MB (25045881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2688b9fe74f588692de64053fe320a233789030d35a6ab4f34dadc930e677697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4321db6334664ac482726e8379ab4478ce53919cb92dff111bc1c9d2ed1f499d`

```dockerfile
```

-	Layers:
	-	`sha256:404109ee99f3f80b7eb36336920803ef732e46485d0fad559bdce609eabef1d6`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 4.1 MB (4128192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db048a74b08b4b2d88d0f053b1bbb56d90fa66064572b52e56f5614c236ed0b6`  
		Last Modified: Tue, 24 Nov 2026 04:43:47 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:25007899b487c9324d1887344f81aa07423586f7870c06b5b9d789b8d8fdfe29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77735787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92e2f55bdb7d690a842831cc06ec572bc1c9919c8b8d797f354943643536a62a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9af4383b67e6d57ef0b9b950c7fd66e6f3be9666b3ba1dfd64327e86ab4a7c8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 50.9 MB (50925445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad941d6d2e360c11be5bab67f076a725561b77784d7d2677f094938e20cc0c5`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 26.8 MB (26810342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0c1564526d8a961b7322ba65db12beeeb3eeffe8e3fa18f0a13d1774830bee15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4131456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2516adb10a1eb35c4d2d21927c50db03d7ab86b8982ee1123074b01db5eb3aee`

```dockerfile
```

-	Layers:
	-	`sha256:791e4167c2da9c88eb6282d1541c73c19f9d69b0b6c32d05b26513f4ea71276d`  
		Last Modified: Tue, 24 Nov 2026 04:41:39 GMT  
		Size: 4.1 MB (4124397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f357ef359bb332a4e726764d5f92c15c620d9058753dc715be9b72b7e82f7fb`  
		Last Modified: Tue, 24 Nov 2026 04:41:38 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f237b4dfa29c394ea7a450c509f9f17d1adb57ba84fe600f02eeab5d44b7b10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80248790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8f3bf45996d9f14541cf46d23d8e08f8813d79a331e7437598db9d8a46418d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:608b936dae81327e6c50c22c0a17b3170f2de9ed2d13b78c98bb5a6a8970998c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4139027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6ad53da8f19ed4e4cf3e2938110e64430941d1936fcafce827e4fa8eb1cd44`

```dockerfile
```

-	Layers:
	-	`sha256:ab6a54ab7ddd19cc02dd34264f784f44c20d65d613ccff670d1c1c24b5ddd0da`  
		Last Modified: Thu, 05 Nov 2026 10:10:23 GMT  
		Size: 4.1 MB (4131903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:959cf8fb06a80b9375dbdfcf3af33b95e45e2e24831a0d65cfa7f3aee9e5d01a`  
		Last Modified: Thu, 05 Nov 2026 10:10:23 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8640d1670cce948ac73c8d119648a3e66a0d4d3bc3869770e8eb3e476fc72f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72864925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0e43dd54f792bc601757f21eb20a91a5d8a4ba701b1ec4952e800aa4dd3cdd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sat, 07 Nov 2026 04:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d09fcfc16843f31e6a8131b39886115ea1fdc3bbc9a4874cd58d30f18e2a46b`  
		Last Modified: Sat, 07 Nov 2026 04:24:28 GMT  
		Size: 25.0 MB (24972690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7a53707688f6b0c5a0a99c8da27ac0b05e946333e2e629a9d23165daeb49799e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4127690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043f011fbeed2ee7e0d89a825e92cb13dbf193480a8f161f2b6caea3da28b254`

```dockerfile
```

-	Layers:
	-	`sha256:a064fcc6eb15b8ee9b3372c4da0c1619f1fbcb62ba2d813796a33f3564cd4e19`  
		Last Modified: Sat, 07 Nov 2026 04:24:25 GMT  
		Size: 4.1 MB (4120567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aa18afd88b2ab4595415b8aae977690fbbaf673f41d0607d0490eb25b703e07`  
		Last Modified: Sat, 07 Nov 2026 04:24:24 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:710694d5269256a95b597b89fdd4af0c8047eea035804bd0a8c2c25516331299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76291193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b660b5b44aa42f2fbb43e952b886eefa6f00fdfa7437a33ecb8ef4b4fa95df`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3d0a8d2e6a320bb9ba6a886eebb91cc67878ddbe46032a9ad486e33e6d5e093e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047587dc7919985b5bd7b73af3084e81ecc61ac1967320f1db20655fd38a1fc9`

```dockerfile
```

-	Layers:
	-	`sha256:c4df6c7a81aad35998377bf407ca1645e7190bc5554f143b76f9b6e0fa49a536`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 4.1 MB (4129469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51fab0b21caa9143a8d1278d8da81a13402916f0aa453d7c90d6bdeb4de53be5`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
