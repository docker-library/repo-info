## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:969a50045fc4676194ca64e4f81ecddb110eed90e8a53a61158604c6acc37583
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

### `buildpack-deps:testing-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6ce9b12c15899051d1e8a7188bc408c6a52a5d45ff1bba23cf9252a6d7eb4803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156328657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7793161672f30937db9ded24e91e1ea88a9d282479f41b788e14d88a9f4190`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:44:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25affc71bb2e48543388bd42348158ddb69b90d1c1c4d8bb6242a81c2f56b014`  
		Last Modified: Wed, 05 Aug 2026 00:45:04 GMT  
		Size: 28.0 MB (28030488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92645858280222939756c7dd043a8257fe85a954051d9033e8434f3ec7b8fc59`  
		Last Modified: Wed, 05 Aug 2026 01:33:28 GMT  
		Size: 79.0 MB (78966467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c4ef852c76b993aa488aee4653e0dc5915ec45bb39003aeb38e8c2f4075c3402
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8344717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560a5307f64bbb7553083d55ccb0a9b27f551e2a2f82b74a5f3a105464834e4d`

```dockerfile
```

-	Layers:
	-	`sha256:bfc87eafdd4e31d2a066c21b11fed88cd07f15750601f2e8b7dc7bc88fe59a9e`  
		Last Modified: Wed, 05 Aug 2026 01:33:26 GMT  
		Size: 8.3 MB (8337451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88edf508c66678408b44e583dbaf4b2192507f604fffbad67d65c303e1496899`  
		Last Modified: Wed, 05 Aug 2026 01:33:26 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e503f86683e79c77b0d6a27893f518200dc18a333aca740ddcc5ece380a1743a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144979831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f095f258813b926411a02e1e443c6db97d49d9d7d2875c2604e206af19eea998`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f678b1991f147b21923698c169a035c4b8f5ae61fbfd107e1529b3e1195c4fd6`  
		Last Modified: Tue, 04 Aug 2026 23:52:06 GMT  
		Size: 46.2 MB (46228048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2c043e171b59d1b04f4b3bd4e35dcac1f828054b7c09f0784b0589263e7af0`  
		Last Modified: Wed, 05 Aug 2026 01:20:18 GMT  
		Size: 25.4 MB (25415373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a14e26c9c0bf4e81d69fcae477a0a6e79ad2a91d9b5e4417521b12bd3aec8e`  
		Last Modified: Wed, 05 Aug 2026 02:54:49 GMT  
		Size: 73.3 MB (73336410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:933754893a1aadea7a7a69578124bb16b36635589a539fb304c8def430d7f6c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8344658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8bbcca9eca7e5a63b38cc3992112cad9894fbbf5d7641d64ce2cab2715d1b6`

```dockerfile
```

-	Layers:
	-	`sha256:3513e64201a128b89cfa33a58a8aba84e8a11c147c965240cff6004294edab6d`  
		Last Modified: Wed, 05 Aug 2026 02:54:47 GMT  
		Size: 8.3 MB (8337329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49eb291c42f281ec3d0a9887725a52468a87dee4cd5563859402075f6cc7790f`  
		Last Modified: Wed, 05 Aug 2026 02:54:46 GMT  
		Size: 7.3 KB (7329 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:89d0dd9001aa912ec385f6a7b2269ff117c4eacabd1d4e10e71fd81d0173923c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154783171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8703cda2bc8591d4cf71e4f613886aa26911922ed9d76b6e0f2e248d9eb88faa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:47:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:39:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d54621d2015e099f6255a91d16c4135349d7046e8d444fd98d08b4693d2111c`  
		Last Modified: Wed, 05 Aug 2026 00:47:25 GMT  
		Size: 27.2 MB (27234250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7ac33215d07987627f73fb78f32054a5f04176ef59c542592a6b671d50ba22`  
		Last Modified: Wed, 05 Aug 2026 01:40:11 GMT  
		Size: 78.2 MB (78187144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7f2969d114b0bc0a0cda4e71ac2ec73f43129954346256982c0fd5956949c689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8355720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eb89503c5ce59f37bca1fc6877cb4b085f448f01b530a91c2c5ec292ff5c19`

```dockerfile
```

-	Layers:
	-	`sha256:b8228c9b892409d6daf6f3d663156beaf1338737d744aae77ca93809e8fac489`  
		Last Modified: Wed, 05 Aug 2026 01:40:09 GMT  
		Size: 8.3 MB (8348374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2582b5c5f8d9b297fc78f42e00569dda52d7e76887a2824e7afdc2e2d09a3cef`  
		Last Modified: Wed, 05 Aug 2026 01:40:08 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4704db866200ee96a717f92853409953a17d0b9b558d6ed6bcc42fe32b71288c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160973164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d376965ea8d0cf90dc7d042977697a24ec818af22909420b9c9f8af884b558`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc26a1bd9eef236063ae96676e9d68518efb5963a5840f9178265475cb7a14`  
		Last Modified: Wed, 05 Aug 2026 00:46:57 GMT  
		Size: 29.2 MB (29182177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5545ee71a4a93ae46d58363359cc44ca9c02312094b795f30dc57253ddc6052`  
		Last Modified: Wed, 05 Aug 2026 01:41:18 GMT  
		Size: 81.1 MB (81122297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9f771f302e0871c0cf35f13fea1af80b1012e7df7566fce6e61ef10900818a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8340080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9c48b21a39ce9dc795e76eb998cea7e46b3b0d3368f4bae1ffcfeb990b311b`

```dockerfile
```

-	Layers:
	-	`sha256:ae172e848aca10fc0f97d7a623a1773d4abd94ee2b31ebc39f2623bcc5c8115d`  
		Last Modified: Wed, 05 Aug 2026 01:41:17 GMT  
		Size: 8.3 MB (8332837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a869c98d79cc76f63fd190437497e1c3a2e1d36302e2fba01ab92ae1a588c5`  
		Last Modified: Wed, 05 Aug 2026 01:41:16 GMT  
		Size: 7.2 KB (7243 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2d5af6b9e699eddb451ee70221cee60539f4838483e695800dce526f0be4995d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170560595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2265af40f83c13fe353eeb55ffb8f020431398da3fc2e6b0c600b953381ab6c2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:55:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:58bf9e1f9f35e2c6a73b629d77c34637db6af6dea128933949542988f5d743f4`  
		Last Modified: Tue, 04 Aug 2026 23:50:54 GMT  
		Size: 54.7 MB (54675023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a171b124e43c43ca353ba29ca6b343eecab8fdde9a0b04380503b3c469148c`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30218479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6505c48fce1ccb8104a7935e483a0bc40e08ac59a2dd81f14ecc0b9a2b8532`  
		Last Modified: Wed, 05 Aug 2026 08:55:53 GMT  
		Size: 85.7 MB (85667093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8d2f2271752391327c6d49cc6b0a9307432615f29fcea7c2c43d49cf08186108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8352005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0108d2c9f84453dd66c0cd22659c0bbd650857945b3eaf5469b551db203841b9`

```dockerfile
```

-	Layers:
	-	`sha256:63809b8aea3329acf468b80c62c92ede07c0ae9002a31a3183bb1604fe8225b3`  
		Last Modified: Wed, 05 Aug 2026 08:55:51 GMT  
		Size: 8.3 MB (8344707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91f5f91f62de15c4eef2e8db738cc38a4ba45cf41b652a7d7431261fca74cf3a`  
		Last Modified: Wed, 05 Aug 2026 08:55:51 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:ec0450c92ef2dca081f7d6a508595e6ea87174bfde900bc38c918dceca034b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.2 MB (152222383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3456c09aa2ade4df1087d609580890446b726805641499425dd1e3b6cb76d56`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1785715200'
# Thu, 06 Aug 2026 19:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 12 Aug 2026 00:03:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7d6264eb27b4d46a7e7575918f716988899968772092709a97545cd295d76edf`  
		Last Modified: Wed, 05 Aug 2026 00:42:45 GMT  
		Size: 47.4 MB (47433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84241173dc12785777bb63b4572ca91a744f6c1fd8520cf9461b3af0e1ea695c`  
		Last Modified: Thu, 06 Aug 2026 19:39:07 GMT  
		Size: 27.3 MB (27336178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26284b8cba507867e24078b1d22553bccbd558043d201a85a8c1bbb2d9648db`  
		Last Modified: Wed, 12 Aug 2026 00:07:17 GMT  
		Size: 77.5 MB (77453158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8c1f343abfeca8c8f0b49ffc088e4196bc8c0a7076bf32f73c640baf4fd4a2b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8332810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3f63a53262e5bd2182ae82f8eac6d8ca03e21e47285282efc49e540b184237`

```dockerfile
```

-	Layers:
	-	`sha256:3bcb790b4a1e0edc0d0ef8e2439b073708a4f840b9be3217f2880ba74aff0528`  
		Last Modified: Wed, 12 Aug 2026 00:07:07 GMT  
		Size: 8.3 MB (8325512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2a2fc8e952f0ab83457a06a5f5f8a4af36b399c5107c1d79f323e68d46aa582`  
		Last Modified: Wed, 12 Aug 2026 00:07:05 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b1cb1ddb57d6a892d28297aaf2aef78d8847133cff447c8b595a318280862b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156188039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b8bd74fbfca308fe4028bb2876b378cfedb513b09a339d0fb62f928fb5645`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 01:07:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a4f59ed26dcfdc36a2af78406bf56ffd7a79cb3b3675a5ae541447ba304914fe`  
		Last Modified: Tue, 04 Aug 2026 23:50:35 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9617ad90a55ba20e555b6d1696c9de4ec9fbbd6238dba2d2b07e3e55fa191a01`  
		Last Modified: Wed, 05 Aug 2026 01:07:51 GMT  
		Size: 27.6 MB (27616352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79c93158657c7cc1ce5210edf16f78ff021e32e9dc11867c5e54f3b99f4b74f`  
		Last Modified: Wed, 05 Aug 2026 02:03:44 GMT  
		Size: 79.5 MB (79493202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4888fc5e8c04eb1ed20c3c14640f7afc2635def0d3b75a584c6a1de568f5af91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8344757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19f1d91c295a01a3c88dd208c71e6a668a1fbc376b44d035e969e1c789db6240`

```dockerfile
```

-	Layers:
	-	`sha256:ed89a7f572ad537112b5edda47a31fe678205f72327080854f312ef1fa520406`  
		Last Modified: Wed, 05 Aug 2026 02:03:43 GMT  
		Size: 8.3 MB (8337491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8be5527c432742dc9ecc0e31812ecb937ed78a32820c1987a959e8c5205369cb`  
		Last Modified: Wed, 05 Aug 2026 02:03:43 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json
