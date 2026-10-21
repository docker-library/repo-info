## `debian:trixie-backports`

```console
$ docker pull debian@sha256:8baf611f27b08118e374e14d3c8db66349bef000ad365daca3129ab3507eefe9
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

### `debian:trixie-backports` - linux; amd64

```console
$ docker pull debian@sha256:068bfc89ab973867a74f0e2ba4d081e8e290a066138f635e2b8815487629da43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49393424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8022a49191b7b416e6d177d6555873cbbda5b85accf3a32dcf8d692d88c5af`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:32 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865ecbc997fc1d4cdf3f23deede22be31d15b2e08a08dbba105577d3f0562018`  
		Last Modified: Tue, 06 Oct 2026 01:14:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6ace79038ee015b12886d95f8f4199f240e1bc98f3787c7d8bfb09fb5b9accbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809c1153d8aaa9e96aac45abe917bac10a8d9fd69f4cb33289d7c3c9f75820a3`

```dockerfile
```

-	Layers:
	-	`sha256:cfde1121d064a76be44dba60d9a9a555d9d138f6c6682f74a4f48371ad6c53eb`  
		Last Modified: Tue, 06 Oct 2026 01:14:38 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6020154c09c2ea976618a60e29f2f40b31cbe641ce898b43e8ae030ccb1c5e1`  
		Last Modified: Tue, 06 Oct 2026 01:14:38 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:076cd77a0977d16a56ceb96049effc490897285432f797c3b3a58cd34cf0795e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47560118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992826d2a63a7ace9bccb32a33a8c599c74b4ba3b8559c90740063d00cac9c90`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a7d42171331b896f009a1d89b03785bbf95d0d6603d81916619bf24f05194252`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 47.6 MB (47559893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9343a7b473caabd58eebd4c2d67be8c77677605788216aea3092e4d794905f7c`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:406ed8e9ee885ef7d1dd7b3e1851097ba5408031a2b2614e54aa9145d6bdde1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62179beb3113bc6668672bc59f86bcee9da3e58f731db5082893a168cab66bc5`

```dockerfile
```

-	Layers:
	-	`sha256:de9088ba68fba04d8f026325543ce3df654aae45cebad39ca4c6fa6826705d2b`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7fbe77e516c609910483e1380514089f0ac55d84cc694b6ba339741767f7ee`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:58e662b62f6782c23d368be27133a37ef8594eac14364352e946d42e6dbfd074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45813824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:491058d257a64e467a54cc532c4000cb625412e60853d26e4b82716832318218`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:28 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1754e402841fcf147f7bb4372f827a1d5e90cc18bd4014a1d7bd715e8ece4ecc`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 45.8 MB (45813599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb0837cd77d9cbb1f6d614d1b3883fcdf2115b5e0b8ac6c0368e4707f9f3cd0`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:74edb4f5ae3e6148070ce14b3b9f10a5917f6d8ae571828ca36078b8e9a607af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13e76d37fbdbfabb0da0239a989e4e87e476d9a4c13f9e59fe561fb0cbaa909`

```dockerfile
```

-	Layers:
	-	`sha256:7fb5042560697825f2ca7bc505495ba5982fcfd84bddb39524fb289cd0944304`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e5a926dbfa36103a8b7f0699e9fea4493ae42edabe072133a3a800ae27473c8`  
		Last Modified: Wed, 21 Oct 2026 00:15:35 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:6bd0789490ab3d4a7bb3638aca2e2417fd85db33476cb686c7d0a87d0a8369e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49761329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b2fd5d63b90a8519c8237f6567a4d1a39c2b605f98880a857b1d53f2a2aa38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:14:42 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6b4dfd998c36c7e438895099e28eb970e04cc7e7998c3ed376dfc013287826`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f53c61872f81993651635fb054c51a8329dd8bcf6e60c9296e171443bb39c034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35b9025bac707a38723cb5f5ee9a0c75807d2d94b1b09b458778061b87df27c`

```dockerfile
```

-	Layers:
	-	`sha256:ff1dcb1896c003cd852420c73b53473beba937d3978787714f5699a9862d73ed`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed5e2aabf8d94e585546ab7ee59cb234e53499e8ed60e7acf5232ad7a9941ac8`  
		Last Modified: Tue, 06 Oct 2026 01:14:48 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:51797116955a1bb0ead9a016dbccf785421f9adfc89f2be390f4703badff9bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50906320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d159f32668264a0f48a2c7e0fbfadbc27cbc5fc32f423ddea5a6448f4e78fa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:06 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ace453750484672581012d135658fd142a37f3cc1464965baca36cee819b3d13`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 50.9 MB (50906096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d406448de51cceb03226853c0ecc0aa307fb97bb6b7c7f889d3f53637749266d`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6693b5977440dac0e329c666a85c16458ffb0da0ad0b942e3d3ba4b05e8c9d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a021a6cfca8b5ec6514989f832c089c7b6cf5ed2938820b89c28634c2029962f`

```dockerfile
```

-	Layers:
	-	`sha256:03257c4584da31f0db0ef8aab5e697efae2c60b6e5349d945f3ad34e5b562138`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e386b6db9bd2190ed272f2f17658e8cf72754cbf5010c07306ace9f665321bcb`  
		Last Modified: Tue, 06 Oct 2026 01:15:13 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:44ba212194323a0ad253496527a425e3a6f7337df300001a3008d7490897280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53207803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd12034438cd9561f544242966443e74071caadd328d8ff1a3a446978b6faa1a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:16:12 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593bb4a634dcd221b4619d4d52de96c10dab31dd1483fba08d5f021d0a0a26ae`  
		Last Modified: Wed, 21 Oct 2026 00:16:29 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:613775791645f297b4e40d2f9866b19280a478682ebf7e1eaa70936c1322b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cfb2308ba52f0489ad8634860f4add05a59135bb30b9728466773caab03708`

```dockerfile
```

-	Layers:
	-	`sha256:097e654231e1539cd0db9d006d2cd359c29accca9955a0984a4040cdbac7c862`  
		Last Modified: Wed, 21 Oct 2026 00:16:30 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957ed835e8ba21e59599ca8264fb3a1c6494177f6c8e707ab0f3864a89d270e5`  
		Last Modified: Wed, 21 Oct 2026 00:16:29 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:c658a9ee6296a41ec3b0764dde51166558eb06ebc23d3dabe587331e55f0c808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a234e5ab6b18c957b710e4d64fbd030cd210d3d3d2cf3daa4d30c782912b3ddb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:27:30 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3ab39014d76987c122776872007edb4c19a8ff2f1033e90260b41de73e68b7`  
		Last Modified: Wed, 21 Oct 2026 00:28:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e8ef10a5fbd5cfac517f8fb5134db51181d6d20555d43b00cf8eee57cfc58419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad148a001c20175a9f42d88c83db8f0c88e99eacc1745fb13b0ea8cc5b6e825`

```dockerfile
```

-	Layers:
	-	`sha256:5061c6c761919e7ed3d93b64e395da59216e82b341fa71b92f24840aafbf5362`  
		Last Modified: Wed, 21 Oct 2026 00:28:35 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0093cd3fdf6d51791a47c90df419f5b767529a562d6b8edf370c364d9496dfc0`  
		Last Modified: Wed, 21 Oct 2026 00:28:35 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:84d2b197d38266c85ca7ba35863d874bf60cb12f6a65ccfd461b57fc5dce59fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49457225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e3d1d0a06dee6feca1722139d11726dc9a772f6dee8c0965c50adac307bb23`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:13:11 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31144be22f7c93566d7ab9b3314d2dcf2a7982023cca65bf63ca51492b852c70`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c25989c104b95a482cbfaa39a0be9ee17d159602894192182580e1757d906f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb555c6f878a1e4b54654376ad1c87d415c5acfcfcd1e077c7b6e81af68eae7`

```dockerfile
```

-	Layers:
	-	`sha256:70d71509fec0bc99484a5cccf52380b5f439f28eaeebc0616839054e428a156b`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:012de47fc0e150a6dcd3435609c449944c433fc0f3a61195a845d0c4a1ff5551`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
