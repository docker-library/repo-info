## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:3bf6d78572215f2b59921a2a55061ffc7458a867568c99ea99e6c19a05ad3dbc
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

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:92df1dfa992d26ca615c810f944e74db25b978885db516a478b53cb947e18562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78134918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa60f917713e05f580cff99d4b1df0f0d362debcbcdfff709b1da3b0d08ea52e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:51:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f16f5a97d51498e5eccf3dd3e5e6ca2746febdb9dc2913a353263b85031a5c09`  
		Last Modified: Mon, 24 Aug 2026 23:20:40 GMT  
		Size: 49.8 MB (49841754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c06668f005a26c26ade5e0901dbf29a9a96d7b7fc2d00a4c3606a2bde0748f`  
		Last Modified: Tue, 25 Aug 2026 00:51:10 GMT  
		Size: 28.3 MB (28293164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a512dc321ae6351b966dc1dbbd6c01eb29161e02d605ba4d0f1b0dd9c792aa72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72bc562f8bf13abfa106b20f915a65ebe491a0e47e01cc81d4096fa7570654c`

```dockerfile
```

-	Layers:
	-	`sha256:5afe83caf8285eacd9c11959e11c20320f94141af1d2b0c0e2ab2c61335a92cd`  
		Last Modified: Tue, 25 Aug 2026 00:51:09 GMT  
		Size: 4.1 MB (4092306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c9a93eb1e591130230af7f10d2586d5c983dbec1c48e4e827244d41f9cdd1b`  
		Last Modified: Tue, 25 Aug 2026 00:51:09 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ec01257a153375f6d28dbc8dd559b38bf25697f5f0ee5191940a01f9d49ca5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71893877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0482325ffc2e36541a86732945c14678772c0f0101f0a01fa5921dabee5a1ca1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:93ded4b7c05a7e1f57992accf71bb95868cf9862709d7797c5ae1d793fbf1bc6`  
		Last Modified: Mon, 24 Aug 2026 23:20:31 GMT  
		Size: 46.4 MB (46377548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e5172f32ce5891ef76c4f8bcdbe5c56406b9361049f044d181a58a2ba42a95`  
		Last Modified: Tue, 25 Aug 2026 01:33:01 GMT  
		Size: 25.5 MB (25516329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:210aec3d614ec51538584df0d72e83ec5c12779f1d010274a34d22acac7e1ad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4100783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f870e6c4299fa06ebd7087c1bdc8fd2c6ad76c58f8124da187de2cca8729874`

```dockerfile
```

-	Layers:
	-	`sha256:00fced12f03c033f644d6081addca7872469199031251e8952247436d6a26b23`  
		Last Modified: Tue, 25 Aug 2026 01:33:01 GMT  
		Size: 4.1 MB (4093958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e73f998b364e59e276858a9dc82e7eccebe29c162b7fef91903ddd2376ad2227`  
		Last Modified: Tue, 25 Aug 2026 01:33:01 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:691368afb0a1926877f42aa3feba8ab6b53e09fe46f0f9a4a33d58a52189adff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76794357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaadfd2a1ae49b41a48a4a4f0ea0d4284e14316cf04d3db30b551979caa7977e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:af77545e1040c204ae857564446e939a826968bdb50dffaaaaeb4179e7b846d3`  
		Last Modified: Mon, 24 Aug 2026 23:20:32 GMT  
		Size: 49.5 MB (49493769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c30dcbc4c97e074df7fcd51d7bab1f4276ba9cc53b8103961c8f9f5d065057`  
		Last Modified: Tue, 25 Aug 2026 00:53:16 GMT  
		Size: 27.3 MB (27300588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8ff3a3be8da7bf9344e8328164a9c4a500d56fb3ca2a65d2e151e793990ceaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4103285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964a86ada661421e34c17f139b2826df8c46ab4e3c0ecbf5adce91e4b78ac961`

```dockerfile
```

-	Layers:
	-	`sha256:36fd037066aab2bb71f38abcb477e2897f9154f9dbc7f632f322129a34c882a1`  
		Last Modified: Tue, 25 Aug 2026 00:53:15 GMT  
		Size: 4.1 MB (4096444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbc094538e847882b10717a36e416571cedc3c8b5cfbeb78c27435588272e51f`  
		Last Modified: Tue, 25 Aug 2026 00:53:15 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:c2597cff9544e26212c0a046eaeab9e35fc17c4ce544cf3f05a10655e0b95611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80481045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea83b2b08c65cb17073bfb2bd6b8a28a33cd277ad1a7301f69367b366375fdd6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f5cb2b585d34f93f0289800fffe7335ad494f06cf22e2d7470c540097a9233`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 29.5 MB (29463614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5483e068652c0c5548d340d16ff7600a244172bdca2f065a3201a07f742a6806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16b920e91335b815c84e0c7f50c548c3a09d49da2c1a4794edeee92deee23705`

```dockerfile
```

-	Layers:
	-	`sha256:9b2168c74822e3f8673cb9c5127caa836566221d9524538e9b108e15f2dd73b0`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 4.1 MB (4089311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e3fe45539357f9856094ff3a530b173824626860473a2ad08a2c6364567dbcb`  
		Last Modified: Tue, 25 Aug 2026 00:51:06 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d570767b5fe7837f1afffc322631fe001a29b9dcdd01cf43f2dc36c095411c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85107763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45a66a7cc24676684dbed0d4219573a5c399b643000b0539b28b73d2aaefa35`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 03:37:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0740b75b32d7e54ed49294f85fae9198c8436249bbb312d48036904bf9dabca2`  
		Last Modified: Mon, 24 Aug 2026 23:20:45 GMT  
		Size: 54.8 MB (54779193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac46888ef17026e4dabdc47770fe971c53a75fe86b4ecffd0b4c88cd5ff29127`  
		Last Modified: Tue, 25 Aug 2026 03:37:26 GMT  
		Size: 30.3 MB (30328570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5435b4c536ac53c736178b3973cb25b75d0b796de850c486eba6ccf1a3c3d439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4103208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b98ca29c642626c2e6ac0fb74d6ac0239fd6285c0f2ea1800e73cb086f937e`

```dockerfile
```

-	Layers:
	-	`sha256:4e240869eb20f74e521e3c81690848ec0bb5c0bd3ce2cc3912d800d030bb4351`  
		Last Modified: Tue, 25 Aug 2026 03:37:25 GMT  
		Size: 4.1 MB (4096415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ea1c47df6ee745bb69bb87677b888db2283b23ca61c6ebc8e71956ffd289595`  
		Last Modified: Tue, 25 Aug 2026 03:37:25 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:b9da22809733c13b7f53e84561e4cf0320de6b21b698140c75876861a2d5e8bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (74976019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf35d476ee9522dd2b6c089e02fc5bfe3f6625c0666059f0298f87303dda2ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1787529600'
# Thu, 27 Aug 2026 00:20:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ebdd89b00a8705e3b3704b27b947bea95cfc83734a6eb81fe4941099c26f3f12`  
		Last Modified: Mon, 24 Aug 2026 23:25:54 GMT  
		Size: 47.6 MB (47562284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb6c7313515e17efc4bddcf4e5e560cec34677cff84416b78491bee322d97c8`  
		Last Modified: Thu, 27 Aug 2026 00:21:54 GMT  
		Size: 27.4 MB (27413735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6fff6132257518892e1f22c31afe5300dc6b9c05fc6bd39c405ee4ddc5788cb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078807ce87ffb3b2290e1d95d944636678b6727c789b3cee407048757c4d2e78`

```dockerfile
```

-	Layers:
	-	`sha256:822a7c9a7f189c2c98331beaa63b0a16a038fa2bcf1e7c7ee96381ed108f23cb`  
		Last Modified: Thu, 27 Aug 2026 00:21:50 GMT  
		Size: 4.1 MB (4085663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e96de5b365dc18a07617a7cc2984551657fc7b6e41ed22f168af3e4d6b1c48ab`  
		Last Modified: Thu, 27 Aug 2026 00:21:49 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:efb7b0d65d558fdcef52783bc7698d0a3bc836d689bdf6e53a2307e8f6fe8631
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76890348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2358fec30b4fe145d33d31b72db42731e0b730dc345d73d02876a9a6900dc3e3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:24:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bb664b74d9fd31369cd1996da2e710116110371d6fe8eeed4d4bb31513c08ad4`  
		Last Modified: Mon, 24 Aug 2026 23:19:26 GMT  
		Size: 49.2 MB (49248305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20fc89f5edde6d5695357616c3f239d7c896ff2f14d3e719cdc5c4dcfd04f932`  
		Last Modified: Tue, 25 Aug 2026 01:24:29 GMT  
		Size: 27.6 MB (27642043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:da37ae682369c6224462106378c30fdd4d034839374856e9f43a84647d5a70a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4100424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10a6eeae7f515c281c659df53dfce86c43b624509e29a3d9d1b651a617540d7`

```dockerfile
```

-	Layers:
	-	`sha256:e1e42de7745d3508fd9708ad493203f524839991426ba92b16abee1def6209c2`  
		Last Modified: Tue, 25 Aug 2026 01:24:28 GMT  
		Size: 4.1 MB (4093663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a14d4257d2adb959d34d6059d68df64f36322db89f24b7927813321cc7118ec`  
		Last Modified: Tue, 25 Aug 2026 01:24:28 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
