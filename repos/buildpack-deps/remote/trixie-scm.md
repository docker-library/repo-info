## `buildpack-deps:trixie-scm`

```console
$ docker pull buildpack-deps@sha256:494c8cd78eee342bcab52bf7d31d77755aaa770f5d8e668685def8f7b8d34d77
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

### `buildpack-deps:trixie-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:544960ce06ed35715e948908510816785d7f6c4a60dfb0eecfed0f2833d1ccea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142861055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa226c06a350630805f99beb7f530d8ab4e875cdc64ce507e8dc793c13d4b356`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:09e45bbc899e579c035181567d339a28f6ddfe0fb9cdf66a439ec13d38713df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0c6d00b57a18f4b033b43d7f67107c7325fc3b6c3aaf63ba8a35de6e443ed9`

```dockerfile
```

-	Layers:
	-	`sha256:6c6363e52db5a48af480e0b9f3b4d6b4a22233dc19f5e2bf2de1ebee33e6393f`  
		Last Modified: Wed, 28 Oct 2026 02:24:04 GMT  
		Size: 7.8 MB (7775733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbedb700fdf6081afd51fb4d3461702e6cde5ad676c9403c9ea11498426dddc`  
		Last Modified: Wed, 28 Oct 2026 02:24:04 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; arm variant v5

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; arm variant v7

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; arm64 variant v8

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8fd691361d7c2acb4f06c7ac52ef8c6ac33c4e7d47534ce7e7bfca9c87bcb9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147578218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45385a00503135c6135205375b583ec4448ef4607116dc4a9eae1f42a627fab2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62933a21b583195e4f59a0ffcfb66f567701192ffacb0e69c5e6b700655a5147`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 26.8 MB (26799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4462378acf938c7c0307009b8bfe3cf23a2b4953f37ac5df637e8266f3ac56`  
		Last Modified: Wed, 28 Oct 2026 02:28:54 GMT  
		Size: 69.9 MB (69857152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8d88531f338f1d34584cf1fd3b2babecb384b45d7726e0f29d005fc197526b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7779420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4af081f2abb5225e14b6ed4819a8771ebf86d37ce6f9de3a995ee8e259d9a0`

```dockerfile
```

-	Layers:
	-	`sha256:80295183e12e865304a4235ec27abff06eeda1af6d011fbc08bcbff6b5fbc5ed`  
		Last Modified: Wed, 28 Oct 2026 02:28:52 GMT  
		Size: 7.8 MB (7771870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16331eb7f30a7c6858200c116a3f2cf172d3ddb88275ad8d29591adfd2ec11f4`  
		Last Modified: Wed, 28 Oct 2026 02:28:52 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8e58d97851879f8ecb555f34004935c5cedc336e2f672958691b6dc8ea44cd73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153338651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5075c3647e84826abfd14f13c2a76c6bfbdbe6fe1ba9ed09d1e51de6d7c4a33`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:eba783eabf3e1f9d0d65f7262b1afc902b2e8803bb451aa6b93ec45ae918d24a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7790466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:200d98c1ba1add9605ff63480a2fe9513582b8e75d5a7f6a0ecd5eb56b73196d`

```dockerfile
```

-	Layers:
	-	`sha256:e6df422e43b5682205564e43265f5c4ce88cd1d8963a666f2c77fdf276fb81c9`  
		Last Modified: Wed, 28 Oct 2026 11:57:55 GMT  
		Size: 7.8 MB (7782852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15a53a7fabafac66d7dfe945804460321f305393492af2852aaaeaceceddb97`  
		Last Modified: Wed, 28 Oct 2026 11:57:55 GMT  
		Size: 7.6 KB (7614 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie-scm` - linux; riscv64

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

### `buildpack-deps:trixie-scm` - unknown; unknown

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

### `buildpack-deps:trixie-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:feee432570c5dbecf946b178cf75c4f3c5ea05114b2f46c875462cbec2c85dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144950930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcf64d1df915016ba08d62eb6247e4149c8fe8109326201dfb18115feaad54a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbcc8858cde6193263947c31b5152380d626a1b64ea15511915cf0be7d9cec`  
		Last Modified: Wed, 28 Oct 2026 04:12:36 GMT  
		Size: 68.7 MB (68663295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:823b6eb52860d7f9faa7ff58a120992fef5ee590dc849224ef3215c9b4d448ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7784223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2deb91f275b2ac016fc61886a84470f948c0f542e9c0047a0d1e3028d361205`

```dockerfile
```

-	Layers:
	-	`sha256:66addb933d096da542e5ea7ee450e6bbb8eec2a224abe6b0c229b84f5d70d951`  
		Last Modified: Wed, 28 Oct 2026 04:12:34 GMT  
		Size: 7.8 MB (7776646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02047d724f0410d0abc36e5c11bb98a7071b113cdd85213f570379788d657326`  
		Last Modified: Wed, 28 Oct 2026 04:12:34 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
