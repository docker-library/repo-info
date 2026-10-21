## `debian:trixie-backports`

```console
$ docker pull debian@sha256:4fe500e941592237ad244701ac236e3cf42b50f08941f9c9422b0663b293dee1
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
$ docker pull debian@sha256:37c824a5559e9ba7d4b5a903c8c5cf554fade80ffbdfaf55fa1ae3bb010c3537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49393847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41b38cc4180a4b9640714f76f2ba1c04525a22744cd40a23a9e14426c2045ad`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:09 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d19fe11e473b47c4d5e48c43618d19ab1e0efcffba9c5146eb6f57a1eb66ecf`  
		Last Modified: Wed, 21 Oct 2026 00:15:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7c8b0c6d2613abf453355d76f48a23092c8451da7e9ede0aa23c61d6c00b8daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b72a42a9cf866fad0db839568d43353fdcbb765bb6b0abe251e07c7a6bfd876`

```dockerfile
```

-	Layers:
	-	`sha256:80b77008f0ca21a72ab3639f1ec80cb57e432b05f2aa51d2c0758bbce5ac48a5`  
		Last Modified: Wed, 21 Oct 2026 00:15:17 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6008d194e887dec76e11acc2e14b958a906262bc6c9dbdb04603d85b154e6e1`  
		Last Modified: Wed, 21 Oct 2026 00:15:16 GMT  
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
$ docker pull debian@sha256:69afc8f628f0a7d096ec76021266a57262cd286385bdeace0d2709a09abbc340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49761826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22b263ca13f86d850e451c0df2a1b3c096c4db2ceaf9b1c6416e6602097e00f1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44dd52dad806cef957078d90a3543f5ac5fc38a96b879cb7a45b5763add0fac7`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:723b1a91cb15b24abbdff5ef9b8a6057c652191cacedc2e312d95ee18bb65b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f39ce6dc32321b850a637ce761ea0e9c9057321e2d765be72eda7b00c7ed1a`

```dockerfile
```

-	Layers:
	-	`sha256:d97627da0ede92060854bd64f51781ef397d24e8f37115c4f313fbd07b55f5af`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2cb25767b0eede1e0f383c11b5fde56e170174e5ebd848bf1506ad925674f84`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:36c442d77eb179a587f336206152ef802d8c5e4897e0a403e112aec7cc0ac9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50906769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1cf4badf81e805fd04d0dd94deade4695589f9ffc541e361022bbd4e58826f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:15:19 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d610b9338e98b567bfe59146f70a45f37f2ad10e2295b816c329269d4deca294`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d4afad505169d5518e383a388cc0cb9dc9119f755bfba1668d70822546eb12c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23b081f7e4eb5d228687bd1c44df219279665470923d5c48e718f58dc536831`

```dockerfile
```

-	Layers:
	-	`sha256:d1e52e262af433919d894a74f6027edab24d9382bde176cac9c85dd37562e1fa`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5ffe9804113abddd0658b0d32685147e3847c3fed26f6fa14021f67760e5610`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
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
$ docker pull debian@sha256:d101aa1930f55210c265281e3d100a4fc89a9ab8b2a5637e5d416cbcf46ed5a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49460366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecdc05959d7512bdfee4628acdd9aab3730c476e05059b8e8161349fb62380aa`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:14:20 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9343a7b473caabd58eebd4c2d67be8c77677605788216aea3092e4d794905f7c`  
		Last Modified: Wed, 21 Oct 2026 00:14:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ab4f2cb8893febb105c59b64e57ef4fdb63f6d44e07b5cf03ff42eb1607ce749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b78c75ec653a78bf90f407d3a5670278ef89c1dcf7aed51b11f904a698b01d`

```dockerfile
```

-	Layers:
	-	`sha256:25b7d0b968d7a2e351211dab59bc40060aade037931306896dbe04c53adeb709`  
		Last Modified: Wed, 21 Oct 2026 00:14:30 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c0405436e6b1afe0a1c6324f01d086a13053dde3a5d84193f1fb81741d99772`  
		Last Modified: Wed, 21 Oct 2026 00:14:30 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
