## `buildpack-deps:trixie-curl`

```console
$ docker pull buildpack-deps@sha256:6bdd718f8e49cdc958c9ea0f4dfaafdeef600a63b190c1abd5c7b461f4e12c69
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
$ docker pull buildpack-deps@sha256:d71e7c9545370c3ba47a4d0493c824727a44ef8449ca84c3a53b9872b54e55ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75029186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e29cc609b6b817f0973bdbeafb2e030d107201dd775e76b74342814ae20079`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:96cb80625c78f137a29968cd0a819248ef3cc7bc9fa1efc498e2a8e203135016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e4714ec2cb0402f216f9480306e7166b81e85f1c8cf2f38589de6ff7f22dbb`

```dockerfile
```

-	Layers:
	-	`sha256:21ad59d25e8f9d57e8594329863f0d88dbe566ab3dde878a5c086a222bbac18f`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 4.1 MB (4128835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513717de488d2b7a299c9b2f25a9651410322986b778daa89c114403a986bede`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f4c931182a2425f01c61268e04808791513382494fcd8c099b032ef7db5ee99b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71925034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828b570540921d1717f4e5d679d4d2f8679c6da790b3639b68eca00f1c6865ff`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e83902e4163989560ed5e5a05e1775bc79e7d58bc33cfa8c9efdf74512f232ba`  
		Last Modified: Wed, 21 Oct 2026 00:48:45 GMT  
		Size: 24.4 MB (24365141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:dc66ead10242a8541a9f8974475eac8a1d48a802e8530460990dd2e66d95833e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775ed4c0bf5606da34c0b5368cef34c798e35a91b8749399a2d944782d5292ae`

```dockerfile
```

-	Layers:
	-	`sha256:1458db06073dbe9e415f5ec09034d12703eb91a1817e400e91907b2675cffcc9`  
		Last Modified: Wed, 21 Oct 2026 00:48:44 GMT  
		Size: 4.1 MB (4131825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df01cba1c536ee39de5c474c712de5cba1cd6b04115a9e1927757b6619d4004c`  
		Last Modified: Wed, 21 Oct 2026 00:48:44 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ab62859187a415fd39ddad156f37fb2a689595c3e1d06b783a18c4a1ac00c448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69455499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82b3728481cfd294585bbc583e5f2c264c354e0f5406ae19c83916b6d8de4054`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a18046e6eeb6e12f2b634e0f7041e5c3fe7d2c4ac0f9b15f4eba7d3be40fb25`  
		Last Modified: Tue, 06 Oct 2026 02:25:06 GMT  
		Size: 23.6 MB (23642235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1ac85fcf793d91da97a129d45f063b80df480a3fc30688b25d358300e88aa710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a5fc6efc8807f4cd90905688b662e55996343d8c5a3181978bffbe6a4f48c4`

```dockerfile
```

-	Layers:
	-	`sha256:6bebf5499cd0c481d8e05c9a13180653a7f1187bfdbc6a04bc922bd1620a2b85`  
		Last Modified: Tue, 06 Oct 2026 02:25:05 GMT  
		Size: 4.1 MB (4131613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf7928a2476c94720025173fc6bb180e8feddfa9e318d081f2506f42cb9682c`  
		Last Modified: Tue, 06 Oct 2026 02:25:05 GMT  
		Size: 7.2 KB (7158 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a2fad6ca5efa70fc3e05eebe041fcc55dae2efa841ec022981871b7941257713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74798218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f6165dfb423f953865fc5eb28dc10d53e102a0afdf8f1a1b5c68691e4998b7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:49:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb30108d3afde03433416a48caa9604703eb8530a12c943ec11a1e46a4d84a9`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 25.0 MB (25036616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a89f202609e0d83a5d9a43c391ced05b1894e21c78fb6fd72235fccc3927a83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4136918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839fc638d8f7f3cfb690859c3c0f4d78e357f4c0f35891d949b8c4b22dfdaf24`

```dockerfile
```

-	Layers:
	-	`sha256:7a2afe13da83b34f8aaa310913ea93f094bd6bbb836d1dd072a4f3333779d85b`  
		Last Modified: Wed, 21 Oct 2026 00:50:04 GMT  
		Size: 4.1 MB (4129740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed313bbdbb1bb3274a5e5d2d834fec910e00987b3fd9740872de4c939011fc30`  
		Last Modified: Wed, 21 Oct 2026 00:50:03 GMT  
		Size: 7.2 KB (7178 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3577c1c5b8fe4f48f30312ad0152a4c95df02d41c17aeb1f8e73a6b51a44eada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77709478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3008bfe088b742d5c3179e6d6ef9a0b3bce66cf8af884b70092473fcac2cd9fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:46:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e890ebc79ce3bfd401a922c9c49295c408b186867c30528006e35a6e0353fb31`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 26.8 MB (26803382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3ce08d5deaa9024c1f7ca565a9f2d7c2cb0b63ac0679580c04fd3ed2df7dccc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4134276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddebeb7a507347af5e51ad7eb8796d65b577900c69a571f4366949206e690e2`

```dockerfile
```

-	Layers:
	-	`sha256:c3cbf8516269fba8f16ab65fcf957c02f81a35beb9f967e9d93784835cb9bd62`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 4.1 MB (4127220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a9e21f24c53aee71f5d8ddd8ba847700114ef6522f99353c5d614a4c9008698`  
		Last Modified: Tue, 06 Oct 2026 01:46:17 GMT  
		Size: 7.1 KB (7056 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2e225243a8089642b5fe495b381b1c0fef88a1bd905d26d0bd569d2715bd3f59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80230235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a70c8e897b4cc9df9aad33455d4174d7cc9307cd2be044eb0b1969cd858278a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 04:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee8c75408fb545ab55e5cbdf6e0c4e4b171baf24f9b88c760adbc0ef14b65b4`  
		Last Modified: Tue, 06 Oct 2026 04:41:57 GMT  
		Size: 27.0 MB (27023111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8537694ae757a62b2f7e964f58caa5fb8d2851f3c78679bb499c5c205c23fd82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be32a03b34c06aaa5197e11fd4126c57c3d8627efdafd77fdf3bc7ccc984e478`

```dockerfile
```

-	Layers:
	-	`sha256:2d6e3f68b5a5bd868bec96ff1dd5179b3991e8bade78894d194ec820a805b579`  
		Last Modified: Tue, 06 Oct 2026 04:41:56 GMT  
		Size: 4.1 MB (4133958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68348a3a94aede01dd2ba656182968fbcb23c3a21c9f59e9a9509770020f6a10`  
		Last Modified: Tue, 06 Oct 2026 04:41:56 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:dc33e34de5877e0e3afd675009ad37aea3853158213893fb9f55e14dbe3c8b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.8 MB (72848959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25c06494961f35cfb9f1fddca314f623b479a4d38136183e88003870dbbd361`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bb4951203d5b3ea0a409fa7201e6a7324058f830cf788ec231effee63d5ffb46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4129746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc4cc7c2ae0a3109bf57a6edd7536d231ef6d2900df5d8208daa403c9d67d391`

```dockerfile
```

-	Layers:
	-	`sha256:38d6f66159ddc5f969282fd19ac11b56efecadd474611a29f7e9e20165221999`  
		Last Modified: Wed, 07 Oct 2026 20:16:31 GMT  
		Size: 4.1 MB (4122622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa6c868102400b905f4f9edd680d5868e6fbb00b16de64f852cadf9d24814a43`  
		Last Modified: Wed, 07 Oct 2026 20:16:30 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:434dc87ada675da32b1778c98523ad98ec1ce5782ac84e7ac06e59d02a39996d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76274179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44a2cf5336d7b843b726fa077f20af8288514e2cda14c9e92dd0c6c578c6e2b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:58:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d7b170e34e7dca9460179c992b6eda381e85641ec044682549ce9ced27e23`  
		Last Modified: Tue, 06 Oct 2026 01:58:17 GMT  
		Size: 26.8 MB (26817179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:38652f12b094c6d1f69d80c0802dec5284103d3698202ad0cd8ddfa447f68583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4138608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:671c9cffa3bd4f7c987bd1b682a2b45d7ca55ca15c8ea73cd98d61ec28d8a71a`

```dockerfile
```

-	Layers:
	-	`sha256:a32c6f41dee128baccabcd25730f67005f568ea873ae686ac2c3b95654f576ec`  
		Last Modified: Tue, 06 Oct 2026 01:58:16 GMT  
		Size: 4.1 MB (4131522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36893a881fc1d20a4f71cffa9de98e198a9f061d237ac479398d502ae4af7481`  
		Last Modified: Tue, 06 Oct 2026 01:58:16 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
