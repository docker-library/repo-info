## `buildpack-deps:stable-scm`

```console
$ docker pull buildpack-deps@sha256:b0640a5337a081efeff2121d10b442c5253d0a4653431a33fb5b220eea2af930
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

### `buildpack-deps:stable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:57c2de9a151180bf9ba8eea8bbebf8c546ccaa629f4fec8ea9b18330226af31b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142848020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ace397d3e9a79194eedcd61dc9cb6ecb9904a79463747f93fad0c93d04a9c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:46:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:27:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63040bd9752a74c5b1082903de92d441d30121f994018576b4a2f4cf8bb3bca4`  
		Last Modified: Wed, 21 Oct 2026 00:46:31 GMT  
		Size: 25.6 MB (25635564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7046f4e749f0e32d9fc67f654ad5e33cc555534f82a9971e45a00dbdb899e309`  
		Last Modified: Wed, 21 Oct 2026 01:28:14 GMT  
		Size: 67.8 MB (67818834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c0fa03193f97bd2dd3b2f3dc52bf9bb1bae328d8ce5025d8a31ccff66b9acf11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea2de81d7d09b98a7b37fbe4e4c3ef85bff6af948c76695aa7852847f196caa`

```dockerfile
```

-	Layers:
	-	`sha256:be683157581265e17f5fd41b0cd1487cf04ce106165ad518784ed09166e1dcc1`  
		Last Modified: Wed, 21 Oct 2026 01:28:12 GMT  
		Size: 7.8 MB (7776509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b221f846ad1987bd362951881e57fa6b6172e9302c5101d60d148fa538fed2a`  
		Last Modified: Wed, 21 Oct 2026 01:28:12 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:38b2700acb90d5bec03ce3b7de6c1209bb03c67ae912cac3400125ad7730f3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137297935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c58693139158ec8ab07f6d11aa263f45cf9b74780d13470bea3e191d4ee6af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:49eebe9825563c4d645a935992f1602e05bccea6dfe4c79e51c1fda75045c88e`  
		Last Modified: Wed, 28 Oct 2026 00:10:20 GMT  
		Size: 47.6 MB (47576128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a6d424e5dc332d064da509d1423ae9e34dea3a27d50d590dd9e7527ae50ac`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 24.4 MB (24363879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3595aedc8fd393489fcc8e3af04cf51a91911b54eff514e9b1e97fa8cc8883c8`  
		Last Modified: Wed, 28 Oct 2026 03:05:35 GMT  
		Size: 65.4 MB (65357928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:34f32b196b94c647d130a32e2370a3666d49e5f86144520b463f49d100990beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b39186cdc2b52e33623bbf925daecef7f24479d98da7b8cca4afd14c3bf04c`

```dockerfile
```

-	Layers:
	-	`sha256:0909076ed3319eb590195e7440ce580bedf5280964438a8512309791ca6bd431`  
		Last Modified: Wed, 28 Oct 2026 03:05:33 GMT  
		Size: 7.8 MB (7776771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17464ec736293a5441239a5e439f3db36802e83ee6132db88fc8793cd9e333b3`  
		Last Modified: Wed, 28 Oct 2026 03:05:33 GMT  
		Size: 7.6 KB (7648 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2fa7b43299b650eabb33003efd1369b1ce303e0b3afc0c1a68f9c5d5edf934be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132225871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3d1f8d529351cc4fe8d21452549828c1ba9d01596a554f896171f408500860`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:15cc9d04e1c6445745e424cdec6b660258279d90156a69484ba19322f68a4ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5b5b9268f1875d5b11653be28c36ff7fc336663316d4d2e72e468b614561d3`

```dockerfile
```

-	Layers:
	-	`sha256:c038556412075a9df62e4bc135864852d2a9f18f2f1cdda32f9f93ec11873ca4`  
		Last Modified: Wed, 28 Oct 2026 03:47:31 GMT  
		Size: 7.8 MB (7776240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6259e2f1181f5ed07d71935a73f2c6a21e425943440e3267cb2076503a93894c`  
		Last Modified: Wed, 28 Oct 2026 03:47:31 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ece60d036284d35300b37dfbf78cf71f9dc829c44f10aea6b3ae175bd00b4e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142447702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0379d100074e83c57ad6bef9d4521b4e03da0a0148d4f8cc8d09c2a3bf637f86`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:63dbfc081e01bdc31f3ebfe35582cfd4e46bc54f7f70105987a57cc41b47323d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfb829a73f72da2cd3a8ea5103a7c2674f515c520d382a8fc79b6cb5959645a`

```dockerfile
```

-	Layers:
	-	`sha256:471208d3590b0017ff62ed37d2c238a4419ad1ec134c7c01af199fdd1b894107`  
		Last Modified: Wed, 28 Oct 2026 02:35:12 GMT  
		Size: 7.8 MB (7782771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7950cf1dd5f61f671262f83c43c00b5430f12b32a8e053d709fb0628109ea373`  
		Last Modified: Wed, 28 Oct 2026 02:35:11 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:af01d12d349643a7475a85b5b4649e675966c4b4d9d7b188b0fd89e30dc2cc48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147565117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf168b635fcade5f142c03036c8f9728f2b97da4fb8dc7814941f441679741a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:24:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:32b56ddaffdf524e89e42fd33cbc0e53bfe71b517148f5e7cb00252a55c2fc0c`  
		Last Modified: Tue, 20 Oct 2026 23:30:52 GMT  
		Size: 50.9 MB (50906545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef26afe69679f8b13ee7b9263765e639dffada5bcafbad584be699579b53be36`  
		Last Modified: Wed, 21 Oct 2026 00:48:41 GMT  
		Size: 26.8 MB (26801719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a909f16c3ccf238c02074d6be87cb65bdd236ef35710db0691a4d49412dc9f8`  
		Last Modified: Wed, 21 Oct 2026 01:24:52 GMT  
		Size: 69.9 MB (69856853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e8429ccbb59e9df721c1d252d4bed5a6834f708e4c7e16b06420bfc82f5f1115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7780195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856dd246d38409392309efc5990968a4cae818ba43d3112fa472f64d92f68e24`

```dockerfile
```

-	Layers:
	-	`sha256:052254747207c5f25ddf6b3cc14e343f5fabde020ff546317650886f3a7acba1`  
		Last Modified: Wed, 21 Oct 2026 01:24:50 GMT  
		Size: 7.8 MB (7772645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0594d12702b7b4c4e1a4ce795452c66b6db44970ba42370c96750ede8b3b70d1`  
		Last Modified: Wed, 21 Oct 2026 01:24:50 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c04141c9d4d64bc15fcba6d9f47fd877f84653ba5782c4bb51b75201ba3639be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153329114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243a04c48963e625a2997fe08f3a16342556cc9f36ae0d35f3fddbc879871f79`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:22:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8de6f8901db850f86f9e68b13db2e5cfb33d704fa35193b08356b97ed1e8ec`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 27.0 MB (27024125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7744e5d6fd3bfcd3262b3a9e3b2a27318e06fd070d6b1166cec1ffd0eb1390b`  
		Last Modified: Wed, 21 Oct 2026 12:06:36 GMT  
		Size: 73.1 MB (73097411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:daea8ab56befa16190e78b4d478b35c63c31507ac77a3f5a36819c8603263d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7791244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1e9337d7ccf6e9f95bf1987132917fa1ddd20a053ed5081a4306b4a4d73077`

```dockerfile
```

-	Layers:
	-	`sha256:392d5898eb54805726400e4867778c8854f0c5fe230c5442df19a539273d8cf7`  
		Last Modified: Wed, 21 Oct 2026 12:06:34 GMT  
		Size: 7.8 MB (7783630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47ed9410697bafbeef8882afccd0920d53b6bbb560910c46ccb0cc9aab2cda6a`  
		Last Modified: Wed, 21 Oct 2026 12:06:34 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:5edb855b8548cda696c18a39432695164ce956efa365cc46403a7b2a6fb97437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139563189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1462149908c2313a4e72c04dbb995e60c33a207c81dfacf768511f79c8737c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:15:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 04:05:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32139541f4549e36734c5a88277feea7f893f4a9131721e90b51bf8f6e15227`  
		Last Modified: Thu, 22 Oct 2026 05:17:47 GMT  
		Size: 25.0 MB (24973515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b2622bb15621b5ef42ed7c0e2e08f6323cce082c63a1a767ea4a063cf866d`  
		Last Modified: Sat, 24 Oct 2026 04:09:18 GMT  
		Size: 66.7 MB (66713038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:94d1f5564afd3e7dc238ae31173dfc9212107d8f152b2b676aa348637ad45949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7773958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06128bf06f60e334c58d07cf05288a8b3ecf034202a8f3d83a4ca822ee42f98d`

```dockerfile
```

-	Layers:
	-	`sha256:dde1f85c184cde325408502a018883177e88c3b3a2fafe87f6ef837362247e45`  
		Last Modified: Sat, 24 Oct 2026 04:09:09 GMT  
		Size: 7.8 MB (7766343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47b18555683a5b9469624e0580e0272a54116d7e796bebd7b2a0ef28722d10ed`  
		Last Modified: Sat, 24 Oct 2026 04:09:06 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:stable-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:29c23c7b411b1e30d221a20a6eeed3b1a9e5451113e295cd79215c7142024ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144937499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9879f2e742d50bcc93f6089996f9ee70a4495377601390b1ca4106b7293c29`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:stable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d4ea62edf7f8904f164b449bf7a163e179ef4c17a0e300feb47495a9bd16f4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1119346438294fb36eb576fe45527ab9943012c006f974cf37139f4c29fa669a`

```dockerfile
```

-	Layers:
	-	`sha256:4a2d420c9bc93f71736b9950e294c7b68bb278837abbdfb8a9da505e8a695cec`  
		Last Modified: Wed, 21 Oct 2026 01:56:40 GMT  
		Size: 7.8 MB (7777422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ed4738bcf81c2852994d4f63070eaff83896e328577cedb5553a2d6c6465abe`  
		Last Modified: Wed, 21 Oct 2026 01:56:39 GMT  
		Size: 7.6 KB (7576 bytes)  
		MIME: application/vnd.in-toto+json
