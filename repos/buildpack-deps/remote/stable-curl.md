## `buildpack-deps:stable-curl`

```console
$ docker pull buildpack-deps@sha256:7b0be211f92be19e2698686857d77f3e2aaab4e61c5a7ad1b2c38d99032e4be0
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

### `buildpack-deps:stable-curl` - linux; amd64

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:ed0a407ea4a53d936daa2fe9e2eb43370acda689a7d4ae95c46e49d5756fa6e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (71955585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dfef22e84027329bc265386fb28d5f1616d563838b91aa9fc6bb6e88b3473f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:39:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:81e30cd4e7ae71efcf81deb98233bbae603f424a67d390095c38d0b8b2e37386`  
		Last Modified: Tue, 24 Nov 2026 03:40:19 GMT  
		Size: 47.6 MB (47570818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d29a87ca490077f54b80c22054cab3bf32cf8e3c1fe5cce03a29c695ed2cd8a0`  
		Last Modified: Tue, 24 Nov 2026 04:39:48 GMT  
		Size: 24.4 MB (24384767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:546ce5f3d7c1f56bb183407a91da32975978070e8b0b7419f28735baf4eacda7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be2e13cd7fccde823cecf64076cd764207883c6a58241e5eb6d1f38715ea0c0`

```dockerfile
```

-	Layers:
	-	`sha256:de37c1f366fdc5cde8d472d8dd11f89c855b77337a05a7ea4f93a75eab0c951b`  
		Last Modified: Tue, 24 Nov 2026 04:39:47 GMT  
		Size: 4.1 MB (4130277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffae911af1516428b1e67bcd825ecfb100d461448e706308229fc222156d4bfd`  
		Last Modified: Tue, 24 Nov 2026 04:39:47 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; arm variant v7

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; arm64 variant v8

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; 386

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:396dd939889e1b9530c8a2f806658d39acfb4b6336a58bc16ecd76a849a010eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80272476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f34fc10fa390ac396768c1a21f97cbfdd9775692b7184da38e107c0c6b28ba1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 06:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f511b5b325c69d6a4a96a572a778958b1386314d7c6a837c0a1d614395b62b`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 27.0 MB (27042631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:966313b9ddce54db11d6feb6f91dbf90f8780623234386b8c746a1120e3ddb8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660ab186d27650fa2becf053d73bc412284ae695d9f8c4d71fcb3028e003199d`

```dockerfile
```

-	Layers:
	-	`sha256:2d6017d138dc64032696a669ebbcb482bf48fbbb5a6a08f0de327f5958c4fc3b`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 4.1 MB (4131129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:799510b2e510554f94244aeea227354720075545f724b588876c18ce544d049d`  
		Last Modified: Tue, 24 Nov 2026 06:53:10 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:5f0a8d00888bef326cedcaef20e0484742fb5acad45f108322b9f8a49cf07ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72875872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dba1b29b5d2b3713359a00673b2ded4cd8d7f67fc4d435595eed25fa9c7d3c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1795392000'
# Fri, 27 Nov 2026 01:31:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7e2a264f16d9da2cf2c29cfb971a35bc9c10b3f0d4b549dcc67cdd18cd01a72c`  
		Last Modified: Tue, 24 Nov 2026 03:55:41 GMT  
		Size: 47.9 MB (47895133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb165eb7e07c013a4b9d841a7203b137b6a1f04a59aadf7c4ffec67bf25e1168`  
		Last Modified: Fri, 27 Nov 2026 01:32:46 GMT  
		Size: 25.0 MB (24980739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f6917ab039c7f0c0cdc3912d031d99129693c165f9d55fb1796626b3d556cf66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4126917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbcebd2d36ed3522e296a48e1435b99c97219c000eb3bf2cbd6bff4c64d9291`

```dockerfile
```

-	Layers:
	-	`sha256:075315b9f99001d3db882eca369a4c22dde7039295d8039b0b1f56f6c1185dfe`  
		Last Modified: Fri, 27 Nov 2026 01:32:42 GMT  
		Size: 4.1 MB (4119793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bc63b3d3c54ba591d1a655893753a9bea612ad337600d8861637310abc7d9c1`  
		Last Modified: Fri, 27 Nov 2026 01:32:41 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:03bd2ef7ca2e173c2e6b4a957511b40195de1948213a5e34fada03aa55e27ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76312300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f1451e9c7880a8a0219892140eb2c0d6e9e20af7e70bb06ef41ebfbb97bf56`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:53:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e99295c5b1d848573a03490220a471f79f26f0d941445a1a1aafd0b9580e414f`  
		Last Modified: Tue, 24 Nov 2026 03:39:40 GMT  
		Size: 49.5 MB (49482692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3f4ce2bcba42a9f49e1dce7fbd9adaa01993b467a604f99739eb8a2c8ef380`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 26.8 MB (26829608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f280b32a4fef031dcf68784746a27f95d5caaa96af0fa2110ae89a89f0a6114e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e27cf6a8f1ea44c2e9984f8257dc4611685b6e252b8224ea5fc4ae79b3dbe2f`

```dockerfile
```

-	Layers:
	-	`sha256:297135dab4f8df9be3f5629dc42cd4a396a3c68ee510d15b33394fba40d09135`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 4.1 MB (4128697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a854413cbd4c8c211f058552783691e64b5bd2c207ef6644ca76008a912facbd`  
		Last Modified: Tue, 24 Nov 2026 04:53:37 GMT  
		Size: 7.1 KB (7085 bytes)  
		MIME: application/vnd.in-toto+json
