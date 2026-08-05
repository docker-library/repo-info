## `buildpack-deps:scm`

```console
$ docker pull buildpack-deps@sha256:78da6b8b53fe81074fe8effe1e3e9204d2c024e10b47b98bd2955e22721a11a4
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

### `buildpack-deps:scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:8f6dd7e896309988842cae236958aa8b132a68a8277a1fcb250a3644d54947c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142748950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d7638f1413b747c618f7f0eb2a91d0e055dde7e5ae157736c9f7514a1643da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:936e682989ca8cf8929bb9e3cf5bb91896da539f8bef2acad36bf8735f25003c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7776222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3e207e0bb4d8122692bf0e12e768b7eafe6ad6c11dcdde38a21581e6d6f67e`

```dockerfile
```

-	Layers:
	-	`sha256:4fab45414e540aec1379947ffd08962fab0b3edf6b5d41567673347becc6073c`  
		Last Modified: Wed, 05 Aug 2026 01:33:39 GMT  
		Size: 7.8 MB (7768645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a4539a764e41f5bd169d7641b446aab7fe9026e958d6bc919887e6d191c139`  
		Last Modified: Wed, 05 Aug 2026 01:33:38 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:a52912152b61cce41947d3c3f685132ce436aece9feb136eb66f82086006af2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137207388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:337e9f9f88819b5ab583c151101737c5f8eded12f70f316a1fbdd6c6fc87b75d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:39:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:40:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:31cdd84f3313aed453f665b91a900091c434a8f09c15bb822a4e06103d09ecb4`  
		Last Modified: Tue, 04 Aug 2026 23:51:31 GMT  
		Size: 47.5 MB (47489632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525e2e1f5f1cd4f14b03bd4f293d16a39172386225a1ffae568978c7aff7bd59`  
		Last Modified: Wed, 05 Aug 2026 00:39:33 GMT  
		Size: 24.4 MB (24364809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6dbc379194f02207cf2fef428e2eab4bdfcd7fd0f7f44eb24360d20114103e`  
		Last Modified: Wed, 05 Aug 2026 02:41:01 GMT  
		Size: 65.4 MB (65352947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:869ed1fa92ea6994ce31bb5de3fd843d5cd4fa1d2ac54d1392a46e44c4e3fde6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7777332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf602a2eff0af89621f271b8db67bdf6cfd6d6551aa1463bf6bfc2b9a6d8b6f`

```dockerfile
```

-	Layers:
	-	`sha256:2a864791196e44c8f09871d0c0fa5cf4853387a918d7652fccf28b7434b1f059`  
		Last Modified: Wed, 05 Aug 2026 02:40:59 GMT  
		Size: 7.8 MB (7769683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75057c8671c6ab9c76e5eadabb6a06e358eeae0a1f2408b09358be58fd6cd1d3`  
		Last Modified: Wed, 05 Aug 2026 02:40:59 GMT  
		Size: 7.6 KB (7649 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:97e8fa9a3cfdda69dc69027ba5b2ff206803660fe634cf3f2f871c8807794078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132137791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7485b574158d0619dc37b7977529656770c99d00d3af7182770740aa01c14f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ce00596802fbbb6f672716803836be915a7fa1e431e304e27380b560f4b25c8e`  
		Last Modified: Tue, 04 Aug 2026 23:52:16 GMT  
		Size: 45.7 MB (45743375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0dd361d89842d87704123c0af11b4564310574a6d57fefd0e2be36925c3d8d`  
		Last Modified: Wed, 05 Aug 2026 01:20:38 GMT  
		Size: 23.6 MB (23636453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb135e1760d1271aea3209c73b2b3ca0ea7f9cfde6d547d3d7e708701db7379`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 62.8 MB (62757963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:255d70405e10bbbd028c02447ad8221e3706c377ce07a66e94d8242a9e6d0551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7776800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44aecea72ee2225a3a5705db540d1e142bac3d17411fbff407fc99d9923703ac`

```dockerfile
```

-	Layers:
	-	`sha256:9d317db63f0bf9604d1b9878d8a7e6590ecf6b30e7e64afa4b0f1b5aef609343`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 7.8 MB (7769152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec400e6ced5a6dc5c9a5d666decbcc03b4032ed62b15109f5ade64b3ca2f0372`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 7.6 KB (7648 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:50bc82d561052b8920e58216859fd336d96dd2c4824663c05a1a8063d312048d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.3 MB (142300902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac647ad10b537b68ae427ba7a602a29162ec51cc2da14fa653e719ae8cad2875`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3942707f6bba3652cdb4eb104b26a8f8eb5a7319ab8c1aa1da3a51f2efa13380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd2818d83f59e0f97a6b90f4b8eca9a7c056b14d606813ad30b5fd6b6f5c32a4`

```dockerfile
```

-	Layers:
	-	`sha256:c71e27e79194f6054c81449f8fafb7937038091be8eee2b377a07511139e1372`  
		Last Modified: Wed, 05 Aug 2026 01:40:22 GMT  
		Size: 7.8 MB (7775683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0be8b84730f9adc79fff9f0d10c615d5df511087f1252af25b21d334b78fa58`  
		Last Modified: Wed, 05 Aug 2026 01:40:22 GMT  
		Size: 7.7 KB (7669 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8c6142277b10cdae96f6dedcd590a0c481c7289666fcdb83c059c49748f9dff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147471284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded0a6aa0ae07ad4995dc5ba848d78560df15a3a1bd2b8c5ad4d310dc24ba326`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7675708177d5a41df755bb146c3624b6c71f646d85f7bcb8f5f3bb587af896f8`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 50.8 MB (50831168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f34fbe13383f04539c7849f0cc79bc728d4e964e24cda9b947d4784426bd636`  
		Last Modified: Wed, 05 Aug 2026 00:47:13 GMT  
		Size: 26.8 MB (26800384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a3ec548455cf061e33066b297b3d6422e0f3a9b061c1f92a46c05e3687aee2`  
		Last Modified: Wed, 05 Aug 2026 01:41:30 GMT  
		Size: 69.8 MB (69839732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e847de1a12359f30416a17d2c61fcdf16e852427c81cb6229cee2946bce044e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7772329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0981a754372a3fb93ba9386936193b8bc7db9ef69c3429b34dfbec5b9f341c`

```dockerfile
```

-	Layers:
	-	`sha256:f269da38da68fead31f2bc4d636dc79fdc48e1d715ae4022230e10607949899a`  
		Last Modified: Wed, 05 Aug 2026 01:41:28 GMT  
		Size: 7.8 MB (7764779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98a40a1a13555c2cf7ecd9d5066fd901d80d17f613d34186dc6f107e5406f52e`  
		Last Modified: Wed, 05 Aug 2026 01:41:28 GMT  
		Size: 7.5 KB (7550 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:fd6340629784501415ae7146e1fa781a42f4cab8e3367e204956eeed147405fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153229485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7e09750adf19161524b2ede4d17015780b9cfa723f95ec7668b28e67890cc6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 05:25:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:58:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3e6efa722094ba9a2c33899d007294d906fe7730bc19901e78bf43c969f32`  
		Last Modified: Wed, 05 Aug 2026 05:26:21 GMT  
		Size: 27.0 MB (27021100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c136ff5d1eed42b29e608b2fa6073b2ec631c910e2ba490e022e4d31f4ae2f`  
		Last Modified: Wed, 05 Aug 2026 08:58:54 GMT  
		Size: 73.1 MB (73074780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f5ad0842f53c71175d152355f21e46e1ba74871e19766954f77a14a1b781bfa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7783385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43e6f70708879e0289f2246d365e2bb0a01e319582f0f112689825941fa0d1c`

```dockerfile
```

-	Layers:
	-	`sha256:5d6e739b6c3834cd2e37640f0690aa488275fb463812b22785978ed65dbbeeef`  
		Last Modified: Wed, 05 Aug 2026 08:58:52 GMT  
		Size: 7.8 MB (7775770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c03bae06b5c90a38b333643dabba42e59a7225749c86949141db48bded8a2be0`  
		Last Modified: Wed, 05 Aug 2026 08:58:51 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c43256887b4f0483125335ded0d7ba8324cee80de53c0a5d9b195dd39234be71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.4 MB (139449096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bc25c11d1cf3ac34566d33475c9396f813add7a7982f47f8e42e426a13e858`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Wed, 15 Jul 2026 17:32:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:52:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56e13f8ba5640653be74c77c11bec4a12b57a50d949a7c24cdcd88f8c959bb5`  
		Last Modified: Wed, 15 Jul 2026 17:33:59 GMT  
		Size: 25.0 MB (24968294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81442ecb065fc9c5f293fca1a82fcd48a01ca1d9549e5862c62bee3c2c85b85e`  
		Last Modified: Thu, 16 Jul 2026 22:55:38 GMT  
		Size: 66.7 MB (66683012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4722848ea17638bdb3c09fea17b219cb68628efe8cc1466dec78e1b99b3942b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7766066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e950b354facd0c34524ba0bfb06f3490c6f0fc636978bcac7d3687ca69f35c93`

```dockerfile
```

-	Layers:
	-	`sha256:741a20307c372f5cd2697b42e07f2e2fb154a98af7a4f026d28804c0314194c8`  
		Last Modified: Thu, 16 Jul 2026 22:55:29 GMT  
		Size: 7.8 MB (7758451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47de663876a6a6663a29d6d1204aaf93c785cfc1b3815b41407eb782470f89f6`  
		Last Modified: Thu, 16 Jul 2026 22:55:27 GMT  
		Size: 7.6 KB (7615 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:24cbb45f595df544ad372dd042ba50d965cfc41da703a8e00726c123b18754b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144833999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc32c0a769bcb951882648c23a93e52ebe4c0aa38ba6fa9456bcbc753399815e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:08:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b239a9d975f9d9fa57e1220f0c69c47026f4fbd5094809de5f822f2097b9c`  
		Last Modified: Wed, 05 Aug 2026 01:08:39 GMT  
		Size: 26.8 MB (26804560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84d63eaa6137e87f6d73d15defc7c8e1c5f48351989da2ae83463f41f98de2`  
		Last Modified: Wed, 05 Aug 2026 02:03:58 GMT  
		Size: 68.6 MB (68648013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9eebe7169b1a1cff46a6ca65c38ce1adb9deff3ce64d690d914c2decbeba5901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7777135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c47379b005fa99513617d6c56ab006fbdda7942a31ecdd81c0015831ad57844`

```dockerfile
```

-	Layers:
	-	`sha256:a20a0c7eae423d029285fda6755589f2144a6ecfda40008aaa1c0f243698e75b`  
		Last Modified: Wed, 05 Aug 2026 02:03:57 GMT  
		Size: 7.8 MB (7769558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58a555f5cd78e2b20b6c105426f092f2c374da9dc57d76ce835454dac91088b2`  
		Last Modified: Wed, 05 Aug 2026 02:03:57 GMT  
		Size: 7.6 KB (7577 bytes)  
		MIME: application/vnd.in-toto+json
