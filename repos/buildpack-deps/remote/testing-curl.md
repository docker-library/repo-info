## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:69048671831058d84a2d79c14608a97aa62b743c79ce5f253687f2fdd98094a7
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
$ docker pull buildpack-deps@sha256:ebdd3d0bcc46573b8e87f6a3f0217dcb967ae3c078f2a47e482fb23b2d20df0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71600908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75d613af0f97880bd9b7176d5cdc54dc76ede40636b0c066440f1d713c76862`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 01:29:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2b392fd5f07f5ac3cc7f94fe6fea253d8373fff52e6f33a7f4c7991028e3c990`  
		Last Modified: Tue, 20 Oct 2026 23:30:17 GMT  
		Size: 46.0 MB (46004148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea395aedcb65392ccd5e084d6140b57248cf74d14a3af87f8500db3ad2dd3ea7`  
		Last Modified: Wed, 21 Oct 2026 01:29:15 GMT  
		Size: 25.6 MB (25596760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f15c20d83c327c6789a08ded5c0a08387212e53e4cc39722b62712c4611082d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4076613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce972821beb517d2eac34781bbe0eb8e4cb923b1f2f7604ae1e47f4a34843489`

```dockerfile
```

-	Layers:
	-	`sha256:3c2bc45c04f354cde33ef83c786b0479d15e9a82c38550ac2d327fa3c97658c3`  
		Last Modified: Wed, 21 Oct 2026 01:29:14 GMT  
		Size: 4.1 MB (4069777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a91705037820263a03075d67feae19258982f10486e1caa9321dd27665501775`  
		Last Modified: Wed, 21 Oct 2026 01:29:14 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5b8f2dbff6ab185fdff87f7c0685e19b92e4ecdfea29f8fcb2440a7296217671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76573642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5350fac7a523ac8e27d9a903d582163aa426fddb9f4757be06192a8ab10fac61`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:49:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:92027717a2c3877f42b4322ce7e4584c8ba10b96c54d312a7823fd9df6cd664a`  
		Last Modified: Tue, 20 Oct 2026 23:30:26 GMT  
		Size: 49.1 MB (49142449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550fdf21a4adc852253d7b2705e811e8361138dc148c930f266d52d8b12546e3`  
		Last Modified: Wed, 21 Oct 2026 00:49:51 GMT  
		Size: 27.4 MB (27431193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cf80106d34c3682411356150385da8599fc6e69e52553042284c00f17b817138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4078478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41accbe4637b11e110dc94d35016e5634f816a1965b091be3df568cfa98b5dc2`

```dockerfile
```

-	Layers:
	-	`sha256:7bc1a47b5b8ca6e3d1b4fc5e18535ae2c5cadd8430ee562d20815728ed780406`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
		Size: 4.1 MB (4071625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4452c6694bad3bbe70b24214f49a0fbcefeb988e436a8eb35f02adbb66892d56`  
		Last Modified: Wed, 21 Oct 2026 00:49:50 GMT  
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
$ docker pull buildpack-deps@sha256:a1890dadc42d5eb023b2e0e256621098b868abf694501d7a9d0ec6d4aee2f27b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85017749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddb6dea4a87408e5fe47a40591c1db3b85e95ea6223d382a547b8b381bdd6c9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 04:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7563a816b2fdbaba742be8a6a1b6e59423cab6e5ab5f29d804cd7dabee35741b`  
		Last Modified: Tue, 20 Oct 2026 23:31:51 GMT  
		Size: 54.5 MB (54501625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baee4bad0395e17c4baa7c07b335302e6b2ffd492495b2f16305e31b1b517d46`  
		Last Modified: Wed, 21 Oct 2026 04:21:42 GMT  
		Size: 30.5 MB (30516124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d9cb0a07275b42d837bca8637f596e4c994d2ec199a8622589f94d1bf31d775f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4079026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e890f2f6533ac8a6913799a2e8f07dab8b51aa7d20fe6358a5d124ca2e3821ca`

```dockerfile
```

-	Layers:
	-	`sha256:0daaae2048f724fb9011ebc1507f0f075867479e2f1f52ce61bd9df69c67c804`  
		Last Modified: Wed, 21 Oct 2026 04:21:41 GMT  
		Size: 4.1 MB (4072222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:194695e266188bb3e222713529aa2cc79192e01a5e1b18920885d55504420857`  
		Last Modified: Wed, 21 Oct 2026 04:21:41 GMT  
		Size: 6.8 KB (6804 bytes)  
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
