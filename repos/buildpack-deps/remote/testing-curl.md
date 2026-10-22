## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:d1d2d272fd40c52d5ea920530e631924c0633e0c453ad975bc4dede0aacb6848
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
$ docker pull buildpack-deps@sha256:b4ad81682e68e6bf304df114871ab34e49f040b7df86367a61c48e94a7fc153b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78325930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e0f77a68a4590e43db1be1537b9943146a2c597014c4c73812a9ced7b32ff6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:46:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2fe4b6091574b3f1b29a730c59818868b10f42ed61e8c86f51e916f6230cfed6`  
		Last Modified: Tue, 20 Oct 2026 23:30:29 GMT  
		Size: 49.8 MB (49814335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48a2909741e311cf0ce7afcff0c4a557e9dfc7e2db7d533fbea455c53021047`  
		Last Modified: Wed, 21 Oct 2026 00:46:17 GMT  
		Size: 28.5 MB (28511595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:50fc402ae5be110d09365ba87b178ea9548e45d72a56ab12c49831b7b377a2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4074898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e5f461ce0c64976a9ad5ddf8235e37fca8c423f0d5564aa40ff973d2b8a4ba`

```dockerfile
```

-	Layers:
	-	`sha256:b915d3d0cdd2d5fbfb1f71352e25d3133c3f0cb1c8a6745e7ae27c6e6e1da473`  
		Last Modified: Wed, 21 Oct 2026 00:46:17 GMT  
		Size: 4.1 MB (4068125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:208d357322c11ae1767f7e33c56a1e8ca9e5fbee596fb639d19e6d1e86ee701f`  
		Last Modified: Wed, 21 Oct 2026 00:46:16 GMT  
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
$ docker pull buildpack-deps@sha256:90fc667cc8c045497308725aed90972733f41001c9717978e91558a42300c721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80574112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117901e71037de0fbbbf53471f503f04ce80d95723453b365778040ad953da6b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 00:48:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a82d12bb7ac6591825acca7b46cb1bf53a45a71b72bdafbeffec867fb8981dad`  
		Last Modified: Tue, 20 Oct 2026 23:30:34 GMT  
		Size: 50.9 MB (50934347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd43726af5936a5f1928036813d115245d1041ee25b63b0653391c676145f78d`  
		Last Modified: Wed, 21 Oct 2026 00:48:38 GMT  
		Size: 29.6 MB (29639765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d1eaa50e1971c8e1968cb09541fa6f07cd5ebddfd5cebecff1dfc343de0e265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4071887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6872b82c64bc1cc822edca565b95567b910adc539bafaa3fa8dbf24d9b5759dd`

```dockerfile
```

-	Layers:
	-	`sha256:ca0e9ad6bda427ed377de3fe96f61e6f7e6529f1ce39f4a9f475300cff56451f`  
		Last Modified: Wed, 21 Oct 2026 00:48:37 GMT  
		Size: 4.1 MB (4065136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b91fc926c8d2e2d8a2cad557d9ba70f623a8cba39b962943d90e008f80225111`  
		Last Modified: Wed, 21 Oct 2026 00:48:37 GMT  
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
$ docker pull buildpack-deps@sha256:00cf5040cd1672494d05177249b030454d5482a332ec9c1dbbacf1c1296393b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76719222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f784a1846976e9777554c5af352e5691ca1ba2144c9bb0b479982e8c2329671`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 01:09:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9cae28ecaf50579691c9c86615c8c483a4effc3bfb6a1813d6dbe1e36528a31c`  
		Last Modified: Tue, 20 Oct 2026 23:29:15 GMT  
		Size: 48.9 MB (48912053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd63e277f96e809fcb85e7de282f52c51ae9e1d2cc78924e1abaf6d1deebe3d4`  
		Last Modified: Wed, 21 Oct 2026 01:09:45 GMT  
		Size: 27.8 MB (27807169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4c2c4e649f02bac30239e080843d8de13371e688d8d0d68ff891ba2b114a2d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4076255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da1122e2c1d9fb9dedcfa9d134d872c84f0807e260405ba2dd78c21d9c7dc67`

```dockerfile
```

-	Layers:
	-	`sha256:ac9d773b28a66baafd6ee94b5bfca1192a60bfefb0b171548b07595601e67b50`  
		Last Modified: Wed, 21 Oct 2026 01:09:44 GMT  
		Size: 4.1 MB (4069482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42bd30ab794fbceb83b17d0539958345da7b12abf9b0808856b139c54d1d662c`  
		Last Modified: Wed, 21 Oct 2026 01:09:44 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
