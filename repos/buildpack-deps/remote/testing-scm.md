## `buildpack-deps:testing-scm`

```console
$ docker pull buildpack-deps@sha256:a6b7aa86953332f902556a8baf7cce2287a060715940ba9e2ed1eb5c9156bf48
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
$ docker pull buildpack-deps@sha256:c218d43f08e4a9b7d4a749589629fb35b446baeebb4fd078ed7dcd58102ba12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158728148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78940cf05bda794f43411bc1838cbe3bee06e547aa6f6a37fe880025831e85f7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:39:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:912f7fb872b47c0231dbad5bac1dbe21ae0bd29e00e45b4912e9d8ff5fa833f7`  
		Last Modified: Wed, 28 Oct 2026 02:23:27 GMT  
		Size: 80.4 MB (80401284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1d82713b0ab78655797b7b12b8b171e3aa269b68005ad44ada5069316ae9ab05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8329998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9219d2579e33911662679f9c2e53df05acf4f9965825ba590ee7766e7c07df3f`

```dockerfile
```

-	Layers:
	-	`sha256:c56f3d726649cef623cd96af810ab79d596ccd1ef00bf47a405d309640bc1564`  
		Last Modified: Wed, 28 Oct 2026 02:23:26 GMT  
		Size: 8.3 MB (8322732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b6a8e529fb19c18ea72b8c404557da3d76ae46c773517a100ca3871600d54e9`  
		Last Modified: Wed, 28 Oct 2026 02:23:25 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:652dfbe2843cd1f6060d5f64efda4211519709f6697cb8c334358a595330445e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.5 MB (145456498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbdcc4f0f69a599cd33a6a51fa2f2948870d9ec3b470b513eff1d2c0670f9b0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:21:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:04120beab8a285c5eddc34b1a64b3c13ee0d4b39ff8ed18236f14b053877c362`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 46.0 MB (46005247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c9ef57293f97f17623353304a5e9c68415a52dd2dd9d4d99de77fb61e76a2d`  
		Last Modified: Wed, 28 Oct 2026 02:21:32 GMT  
		Size: 25.6 MB (25595834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059712e68808cb6a5ff27609e354a5c38fced224fce3d1435b0912c2ada37d26`  
		Last Modified: Wed, 28 Oct 2026 03:47:35 GMT  
		Size: 73.9 MB (73855417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:55f48174759950134328f846b5fc3cb1175baaf510287b911ad8f3358b6bc22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8330143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b988552e0bee4b678331f7ff7f166033790b250994c90a3dddeb6e441893df65`

```dockerfile
```

-	Layers:
	-	`sha256:81209e81b7bfdaa5969bd1497952e8811d1cf6efe3e1c8c8c795f9de54a7732f`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 8.3 MB (8322814 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f198726f74f0b6c913fa33512548b93f659c764898204b4612c209914e6bd1ad`  
		Last Modified: Wed, 28 Oct 2026 03:47:32 GMT  
		Size: 7.3 KB (7329 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6060757934e098dc059abea8df7d6b48c61e3be1c719912af87952a63f7672d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155331004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4870969b6aba9dcbe1b9ebcbd3ed5d7677a34dd880428a744c29c074f09e8d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:43:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fba7d1c02cf0644704ea4dcf623c9231723afd3f333d8f052a829e427cefc4a7`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 49.1 MB (49143254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fa1a66f1c4403c3ff5e15f93ed7ef65ec5d3ed0834152f996b24e60199114f`  
		Last Modified: Wed, 28 Oct 2026 01:43:21 GMT  
		Size: 27.4 MB (27429765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f5d13d5b4cb2ecf626f869b4c74afa28ca53bdd2e9e1213516992c5c599bf9`  
		Last Modified: Wed, 28 Oct 2026 02:35:07 GMT  
		Size: 78.8 MB (78757985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a606a381724a6f43b667b65fd39c822239832de98938220f386cccf11e26b8dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8339725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63dd96e4aa793c2cc78392ce86945510003f72c6b25c81f74a90bc8593f44d6`

```dockerfile
```

-	Layers:
	-	`sha256:4ff6c73449f4a8dd6fbce220783f9207582fbc859c93bc9b38b2dbb765aa7809`  
		Last Modified: Wed, 28 Oct 2026 02:35:06 GMT  
		Size: 8.3 MB (8332379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38664afef743277ad57d72abfc3c6bb291e6688f5e75ccac904de9eadf1b3ab0`  
		Last Modified: Wed, 28 Oct 2026 02:35:05 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d7822ba1125418a7160c9396fc16e2ad6403998487a4a69e0cc1376ec0be2765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.8 MB (162757693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784da702e9956cba25faee8cd9df2b27af13e338a067ddb011df1ac6e01e1432`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 01:42:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:473db600766efc41b02bed5e9d517e6b14a664bb7a47cc4c2d97171a2c24bd8c`  
		Last Modified: Wed, 28 Oct 2026 02:28:44 GMT  
		Size: 82.2 MB (82183266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fbc8e989053dc4284ad9c7874f0ed23bfebcd5cbff2c34ebd82d4c970bfc7648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8325364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b72e0f510f1cabdb8aa7e8dc607ea87b24ad9528b7e0253ef9d739043d18bea`

```dockerfile
```

-	Layers:
	-	`sha256:94d8acfd238a8f62bcfebde33767bd5d5a165984298651e77d03d5496d17718d`  
		Last Modified: Wed, 28 Oct 2026 02:28:42 GMT  
		Size: 8.3 MB (8318120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:999d5871c8ddb96259c8765a7f8f6c8f537041dcca64e6ba6d0399d039306cc0`  
		Last Modified: Wed, 28 Oct 2026 02:28:42 GMT  
		Size: 7.2 KB (7244 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:a728c263b6c5f0d2cb8d39790131586010d9442ea9c027fc51c2f30af07716b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171251725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a7b03887c32a90d8712c283cc20a6b7d9330cb2e76f4912fc6effdccac0799f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1792531975'
# Wed, 21 Oct 2026 04:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:04:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:9a6024c34bb400799f6ce0f1cf2b933a77d05b5276cee3a0a65e070b97a43b80`  
		Last Modified: Wed, 21 Oct 2026 12:05:07 GMT  
		Size: 86.2 MB (86233976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:080dea2c6bdff12d7c6655da7c3a0925a6fd5161249494fa60f77458cc960a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8336363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69b79457bdf848926ce7a0391d75df4df62d99b50ba91597a86d4e1ae40f287`

```dockerfile
```

-	Layers:
	-	`sha256:09e9551c104093492cf8e85ff2f1ff55a78c3a0772403d75dad3e454d016a82e`  
		Last Modified: Wed, 21 Oct 2026 12:05:05 GMT  
		Size: 8.3 MB (8329065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86db9216f752740a19cf12a388b3a9de5959a13c4fcb008e9a6b70dff4b50565`  
		Last Modified: Wed, 21 Oct 2026 12:05:05 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:f9f0c8e0359861121a079810bb58e627d6f3707dedbfde1e179f029a08ee6b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152603411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc4482d7de8fb91101880f7b425ad0ed4c35e8577b598dd6673c1d9cc342574`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1792531975'
# Thu, 22 Oct 2026 05:05:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 03:49:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:3a1ff2c7b2c417377f25b940ecb4ed64ba46773bfef441e0430521386bcb3e2d`  
		Last Modified: Sat, 24 Oct 2026 03:53:31 GMT  
		Size: 77.8 MB (77807485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:381bfef5d7d503942b9d8312a26e9665e57741ae95fd33474c450f35fd337f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54cac8845b183b7d4618472101ac0acb915cdfbeece2906f38418c91aa21b6`

```dockerfile
```

-	Layers:
	-	`sha256:2891940f4079049674851878dbe364a65af8ffeb0d7d19ce6586ec5a683f31f6`  
		Last Modified: Sat, 24 Oct 2026 03:53:21 GMT  
		Size: 8.3 MB (8310050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0d85d2590c4aeb59a1479c84885ab280dd309ce43b72f2624c849212fe3bbd9`  
		Last Modified: Sat, 24 Oct 2026 03:53:18 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:20d1664de717693c4076ad8e3d71f498643018b87bb472b0763458ae46128e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156938971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e8425117eb2fd88daa96a229269121139cb4b338b05c7e9ccef9672fed4b59b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793059200'
# Wed, 28 Oct 2026 02:42:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:11:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:adf56047d9724d8a205ee3987d6c40d7d1a3b7139a73384a53ff14751025b492`  
		Last Modified: Wed, 28 Oct 2026 04:11:40 GMT  
		Size: 80.2 MB (80222844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7ecbe836db701e97be01d292854da248150f3cea6994602dce7d1757556437ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8330038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191815326312421bfb7024fc69f42efde9a1b403cdd4f64ee0b3119c01237bf7`

```dockerfile
```

-	Layers:
	-	`sha256:74564e808f18f5f0aa84d5807f3fb462c047fd00707c1b2acd5ee90d61ddf015`  
		Last Modified: Wed, 28 Oct 2026 04:11:38 GMT  
		Size: 8.3 MB (8322772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b0a39d05211d0f196569d5ca476eef7e9b780d0dcff1065c928af4a4deb0e25`  
		Last Modified: Wed, 28 Oct 2026 04:11:37 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json
