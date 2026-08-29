## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:2e6792114604c8f9db813116fb591822b6129aebe79ff5eef784d42316e64e92
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e84ca99c3e2e369f5083ca34096d2d282e6174b11450f9f6edf8d399fc2abb71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158665989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de25f6936ddd182c1cb5013af75098729dabb7e1b327320b6bbe1e3dc79724c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:51:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:9a0e5f818c6b9b22375af93837405fb8b5b20a7a896144bd1217ed0cd1e78e9c`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 80.5 MB (80531071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:89665c79009384f693212cb6153c19dd7061a6f8cf6552f04804a04284599ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8329706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95743b296cf8871ba120641b6592a26a7ed469ac9edc57896cb8144386e48983`

```dockerfile
```

-	Layers:
	-	`sha256:848d8067049fb54d78d0cccb53e72fd1ff65edb78994ca12943da89bf1415632`  
		Last Modified: Tue, 25 Aug 2026 01:38:46 GMT  
		Size: 8.3 MB (8322452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c69f7fafc75eb94d842d220dc90a2e978d47aa4535b3c745aecba33db43b989`  
		Last Modified: Tue, 25 Aug 2026 01:38:46 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1f228203823334de9dbe90c10a882683ba17205f945f942084fa4e53b889055e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146162131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8733e2807a28239d663b26acd1c2a8a35ba91bd5567233bd3de0ef8d6a008ee7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:32:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:166eea0521c34d54c293d698cf247829c6afa5374a8c9a48516e338e95e6304b`  
		Last Modified: Tue, 25 Aug 2026 02:37:15 GMT  
		Size: 74.3 MB (74268254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:07edbf72a1abde5c93a1f8bff58683eecf3d06c580fefd47f738b788dfaabd1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8329852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27881129d320273cafe501ce266a747324aee0cf61cdb58342b4c7b8a4e327f1`

```dockerfile
```

-	Layers:
	-	`sha256:b9350b582beac406d3ae2ef31bd3c03af697e9f9ca1bb3a04d4229011788df36`  
		Last Modified: Tue, 25 Aug 2026 02:37:13 GMT  
		Size: 8.3 MB (8322534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56928c4465f65c2a1c2ccfcab580061f74b5f372984acba26f9eb3bb34c779ca`  
		Last Modified: Tue, 25 Aug 2026 02:37:13 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b053c65e4addb34c7cba5192707d2bf8907108a6ffdffbf7841899f26d8d8542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156069907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98fea2d7859de116c16a67e8ff44bf0727d93870b45ae558e187c4290c1ef13d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:53:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:729e71dbbfadaf7ea813be6ff42fb95ce05f74a7925af8a129655079e82138a1`  
		Last Modified: Tue, 25 Aug 2026 01:43:40 GMT  
		Size: 79.3 MB (79275550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9127bbcd666894c9b0d784991275e605c8adf93249fd61463d6b4fff08cb2b6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8340071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29af49ff478f0679980e1a36d5e4c394839c92d47d35df681f5a8401992093e7`

```dockerfile
```

-	Layers:
	-	`sha256:865de1f5c7953926dbe1ee0884db2514c0cf5d8a6432d89bb312430312670afe`  
		Last Modified: Tue, 25 Aug 2026 01:43:39 GMT  
		Size: 8.3 MB (8332737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91f8f36679c0502a6f91cb49e5d98cd20590342a621dc8465bcb8ed702400401`  
		Last Modified: Tue, 25 Aug 2026 01:43:38 GMT  
		Size: 7.3 KB (7334 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:982b3c8240c58dcf99c9f907efc1024652db4cd363b044d1cdb26d361ee57339
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.1 MB (163084555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8676adab4d0f0171faf1ee317d2b069087f474cb80e7c72477c60a0f32353117`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:98ec20a9a43aa4e70783ee1e58630338433597dcfffedee7fc171d3b6bd46f65`  
		Last Modified: Tue, 25 Aug 2026 01:42:49 GMT  
		Size: 82.6 MB (82603510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a215a40e8ca72ce62a003d6bdd5824064a00d5b29a4933173857ad4cc05270b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8325069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3860aeca91d15f05e40d1988c7c5563acca983fb27fe5bfb6e57fa682991ab85`

```dockerfile
```

-	Layers:
	-	`sha256:e5319535c7b58d7f65db84fe99a4f000bc4b0bface1db0f9c668ce2fe6f18685`  
		Last Modified: Tue, 25 Aug 2026 01:42:47 GMT  
		Size: 8.3 MB (8317837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f957811502730f801c51991af2f4d58c72adacae3e5cfaecc8371e88f739ba0`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 7.2 KB (7232 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:dc9356259d2d1dcad261cd9c9d8c39a51c2b34735e2b7f1a1d08792a62f69057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172055974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daad1af414ac63a36014af17a26775762b7a39de8216170f3dac4c777a4f6b3b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 03:37:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:6fd6349eebcec3221055d120c3d44888dc285a9607845ca88c3999d3827d501b`  
		Last Modified: Tue, 25 Aug 2026 09:50:21 GMT  
		Size: 86.9 MB (86948211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6367839c9794a98e7e20988b9a111af603c7cc08514f04474f1f23345e1a78d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8337196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b0726012132e52bb3cfece63daf371fc52ea33f408e4e649141879bc44d4d7`

```dockerfile
```

-	Layers:
	-	`sha256:bc973f2c34c53441f8acda03071951b021b6b01fcc449a2c2d6cef6e31f3dc4d`  
		Last Modified: Tue, 25 Aug 2026 09:50:18 GMT  
		Size: 8.3 MB (8329910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd581937967a695d1bc2ff324a699b27e4bae5b0c47c5c3eda8ccd6904848a23`  
		Last Modified: Tue, 25 Aug 2026 09:50:18 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:9e5178c68aad85641a32774669da0d36cedef59f848901d414b634478980dc2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154145068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25ddf222588d02650db31d553dad048118a2d776aa3a503ece5e70ceb236f4a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1787529600'
# Thu, 27 Aug 2026 00:20:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:44:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:cb356232afcfe5fca723934d64eb469786c43401ae535cf65ca77a0d56d706a6`  
		Last Modified: Sat, 29 Aug 2026 04:48:20 GMT  
		Size: 79.2 MB (79169049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6f132792083589c74aba63aab49df20f638a75e09df2072be35fcce0deee90c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8320437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef3a89339ef0af6647e1b3e5816019203a3e9ab116c377096fb29b708dfc2f9`

```dockerfile
```

-	Layers:
	-	`sha256:0e2e571a56b336790c05b4181541888ddbf182adcddc818cc21ddfb8a128db32`  
		Last Modified: Sat, 29 Aug 2026 04:48:09 GMT  
		Size: 8.3 MB (8313151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b7e69a43625519e3ca9fe0d8a0a0bd2a2a50933aff9f53819984dad34ae96b`  
		Last Modified: Sat, 29 Aug 2026 04:48:07 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d141cb450fa95a7f6ff2e71d70358fbc96a998f301ab8f3b6335fe1158e2ff9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157654702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f59ad3ff939582840c9709ea4d3a25c37fb883842029743a443a4408f083604`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 01:24:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:cb17009ccc3f9b704ba8f2c025f8330e605968dd5a8fbfe9e843c56131d4b921`  
		Last Modified: Tue, 25 Aug 2026 02:52:41 GMT  
		Size: 80.8 MB (80764354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d915bad5b35e57f65a1237516ffe60428da7b6c5b912d1bdf54fd2ad12ef1ca5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8329745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df37e96be1b5ce8d632e9644c2b7cf8376e0672da4c72f41d82f63ac7b624ed`

```dockerfile
```

-	Layers:
	-	`sha256:4251e4c2d6923295063cb501c063ac733cc24050488a76d66779324ab20c1056`  
		Last Modified: Tue, 25 Aug 2026 02:52:40 GMT  
		Size: 8.3 MB (8322492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc890f44fb9cbe07ddd714d97e6d7f5618a04b39cb1a54671ec2ef201c0f252b`  
		Last Modified: Tue, 25 Aug 2026 02:52:38 GMT  
		Size: 7.3 KB (7253 bytes)  
		MIME: application/vnd.in-toto+json
