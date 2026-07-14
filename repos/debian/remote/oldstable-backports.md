## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:9fb95f157861445a31e93a85762547270a05af4373d7e9999a051c1e9e95160a
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:b2b0ca21cf7e30559a4f16a994b288055780c794cb78c9919072579fa46cb038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48497627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46eaf4c701d3c4aa8e2de1fc86c5b346ee220731f8a54a736a5df14f67d41ba`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:16:02 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3e68ca2cb02d1542fd795cb0cd59c6b404469d3f3330c036b62ad552a11d9151`  
		Last Modified: Tue, 14 Jul 2026 00:14:33 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00186c5307c1a91531a538f73fee09d3fc4ab0af33a50d674322943860099cf4`  
		Last Modified: Tue, 14 Jul 2026 01:16:08 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:08b0e0dc678ff5c7d07597f37a181f09c98d34f0a33a9ac61bc4321d164b1170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04908b7da3838bc7805accdce0e2e32303225ef788cdba6b773a2a99a727a2c`

```dockerfile
```

-	Layers:
	-	`sha256:c6ae94e2c08e5a07c0448be78f73e33906413ede38ff11b2a8fdd1913f290bc4`  
		Last Modified: Tue, 14 Jul 2026 01:16:08 GMT  
		Size: 3.7 MB (3734148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ea21e279fdaa9c9b58e41d4f4f39b8de30c67240d8784e4bdd0a49369be552d`  
		Last Modified: Tue, 14 Jul 2026 01:16:08 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:8c393cd5847a9cdfc7cbd6c6c389b61fe1ac79d3e9be35e06e264d3fa1b82426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46034046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb620d2971d80bda51cd641cc01e3f13d6109f707537c6c91f9196b0ff1e1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:02a0969fdb584b89fd1ab728977e8c21a5b2f2eef49d10b73e4d1bdf7bf1ca46`  
		Last Modified: Tue, 14 Jul 2026 00:14:04 GMT  
		Size: 46.0 MB (46033821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30888d5d44387d98dd2fa20f9e39b6f9e922dd5296bd93c4cfb5925e979f4759`  
		Last Modified: Tue, 14 Jul 2026 01:15:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:33d53d8ba79e1623913d5feae4cd977cf8f5ce5aabbe76448db71a37403f4a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfac22d7ad23c5dc1f14022944cb64b4510967ebecfc98b5dc65f6a808a1cbc5`

```dockerfile
```

-	Layers:
	-	`sha256:ecce8c3034dad6daa3d4c806c2ab90942cf6f602aa8231f4b1fe6cc26ea991f6`  
		Last Modified: Tue, 14 Jul 2026 01:15:40 GMT  
		Size: 3.7 MB (3734349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac34cee732d3900fe35070dfa0e6488ef9686a0299874e7e7897357a826eb284`  
		Last Modified: Tue, 14 Jul 2026 01:15:40 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:e21b15be498e11ee31ec216ff5fd625d8fd1009f95b70c6e13ad60ea6f69ab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae40f4139262993579bc2e07c3856a50c2c23f41db82093b812bb4aba411797e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:31 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d89cd37abc51b3c71475624268176c67878946dbfc97cf2787139061df153afc`  
		Last Modified: Tue, 14 Jul 2026 00:14:21 GMT  
		Size: 44.2 MB (44203187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbc03dadd2bc9d5d1f06677f8f6b9203bbcffae18c77b8e7d39232a8c4444e4`  
		Last Modified: Tue, 14 Jul 2026 01:15:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:890aa7c0ea7cf26fa2fa3620f89a0396822884a1d7ecef569fda2774271408ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db00e43fc9d87e58696406ed901a42a706a2f780287d590fa4eb9a794c532e87`

```dockerfile
```

-	Layers:
	-	`sha256:fb64ce4e0cfc5e4b5cac31af501d87908f4d6a221e89278da98c0de30bf4cc84`  
		Last Modified: Tue, 14 Jul 2026 01:15:38 GMT  
		Size: 3.7 MB (3736327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a312f55fc3c9c3e6d6e77b8a6aeee62a8a81dbc67801100e1ad15f3357860757`  
		Last Modified: Tue, 14 Jul 2026 01:15:37 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:9b1e849e720ead084c2ba555f8d5a28f678b27b57e640c529cd72664a90beb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48383915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0dce550d391ddcd2b5b16a161d8188a05c394ee6334bb56259c39b766932cf6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:46 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1b203ac913cd4b51dd1fa1dccf563a46a59b1470c188b5051d68475f9b69b71a`  
		Last Modified: Tue, 14 Jul 2026 00:14:21 GMT  
		Size: 48.4 MB (48383691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9b028bae8deba555bd705db90a960a8286be4b12aae313a16ad12a90048bd6`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7745a00420af28c932420cbe4e1ffeee584435e3ab8132d9b071a1ddeb9487b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8743197bd155488243d5c5263b6f947f213182b87aa76351ac043f88e8a9cfc8`

```dockerfile
```

-	Layers:
	-	`sha256:39a59239762e7b86eeff9c5b4dbf065638862543147f0d6d42e7421b957b6d6a`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 3.7 MB (3734363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a57555261c8fb212a8f322d0748dd6ebe78a0aacd42b560ca415bc6d78c9d84`  
		Last Modified: Tue, 14 Jul 2026 01:15:53 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:c735ea072be8799d141f213b62dacad855c09b737ef1af7f5a46844e58ea6ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49485666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619c96972f5b0c28f415db52f9cbaf0f7122f1c3a3fd40eecb2f69ae4292f706`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:15:49 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bd5e492879dc544e1612fa2cf6a5e43782f783699c2ad3ede47910c999e7c9f3`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 49.5 MB (49485442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a9919630a27401a18aca3d81fd09c7617d2d296aeb4d3e17d0dff7330ad8a3`  
		Last Modified: Tue, 14 Jul 2026 01:15:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:923f874efde4f4d0b67db2208a976a23550308463518ef60d39c7f5fd4ac27a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e938a66137da03a30165319f7370ff3f73956efb64c4740bde8d0af6393d84b7`

```dockerfile
```

-	Layers:
	-	`sha256:43badb81019b5f5db4867c548eaf8f06bdd91386fea734ce3d6fb7aa2b527fa7`  
		Last Modified: Tue, 14 Jul 2026 01:15:56 GMT  
		Size: 3.7 MB (3731344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2b23e7be786ccad5bc3e40f0d6de3d99a38e99bede7e30a8c8cc4e76ef9863e`  
		Last Modified: Tue, 14 Jul 2026 01:15:56 GMT  
		Size: 5.8 KB (5792 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; mips64le

```console
$ docker pull debian@sha256:ccc70be8e282afee541f05c5a53493bc0df61ef94f85009f7d244d0d8a867a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48787874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a9d087de42648565f9216202823dd3dc5ab6159f5b707446e92ab10ff75e46`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:16:24 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:462b1389dbc2413f2533206c52a4bd744a9e7317c8fcf23f9987da40f39e5b76`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 48.8 MB (48787646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d4370367f742f4ae7685678d588dfba5e6646d16b2ff04cb6a480680a8bc5e`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:db079a6763c9acff2b00d49b03fb3f553c8d9e890261e1026a4c59dd1386f888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 KB (5634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd22d3586db4d5d2cdaa5076bf8268f915697fd40798e031b6126ec477ec0b25`

```dockerfile
```

-	Layers:
	-	`sha256:139716415a6a0d8d90c3986b5005bddc5da3fcbb41b93a9bf94af72b0e12adee`  
		Last Modified: Tue, 14 Jul 2026 01:16:42 GMT  
		Size: 5.6 KB (5634 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:5ad1b8f2c4b327814d192a64596d1cedeca6583dfa9e14b11412f3a1896a90b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52342063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858158b52a7f931245414deed0e9793417c40217122158207ab169c05f93eece`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:14:37 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:19ddfbbff31ca31f9a38f2c4718a6094d3ac20e382c210b2a8cd2d1b079be908`  
		Last Modified: Tue, 14 Jul 2026 00:13:53 GMT  
		Size: 52.3 MB (52341839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed9436ce8463310dbd6b03490e93f467d5b424c020bee16b3592840d3640989`  
		Last Modified: Tue, 14 Jul 2026 01:14:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8a10b55ebfb673a4e76f4a73388b3190392ca68636fe90413840144cd0703f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7d56f9a168393271e346121b2801ee67bf48c206fd259db1c98818dfac37bb`

```dockerfile
```

-	Layers:
	-	`sha256:c0dbba50e632371004c300b95df2373849756743232e4c7fda58c2a2c0c343c4`  
		Last Modified: Tue, 14 Jul 2026 01:14:51 GMT  
		Size: 3.7 MB (3738506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecef27c87f3b8517e8944f87674574c7f33fda455268ca8af9c0ab6c2e943f4`  
		Last Modified: Tue, 14 Jul 2026 01:14:51 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:57194f0729ba45b66e8ccd44e4dc0e910caca118a8ded5176bc61c1c01073a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47157509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c8ecd2d7a971cf5af88bd4c6a7e7b1ee2f08d9ee617fb889622156afae58fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'oldstable' '@1783900800'
# Tue, 14 Jul 2026 01:14:22 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:cde4790de25ced097c08ea12841fc0f1cd784c5afd7d43b3c70c7d4d1f97ee2b`  
		Last Modified: Tue, 14 Jul 2026 00:15:18 GMT  
		Size: 47.2 MB (47157284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16803e993c23f41c6dbd6f87d511ff0d74dd3a463a8626939de04356f78d086`  
		Last Modified: Tue, 14 Jul 2026 01:14:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ff63fde17986dced3bfec4708d0e14df809a57910c5c53ef36d0d9031892c586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3736796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d924de1bf652f345d84abbb40f4a6d7de943e963538acb6cc010477d4559ed1`

```dockerfile
```

-	Layers:
	-	`sha256:510144e3fa770d6502c533163e6eda26a98d0972e41ee762dd12c9081c072bcc`  
		Last Modified: Tue, 14 Jul 2026 01:14:36 GMT  
		Size: 3.7 MB (3730986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6aa1f4fe191d29b383332b13d12a545b76fb62b42a738b8491dca3e2cada1ce`  
		Last Modified: Tue, 14 Jul 2026 01:14:36 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json
