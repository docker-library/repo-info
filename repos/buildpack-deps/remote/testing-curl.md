## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:b303c9be59d4d5d6bbc0fac930e781f99866b458447f6ac0ee21c359a908b9ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `buildpack-deps:testing-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:568e65dd7a67ce7f94e016018e3f7c5563d0f1406b6768c05f281434f2870f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78326864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7340dd36f6046a84660683190f290ca0f843b29239c1c24f546892179d88433`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:39:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:65929644eb8cbb6d5dfb27c78d4d6cb80d806c5c2ed37c7b627d5a03a29749cc`  
		Last Modified: Wed, 28 Oct 2026 00:10:34 GMT  
		Size: 49.8 MB (49814412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea818440f99a7fb5fa66dfa730d96329ef0f515da61646e9569c136067cb34d1`  
		Last Modified: Wed, 28 Oct 2026 01:39:50 GMT  
		Size: 28.5 MB (28512452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:edbcbbe45f5ad3732c2c47727b61cbfe232b8ef4537a151dfe4d59fee395326a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4075888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8448a33d04a707eefa7812f2d4dccb7e55dd964e53c1fcfabf4eceb90e8d51d9`

```dockerfile
```

-	Layers:
	-	`sha256:6a1258025c4420aed6ca22f99b4e97ee10554177cb554daa54b5f576d79d0f7d`  
		Last Modified: Wed, 28 Oct 2026 01:39:49 GMT  
		Size: 4.1 MB (4069115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b118e3c254485839dc4d61b0a49631f8b5e1da2deeaeb68d20e9ed086b73e5fc`  
		Last Modified: Wed, 28 Oct 2026 01:39:49 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:62ac9d714e077b844eed5169b513f9ecf851ae3e97aa034e8ee670d26e79c1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71601081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9216234d2c31d1ada4967cb8354ef72000acd2d663bce3f85e6079e56c29e0d5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:04120beab8a285c5eddc34b1a64b3c13ee0d4b39ff8ed18236f14b053877c362`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 46.0 MB (46005247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c9ef57293f97f17623353304a5e9c68415a52dd2dd9d4d99de77fb61e76a2d`  
		Last Modified: Wed, 28 Oct 2026 02:21:32 GMT  
		Size: 25.6 MB (25595834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:212dcb74f23fe711c79198fa8f328f205890523d22b42ce6324f9ec4ecca9f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2b1c79a2d8cfaf14f77b8f8a8c0f8bca8bad0dbcb926d2aced0ab15cabcebc`

```dockerfile
```

-	Layers:
	-	`sha256:4f531e8e333fa7728393e7ae2dfb14b31c49e2b254afcbb527460d2bcc16db85`  
		Last Modified: Wed, 28 Oct 2026 02:21:31 GMT  
		Size: 4.1 MB (4070767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad116e578691ffe1e0d6eb57a618ce5a610ffe5803a54576b66e20fc839176c6`  
		Last Modified: Wed, 28 Oct 2026 02:21:31 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4f7c179dfc751a0bb1df55b3414e86db0a7fbced7126120a00e260f2212770b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76573019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7cdad038d1b16f3ec0d7937a01b4ff51c6af21ca898f84a6b2be954a4f643a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fa1a66f1c4403c3ff5e15f93ed7ef65ec5d3ed0834152f996b24e60199114f`  
		Last Modified: Wed, 28 Oct 2026 01:43:21 GMT  
		Size: 27.4 MB (27429765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:60dd11fffa88cdf365ba782213eaab7d61d8868c26e80958de22b07f50f5066e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4079468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83499c55cf85c53cd75ffe4dc5627fa194f616ff54c14c6f26d011806c70a088`

```dockerfile
```

-	Layers:
	-	`sha256:4ce45dc32e2ad8430983afde403a75e1e4af8187e477c7da80b2337b9eae976a`  
		Last Modified: Wed, 28 Oct 2026 01:43:21 GMT  
		Size: 4.1 MB (4072615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4590f8e94f95331bcc6b4c61019a746b8c90d776fc82f9e9b88157c034177c0f`  
		Last Modified: Wed, 28 Oct 2026 01:43:20 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:7f3d7b88da8ad0f3747fb581789d79b800062ad241ad21d48497edcb76d10222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80574427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81b493f5bc68be46fefb1a12fe663d298d6e40aeac737ad2282aaf1296c5aaf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7672c9acd98a1e06add035e6ee3e653a507f7b7f4b4765eff34df030dfbe09c5`  
		Last Modified: Wed, 28 Oct 2026 00:10:35 GMT  
		Size: 50.9 MB (50935447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1261df17d16061fdd3621921040d84a95a21fa70d7d73d1e467e8991489a8c3b`  
		Last Modified: Wed, 28 Oct 2026 01:42:56 GMT  
		Size: 29.6 MB (29638980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1708ccaf5cd73e46767e6d8668796767e2a3341ad1a94483bfb2e0795021718e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4072875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700e67adb0eaa643246aba87d293fd906d721a47c9cda941503846661c94bbdd`

```dockerfile
```

-	Layers:
	-	`sha256:73b02a1a32776d7c9d2034dbdee5e83f2f1be8a45e00f15a5dc41a0b3abe8577`  
		Last Modified: Wed, 28 Oct 2026 01:42:56 GMT  
		Size: 4.1 MB (4066124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68698ad37a38bad31de3bfc7397b33979ca864dee8592c622639bfd47f9d1d2`  
		Last Modified: Wed, 28 Oct 2026 01:42:55 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:7b8c6c33cb0df05826754a95dfe2468331827aa5545f0419d2a081aad4095d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85017109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d414516468a0080eaed5484079feb9041074fa227ce36bea05be3f1c4c2c2d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 04:19:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fdff336143ff910156b179d6bd4838477e3c227ef408959418ba38d6f8413346`  
		Last Modified: Wed, 28 Oct 2026 00:21:10 GMT  
		Size: 54.5 MB (54501692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd2f234dfafb380c4eb2278c6bd6d139786df244ad4114ab44335c1b7b7e444`  
		Last Modified: Wed, 28 Oct 2026 04:19:42 GMT  
		Size: 30.5 MB (30515417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0637d0774914bf45904de3c6b4e892e432f1361e7c9b0de352a13b072e2aaa64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4080021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141b14b011fb74bceb4e21d9b24613b6b70719fe6bcd3ef091000b2c156af1df`

```dockerfile
```

-	Layers:
	-	`sha256:e0b6831aec5c243d345f97a78389614679ee421d2b527eeede18f3217227472d`  
		Last Modified: Wed, 28 Oct 2026 04:19:41 GMT  
		Size: 4.1 MB (4073216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:953c41e9d528af187c6fbc562ee68738ec89403592af76e33854af58a1f555d9`  
		Last Modified: Wed, 28 Oct 2026 04:19:41 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c29b152bddca39f1645a339502b1544b83725eec20b79823044d4664148e4d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74795926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be062f7d4f08e4c32ceec73cf40459d3ea88be9b09aa1d452a94e032be8253a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1792531975'
# Thu, 22 Oct 2026 05:05:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:adfc591135148650dbf526110c7a281e2348fa5b65b8e9b8f646cec906264d49`  
		Last Modified: Tue, 20 Oct 2026 23:31:20 GMT  
		Size: 47.2 MB (47232438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285503d849255a9a5b7dbcab2c31eca38ccb189dd677888dc960cf188fa74a95`  
		Last Modified: Thu, 22 Oct 2026 05:07:49 GMT  
		Size: 27.6 MB (27563488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7be95a167974fdd5304897a3603220311cd67819876b942867dcf31b68704ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4066019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0b3474aa8ddba248f1a47c4e344be5f1c39b8c60b31869507dc272431cc9e4`

```dockerfile
```

-	Layers:
	-	`sha256:199b56119c10da300cf314fa30d27c7193c86808f05fe80e1d605665ecf470e7`  
		Last Modified: Thu, 22 Oct 2026 05:07:45 GMT  
		Size: 4.1 MB (4059214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad4e718732aa3bff5d6d6cc42d09f7e2c0c9ef3be59c016b2d8e906a92a82afa`  
		Last Modified: Thu, 22 Oct 2026 05:07:44 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:2d533ed76b096f677a7df3435f8209f75de46df51041e701904833aa1b5214ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76716127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31edf787ce8c527a0f38c4ede858b952810315be58c81ee8916f7fdbef63cd5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d60baeb673f726dfd8d5d1b46f51e89f23e17eb3992e524fa3e225597d8cc8e5`  
		Last Modified: Wed, 28 Oct 2026 00:09:37 GMT  
		Size: 48.9 MB (48910387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d053a611ec912d772ef2485cfd80a68a9dff4b99352e9cbbb359915369783e`  
		Last Modified: Wed, 28 Oct 2026 02:42:36 GMT  
		Size: 27.8 MB (27805740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e5e4b090821b66c85cce91bd03a622ff5ac1582e12ffb6f8c29030bb964b840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4077245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44be4ed42f434a962407b4b93c0f0b8e00e360d4de853598721412e231540859`

```dockerfile
```

-	Layers:
	-	`sha256:686ce59404936d9e89cc52c9e0b3b1aa2042e7a82e75ffe86e11421108b729c5`  
		Last Modified: Wed, 28 Oct 2026 02:42:36 GMT  
		Size: 4.1 MB (4070472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cae670631ccf6bb47db04749da2ce1f5ea05f72114b303043c89f8fcf6fa0cf`  
		Last Modified: Wed, 28 Oct 2026 02:42:36 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
