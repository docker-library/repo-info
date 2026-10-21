## `buildpack-deps:stable-curl`

```console
$ docker pull buildpack-deps@sha256:55fcd3bf1065b5e44d0e4e9cf7e7f705d3e474ebb7904598115d0195dad0a0c6
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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; arm variant v5

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9d5614aa41c6f8b2b9166a579fbe5d5c301a979e618b3cfc5bde6f1afa3b35a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69451426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f3126fc5ce2a498e2c1b875ba0537aba664d7f981dc3448f5b92d582224113`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16e2f397e50daf634a3bb1659923e40dd3e4076bc5fc9bd98990ae4a7e2671`  
		Last Modified: Wed, 21 Oct 2026 01:29:28 GMT  
		Size: 23.6 MB (23637827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:39778f69cf0359b4846115754afc47a0c54c5f8090ec64935063aa3cc2ec6b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78cc88e512da37ea2b445e250db7c1b592fad776755aeb1f0b68b56688d8759`

```dockerfile
```

-	Layers:
	-	`sha256:5d1648e84e2db05793182219a1ae3e98c53ee8bfceb5e73d4393096e5e49c0c9`  
		Last Modified: Wed, 21 Oct 2026 01:29:27 GMT  
		Size: 4.1 MB (4130336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca566dea3f2680163995ff6b692aa1d7e9f8bce3cc5e9ecfd7e28b6be716d313`  
		Last Modified: Wed, 21 Oct 2026 01:29:27 GMT  
		Size: 7.2 KB (7157 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; arm64 variant v8

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f79a50fcaa95e1a0c3605070eb94660059096aced0b5760e1bc8a986e5f72474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77708264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ccfbd366f15b1fb7953ef80c779802265815cf491b031d4403299518ca645c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8b5239a77d1456103cf5921a9fac07686d19b0861ec320b2292a14f96f85a3e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2484ae58b07e68a43e1d36625e290d06f3eeba3364e8fae38caa4d3b072b155`

```dockerfile
```

-	Layers:
	-	`sha256:9e4cb5ee07a89a7d3dc1f6c6ba1bbbbdbf5f8e8a770be411075b0277245715a4`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 4.1 MB (4125943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:badc05f5297c0938429f0c1ed156719401cd5276de4c9f410fea6574550197a9`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:fd967a16ca759b7f52e7b4040745ec6fa89229e13366134d292d7d84ad4d73bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80231703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976c62c96a87c0d589c74f9d6e03bf16a8986b406bb5e9eec0a521f919a138f0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:22:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8de6f8901db850f86f9e68b13db2e5cfb33d704fa35193b08356b97ed1e8ec`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 27.0 MB (27024125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f17dee7ce1a1c63b50c06cd41cc25c898e928b5e217b2c488a726991f6f2b597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4139805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b867399e14562ae5228ec03c9a8bfe3086a423e28f295805e348444196908fc`

```dockerfile
```

-	Layers:
	-	`sha256:6294a3e2fc741bd9aecc432dca38f86801e94a4a53100d394ce27aead1e233a5`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 4.1 MB (4132681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0df9a6c8d60d04b1c8ec5db6cc737694757cf3cf9892382dd9117c6d3d21c35`  
		Last Modified: Wed, 21 Oct 2026 04:22:53 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-curl` - linux; riscv64

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

### `buildpack-deps:stable-curl` - unknown; unknown

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

### `buildpack-deps:stable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ffd7a989125035917c7c2001006730b13edadbe8153d83cd2fd4694385ac3b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76274360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957e2faf0035724021033ab66fa162b93f7c0ffc5529e59f6dd7780e1040a275`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7d6aa0071e4630d37fde1acec64b7960c6e068d98e963240d7392b9b99c38d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4137331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5b91566475a49e3f9039f4eb2e8f895a9d0bc52836a6b50c2acba02f879386`

```dockerfile
```

-	Layers:
	-	`sha256:ebac5d99cf8b0fd3eab3d989df2fef2405d532f06a62f8c84251e7fb72917117`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 4.1 MB (4130245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7610a5a32382a6ee1ca32627788c665d7eaa7dc5fb73b532c11beafbb0ba6ca`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 7.1 KB (7086 bytes)  
		MIME: application/vnd.in-toto+json
