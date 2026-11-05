## `buildpack-deps:trixie-curl`

```console
$ docker pull buildpack-deps@sha256:cc0b2d2de44c0ce43128570cd4d00160a25daf5734fa4a06f0ac2532241d0e30
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

### `buildpack-deps:trixie-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:62b6e56d617a201860f37a2f1ca54beba7d321dd667eeb24caab8444a4199c05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75046893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a94500c033c90a28539a93bc382a15c5a0258c3b5a88317b70519a991eeb6f3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:271c2b5b87503e82d0494885be6a3b1ea590c644d26d4e8cab9c7647e4dc5e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df943b49c8d8a70f193a4282917f224fdd4265e7c172b82c0fe7dbdb9480548`

```dockerfile
```

-	Layers:
	-	`sha256:a54479ce3d132b86b37d0556552958695876f2bab5a1f53be44e3a76c62fbf62`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 4.1 MB (4128059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae4f66aa6c5b8b5f94869fe902b1bdbe8315c7002680a9eded70915beeb4c243`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm variant v5

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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

### `buildpack-deps:trixie-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b531c063bc540ebe0237006863133d659b8eb972678cb36ab92fff03c1e2ea8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69467604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ca89175f1cf1371e264a947f3587718a0e9b2c8a7374ad3cee7c2e702ba9bb`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:65eaad6bab9a15148e888be90bc5ffadc8dd656c9ab79945feaacc617f0207f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a22b939cad4309c30702e5ebe1ad6985c67736d7f671231f04f01b2e1b621db`

```dockerfile
```

-	Layers:
	-	`sha256:8cca8abdb8cd1a96b0148bd001f3974ceda26fbaf68afcb5175fb46c9b04b871`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 4.1 MB (4129560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:605dabfe7357b32ce82f79e8c021ed7eeb57afe4203a91c59a862bab7bb801b7`  
		Last Modified: Thu, 05 Nov 2026 08:18:56 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:04dd05d183fd9c55f2f91db78f9a5644d257af2b19e0fed5ca9e83f90625c2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74815898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffab756ce7d392f05e23e26914a0899a022df16f0e8c054fa9b1937b0266e0b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:251e874905b0ef6730d3f0d3803c8f066f75cc7365c6b41e61ad2bfe2b4f21f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a55a977745ac339409c786183feaf47494f1d1ff987b324a81f95b25e01d242`

```dockerfile
```

-	Layers:
	-	`sha256:30e2b6070e18acb726218351c7364e7262aa74041d40eee70a9e727c87fd7aef`  
		Last Modified: Thu, 05 Nov 2026 07:42:16 GMT  
		Size: 4.1 MB (4128964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a752abc5d283881f3642eb7d2068d3ce251bfb17a5c8024438acf00cd9de92b2`  
		Last Modified: Thu, 05 Nov 2026 07:42:16 GMT  
		Size: 7.2 KB (7177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9dfb1b18bd3e2d8c71b84ec68ae5d409673159291eb81f92cc109da4ad2c418b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77720079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621e1379dba8b4eef69904ffd77203460949ee04b26261fe0def12efedda27d8`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aaf29afb1ce1e5740999550fe2a6ac0c58842192d6065ae813d71c16532e0f4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4132226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25107e3ac5c91caa897a3abd8d742f96f72a21e66f937391acb6160f5c268ac`

```dockerfile
```

-	Layers:
	-	`sha256:b72885b8713a1891b05e14f6c55963a09ea24835c5655d3efda46df2ecc2c70a`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 4.1 MB (4125168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b75d0d299b4871ed71434b52c4461fab1688e7867aed62d02c4d864f2ce41932`  
		Last Modified: Thu, 05 Nov 2026 07:41:34 GMT  
		Size: 7.1 KB (7058 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; ppc64le

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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

### `buildpack-deps:trixie-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:a1ead08d71ed2e7865348e98ec26ba7add6c2f1d8933cbfba8d54cdb35bec3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72864332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194dd20b292750b3110459180432bcdc7471cd8d6435eba4e41586e774759770`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Sun, 01 Nov 2026 11:21:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6b9c47bfdb663aa1d432fc6bfee0c5338e5f9e48ccd84b41427dc0fd31a54dc4`  
		Last Modified: Wed, 28 Oct 2026 18:37:39 GMT  
		Size: 47.9 MB (47891536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7c51a9da84f9a2839fc5053032d47d7167c1d7b755a3ac418f3c281c9a7469`  
		Last Modified: Sun, 01 Nov 2026 11:23:30 GMT  
		Size: 25.0 MB (24972796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:97d48c2c1c037258a98c73844cd972d652b371d9c91e142f51de76c1f9d23ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4127690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccae2ba408a45b295c20cb434435c877c6a3cf4caf18efc1d77d7414b391a175`

```dockerfile
```

-	Layers:
	-	`sha256:1d63c6d5dad6d46d5f77ab0dc0f8b9e02d65eaaec6645a8d99c8b2ed6e967993`  
		Last Modified: Sun, 01 Nov 2026 11:23:28 GMT  
		Size: 4.1 MB (4120567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef19c72efe5272f65e110ae6b953c813fa50392ccf176065cb19282b69b4322b`  
		Last Modified: Sun, 01 Nov 2026 11:23:26 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; s390x

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

### `buildpack-deps:trixie-curl` - unknown; unknown

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
