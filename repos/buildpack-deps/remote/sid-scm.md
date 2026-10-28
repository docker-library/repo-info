## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:537a236bc08de7caef86526037b8ee8a49c477c34b64757bc70f2d45be680632
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
$ docker pull buildpack-deps@sha256:7ac4d0b625939632f46980923aec69d11c46ba0a61508feeba2459d13f25d0da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159455477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d23dc92e18ddd9640f2bafe0a8986181113fbe17897fad4455e1ba9850f8092`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:39:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884f7d59e0f8c4374d204fc3699caf5eaffaa450cb2e287fb612afb10b919b64`  
		Last Modified: Wed, 28 Oct 2026 01:39:58 GMT  
		Size: 28.4 MB (28426836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059f163b87e5c0ec76df5e2f3e586f5109d7e09af56a91205f90c04bb882290f`  
		Last Modified: Wed, 28 Oct 2026 02:23:59 GMT  
		Size: 81.2 MB (81205692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:035d063ede6aed667633b9c1abbcda173a4131276d8eb038f5907cbc820a60fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8310018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8415f6c7115b818c18ed92bb6411c37e6dfc977d046c8f84298e80ce1ad6d885`

```dockerfile
```

-	Layers:
	-	`sha256:061258d926fdc734f041f1e5b542894c9295fe67ec4429bedf1428f51cc14c9d`  
		Last Modified: Wed, 28 Oct 2026 02:23:58 GMT  
		Size: 8.3 MB (8302764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c9325d68fcd7a80cb80c57fded5b28aecc5c9d8e3e010a09586ffafdaae1f4`  
		Last Modified: Wed, 28 Oct 2026 02:23:57 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:73d94da52688bc89581ef793d1017abc37084156569dc835a7645416bd981899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146243191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e311803026be217cae599a40322e40c7fb7124728e08cb0d074e569db923b3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4f8c8c9832ba5ab44b1cb736fe733a2663fb538ecc67b64e0a78250794d28137`  
		Last Modified: Wed, 28 Oct 2026 00:10:52 GMT  
		Size: 46.0 MB (46006728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbdac6a50e441fddec66db56e671f3bd4b0bd332067e055f6b30571ca7534ae`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 25.6 MB (25631085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3807fcb52ced060599928200bf3683ffee06ef8c781e0f98ca59102f36dbec00`  
		Last Modified: Wed, 28 Oct 2026 03:47:41 GMT  
		Size: 74.6 MB (74605378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a14049aa39639dacaed3cb1db3caea752959da722de41a37d9aa755f28121479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8310164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacad3b0adb5f8dea1f27e7880085711d5369cf998207f49ead5f62909b5739a`

```dockerfile
```

-	Layers:
	-	`sha256:d8e664e9cd411f5547ff77dee95c72acf511aea3a21826dff6cfd9c70d045cdb`  
		Last Modified: Wed, 28 Oct 2026 03:47:39 GMT  
		Size: 8.3 MB (8302846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ef5d545916150d58febb6afd77e568dff069c94fb8f93b58f44d70a2dba615`  
		Last Modified: Wed, 28 Oct 2026 03:47:39 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0fa6ea71acae6b10f9755d3eed0222d337e1ec20999cdf9111091cefd6e93858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156090823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70e42ab00f3a290f73afe8e52be41152e710de0292d8b1b3e98eb59bafe16ab`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:43:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26000dc41a1c54f7e37df3ed2559cbdd938d3e840049d2fa8e784530215c9230`  
		Last Modified: Wed, 28 Oct 2026 01:43:26 GMT  
		Size: 27.4 MB (27368863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a631551ffe898213f271b65134be8dfd9e4a7e387db2f9f740ee6408fface2c4`  
		Last Modified: Wed, 28 Oct 2026 02:35:17 GMT  
		Size: 79.6 MB (79552745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bcbdc73fc213c08f72c073de72468420a01dcd7bc7a591a57eec50641f476b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8319745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4964b0de376fc381e59377367f917e5d848fee7fa43ea38de95715d354ec39f`

```dockerfile
```

-	Layers:
	-	`sha256:cb93cf3527ece21558eb636e39f032301cf73e1c0bdddea5f76cef5ced9aa8fa`  
		Last Modified: Wed, 28 Oct 2026 02:35:16 GMT  
		Size: 8.3 MB (8312411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ae94826c2f7ce5bbd3664dd4ae8695d4824f6eb207afab130defc56c6f4cf8c`  
		Last Modified: Wed, 28 Oct 2026 02:35:15 GMT  
		Size: 7.3 KB (7334 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d89cbbbdd56b2f2430271172daa2d091d5675264e107e8e09ef7c63f3af3bd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163610028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeaf523fbb9c8e1240cbc18b3b29799c7bedfab6bd575dd740dd57604bfe8ad7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:42:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c05bcd3efef8b271823eac41b290f90667d600094b5262f2b9e60ea8a734b3`  
		Last Modified: Wed, 28 Oct 2026 01:43:04 GMT  
		Size: 29.6 MB (29588136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3b7e2ec802fba2089a54a65c8f267d62e86f4d76c1cf2a2cb1a916e0a5dd65`  
		Last Modified: Wed, 28 Oct 2026 02:28:48 GMT  
		Size: 83.1 MB (83070603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b7159d2f93963a97ed8ad5119854049d260dfd64a3d47fe9c43959362ac6e01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8305385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f7d853c46409f818b7da087787ca02d981aa790b50434389a99161ac64a7e6`

```dockerfile
```

-	Layers:
	-	`sha256:1e6ac2274b76f379c18933d23da161f418506c9ac0c3019896be16e8b418cc5a`  
		Last Modified: Wed, 28 Oct 2026 02:28:47 GMT  
		Size: 8.3 MB (8298154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b27c596e87b7ca8e32033f6bf524951f3f462b23abd721f50c5a34c6cf470b43`  
		Last Modified: Wed, 28 Oct 2026 02:28:46 GMT  
		Size: 7.2 KB (7231 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5414ff262848d50ef8b1a1d2bf6aead9956a1e22b1a7dc4175f181bb074bfc9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172237854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e17d68c5f2765a5a59687f4639aca7e4cbb6c3ef36707eb9bb18019375cfba`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 04:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:56:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8e851d2604e88e5c6735eb86dfbb8fcb0e9aeacbdb9899452d64a5249204f79a`  
		Last Modified: Wed, 28 Oct 2026 00:22:29 GMT  
		Size: 54.5 MB (54510378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718051fc13a59ccb94708b59f2848851167c5d68f0214c82f820a7624cbc1ec0`  
		Last Modified: Wed, 28 Oct 2026 04:20:10 GMT  
		Size: 30.5 MB (30517348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ade1c546c014cc82ef16fd52bfa9c7c5f1ccd4808bc920406bd89ab8b9b170`  
		Last Modified: Wed, 28 Oct 2026 11:57:27 GMT  
		Size: 87.2 MB (87210128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:709c775c76eda94931f0c0cd79d20588c55d4f16e7368298f3904eafbe4d20c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fb776b558511967cffd30e1c16c1eb11dbf57caa2ce436b2ca1f354fb79c05`

```dockerfile
```

-	Layers:
	-	`sha256:52cf107be1db06c90475b3bd217943aa8a80feb3f8d8cba3bce69b030f053575`  
		Last Modified: Wed, 28 Oct 2026 11:57:25 GMT  
		Size: 8.3 MB (8310212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af018e593a3b617c39556b0904db2fd7eaecf697099c654642c076e67186cc75`  
		Last Modified: Wed, 28 Oct 2026 11:57:24 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:8d93fcb7d63a2c153ce40f4de1b5ed5302e7ed23c3abdc86eb7f621ef5051783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152813069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b652b0b3e9b33a91ad8282b8c4904b812789be24a1493239ca94570c91dc744c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1792531975'
# Thu, 22 Oct 2026 05:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:57:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:29af863f47901f0573d3798e2d1e207aa2429f06d14b2d1c48747fc578d89be6`  
		Last Modified: Tue, 20 Oct 2026 23:35:20 GMT  
		Size: 47.2 MB (47229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7950d5578fe85c450babdcea1474b50a7b9919ee831d6cae6b5afdba749683`  
		Last Modified: Thu, 22 Oct 2026 05:12:58 GMT  
		Size: 27.6 MB (27580769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a916a6b8ec734128e62813052874a990d39d5aff71a5f5dccc1dd8fa14789716`  
		Last Modified: Sat, 24 Oct 2026 04:01:45 GMT  
		Size: 78.0 MB (78002551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ddd89c480c96cbdaff4f025d4a1287834325a09014aaed44d697cd7503d5a8aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8290877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d84798ea4e44e5a3d3b8f7a20d8118e0f66482658b5bf5fb69edef12a3e13d6`

```dockerfile
```

-	Layers:
	-	`sha256:67da79500fe2a46a474f4ee496ddddc14391576454424ed1a6908da6fc41c72f`  
		Last Modified: Sat, 24 Oct 2026 04:01:34 GMT  
		Size: 8.3 MB (8283591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:786cf7c9496474f0395405f7fe51c2421876b1b530015ae52c0ff70af827abaf`  
		Last Modified: Sat, 24 Oct 2026 04:01:32 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:6077ab686da49c65b5750260adae2e1f2f0892981f4114cf153a653b19612d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157669316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1adb2651cc5cd305f04cf2847084c1dbde90b6fc3caae31e27ec8fd4973ee0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:42:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:11:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ed2e8a0473ac3a9d40de716965fd5725a2e604829974db4e80a8ab39edd09cc0`  
		Last Modified: Wed, 28 Oct 2026 00:09:50 GMT  
		Size: 48.9 MB (48926863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f3b22601efff56e082964d2265a7213df35e5e4c10ed288576c2612a3f0f9c`  
		Last Modified: Wed, 28 Oct 2026 02:42:48 GMT  
		Size: 27.7 MB (27748313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d47c30ad42a435716f775aad462b4b3d75ba20ae920754cd7950b272028c6a`  
		Last Modified: Wed, 28 Oct 2026 04:11:40 GMT  
		Size: 81.0 MB (80994140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d98ac9c58925a11ab1dd52d579b7dc0b5f95680bf35b160945fb789604260719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8310058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94df798918b606aace25dd8cb6d99635a90a32178d045ad140cd132dff30a43e`

```dockerfile
```

-	Layers:
	-	`sha256:a993536865257efa214540bcdad87404ad6bbd60d2f2e02151b22ea74f5c4956`  
		Last Modified: Wed, 28 Oct 2026 04:11:38 GMT  
		Size: 8.3 MB (8302804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52c5e49f5d20dc72d07c7358474e9cfa364916594b83ad10560cbbb51532cdde`  
		Last Modified: Wed, 28 Oct 2026 04:11:38 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json
