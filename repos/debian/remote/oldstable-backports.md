## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:e761a274e122dab11bb702d54e96c083cef4325ea64e40b1740c9708f3ae40be
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
$ docker pull debian@sha256:3846f80bc8f4e68d3cc85c3b4ad3a6fb29332a739b74dba6b3c5c4db0ec0fcce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9fb4e57dfd0319be14abe6fe16fd31e5d12013582d3824fc11de63cf15cc024`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:35f659515dd5d431678ec3ac7c6a393ddd1078d0d646891a6599765a5144b573`  
		Last Modified: Wed, 24 Jun 2026 00:28:10 GMT  
		Size: 44.2 MB (44208151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0cc19a4bd9d8bcc683ffb29f7a27b7290a34c8cdf9a70f4ff152c016ce1875`  
		Last Modified: Wed, 24 Jun 2026 01:15:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d79cbbc553d6986af5e48fb1c43c972967c4c28d8123b422302b04a6e3303205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22aebbc6b08445805f3b8c7f4fc911de7184dafaab70302f672f1bc620a6948a`

```dockerfile
```

-	Layers:
	-	`sha256:ba34ef0da562307ce6871e5b114ecf21d86b8578691e5d0822e8276f442ff1a1`  
		Last Modified: Wed, 24 Jun 2026 01:15:21 GMT  
		Size: 3.7 MB (3736291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d404d59309ccaf510e81f72f9bce2974e7743a9f5813313beb5b7646fd4ff52`  
		Last Modified: Wed, 24 Jun 2026 01:15:21 GMT  
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
$ docker pull debian@sha256:4a508527016f248568d425de32b018914e7208dca4217a5777459c71005e5d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52347069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ba99624814e8fb301f31cc36761d4ef6e1851c7653503f7c73bd90081a7a63`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:14:16 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7321cb28d57d6b7c8ccdac8d30ebcefbda3f442b22ab533a0b2aef2f6f28fae3`  
		Last Modified: Wed, 24 Jun 2026 00:28:32 GMT  
		Size: 52.3 MB (52346845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605def5d6d6333b067ef56f70f51c6c1fe5f8226d714a22d6c8d371a0cf2ba6f`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1022a990184a92ab733483573a3ef229b00104b9fad096dae569fcb30efec652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df970a1b15456cac36bce76ca49591d6678c55f1f31e26583b4158039491e3ee`

```dockerfile
```

-	Layers:
	-	`sha256:cde68b85f459c639898db8d0e6bb612ae382aa5f66fe0c6f2329564c55e51820`  
		Last Modified: Wed, 24 Jun 2026 01:14:32 GMT  
		Size: 3.7 MB (3738470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5dddc45c8b0ee56115258056a5b0d42dd33f47f3b958175a35bdde155692161`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; s390x

```console
$ docker pull debian@sha256:e6dbc6bbbe9e0525a9c1e6fe082e21900e8535b59d64a5bc5cacb9152711a8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47161905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e123168174f802d98f310bf0ffe8324b31489e5f1a712a74d645d46a100aa652`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'oldstable' '@1782172800'
# Wed, 24 Jun 2026 01:14:07 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0f945b9568267786adbceb79f99464d6fe2a758310e284cb0ce77072f0fe24a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 47.2 MB (47161680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2ccb1544199ba755f0ddb0986e43def44de4877614702ecdf1ab7ce7ec8161`  
		Last Modified: Wed, 24 Jun 2026 01:14:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:80c746be48912dac965b585adf9c7ff323719e62c94a4e5658c6aab5803adc4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3736760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66a5b1dae3e51a0d9b6b81b766f31f0064070a3426fa8634f0631cff7c0d307`

```dockerfile
```

-	Layers:
	-	`sha256:fd30c774eb42c49a7cb4a96c73d2dfa36b58d7e6e360f4d8911b955038ae6592`  
		Last Modified: Wed, 24 Jun 2026 01:14:18 GMT  
		Size: 3.7 MB (3730950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97e190182a984a52a317f6c14e8ac00b7001b1dc9fb4faa5eb2ba56e81be4bc7`  
		Last Modified: Wed, 24 Jun 2026 01:14:18 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json
