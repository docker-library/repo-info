## `buildpack-deps:noble-curl`

```console
$ docker pull buildpack-deps@sha256:6b03a2e5a50d3b482003a040045952cfbd7ed8081e1d6ac85f283b6e44fbff27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c19e0da7e5c93ff9102c5001eedcffbd8f8b8d70dc34efb0da2bfa82efdc8046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43381921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e015b409147a58df2e164226a97a9c85e9d442a0037c7a19f98c4bd40370e7f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f4fe7bf6428eb2117211dde497064c431b9f06c75e6550c8d89c605a629ffd`  
		Last Modified: Fri, 20 Nov 2026 03:09:59 GMT  
		Size: 13.6 MB (13588624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d43635cc4ad1189faa426b898c9f6a593524c7a45218cfbc01a343c49f4e2195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2598553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c6c6126ca003ee560ecf286583de43a1891051f9407c8205bd084d4dc53032`

```dockerfile
```

-	Layers:
	-	`sha256:210196ba9c553746dd686a990090b938d2fcfb5ab477dd001c1b2cb1ae3d838a`  
		Last Modified: Fri, 20 Nov 2026 03:09:59 GMT  
		Size: 2.6 MB (2591637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b95ef03906745f7cda08f5d2b12e29d9c8e9bdac59ecdccdeeac5170303bd4a5`  
		Last Modified: Fri, 20 Nov 2026 03:09:59 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:090766aa989648b120bd097767b8fcd2bd78c6c6a787756f7929884886253c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 MB (39665432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6be3c787818c50bd3db8b601f0b3239062019573c33c932fa480c10c0dfb169`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:05 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:05 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:08 GMT
ADD file:eddbc4b43f6fadc774a0b15ea483785d3cb23b1b831791ed71908357858f40a9 in / 
# Tue, 10 Nov 2026 18:31:08 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:791147b088b7508116b0b388cfcf00e16fa77f527003abee70726bcdb34b8248`  
		Last Modified: Tue, 10 Nov 2026 20:09:32 GMT  
		Size: 26.9 MB (26921983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7e1f0417d32653900b7aa4be28b54963fe1ba49682a9edccc5303b0a77ad8a`  
		Last Modified: Fri, 20 Nov 2026 03:10:47 GMT  
		Size: 12.7 MB (12743449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c39508a8ba6f68f87aa5c10ed66789670074b526210c1ebe73aca0ff31080462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2600921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f619b95786478e4045048f1cc6a27eaca101968d91840614ee0439c8f66f9e25`

```dockerfile
```

-	Layers:
	-	`sha256:c28f6c514af67d33b51316b0188f2fbf9d05ab7d25083382120f986c4dab9764`  
		Last Modified: Fri, 20 Nov 2026 03:10:46 GMT  
		Size: 2.6 MB (2593941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d61555b0549658b306892e1bbaccbde1215c7efdf0e5759e76f63cc0d815cc6`  
		Last Modified: Fri, 20 Nov 2026 03:10:46 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:04f72c68274cae07158f719e98c68e490b7730ccf77275f0eabd7a3d853b37c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42397055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ae068861473c78afb255b0eb944ac4c7856aeed08244f3b600a9ed7f0a4e9a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e415d8aa633ce5fb14b6f0fccd8e7f66991b4821aab5f0872a43bbc083eee0`  
		Last Modified: Fri, 20 Nov 2026 03:10:16 GMT  
		Size: 13.4 MB (13431737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cbf40b446ef782a0b9593b75a08c6587156cdcb30d8dd4e971fcf79238996b27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2599691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9668a87f5226a69edf2ae009031df1a034c511b2fa68ac44a0721305d047b0`

```dockerfile
```

-	Layers:
	-	`sha256:293a8316c564817df93b4968ee26adfe5f76a34861b0fdc354677dc19b8b7a39`  
		Last Modified: Fri, 20 Nov 2026 03:10:16 GMT  
		Size: 2.6 MB (2592695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7347956cf50b09aa8041d129350ff280b131154a86b46500554e215507fa7dfe`  
		Last Modified: Fri, 20 Nov 2026 03:10:16 GMT  
		Size: 7.0 KB (6996 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0735ac844cb9c29dd67489968e7bd07094d0d47d053223eb879d711d5aa73793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50321111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47382f62d0bfb5570b3d2fcd625d4efeb5a65cc35eb2d2ef82dec3c762d68ae6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6eb18f360b8722c5c837561b5d6bef697e995c3f2651d614cad3baeb75a3587`  
		Last Modified: Fri, 20 Nov 2026 03:21:45 GMT  
		Size: 15.9 MB (15914872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9b4a30cdd268fc8330a32e181f3a20eb09ea14fe4118c43b99ebd888fe0cf7ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2603204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc1b37fe459375e19dddbcb7b4b1309c4015eb3a26b577b4c0ae70472c3eb50`

```dockerfile
```

-	Layers:
	-	`sha256:abf7a3f2462ed9d94d900c1e633a94ebf8bd4cb4d00d437cddd761e9a48c3ed2`  
		Last Modified: Fri, 20 Nov 2026 03:21:45 GMT  
		Size: 2.6 MB (2596256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d3f2557d805b4f08af4974328feca5b2296ff2b382b0b90e64b76b94d52d6e0`  
		Last Modified: Fri, 20 Nov 2026 03:21:45 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:fbc8a4dc25866498879edd65979ee0b04eb1a251ff325b7baa0635805b9ba6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45376079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2998a7df2f582931ddff93d9c05eb0bf4788e41b6d35281b01d5d1787f3cada9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 09:11:18 GMT
ARG RELEASE
# Tue, 10 Nov 2026 09:11:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 09:11:20 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 09:12:35 GMT
ADD file:9216d1af3350872b7407d11bbaff1b1eade0611505729393f87dae6fb7fe366f in / 
# Tue, 10 Nov 2026 09:12:41 GMT
CMD ["/bin/bash"]
# Thu, 19 Nov 2026 01:08:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c1ea9e361ad6aa342c72500d92e9e6e1347fa35a4475914ad2226cc298516f11`  
		Last Modified: Sun, 15 Nov 2026 21:50:00 GMT  
		Size: 31.1 MB (31074654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85886d7ed4642355e04252ca629d66021028cad057ff0121fe5538adb42c0faa`  
		Last Modified: Thu, 19 Nov 2026 01:09:22 GMT  
		Size: 14.3 MB (14301425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3fba3a70098cfe00ed3bd1eff266ee3fb0baf163086c639a0d60050d0e136378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2592484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c3ea81b2dafc708f548ff97e50a1db876c230db8f14ef8dc6394b24b9adefc`

```dockerfile
```

-	Layers:
	-	`sha256:01c81087a7a75629be5eb438359206b9646a1454227d03497d967bff9aa5b1dc`  
		Last Modified: Thu, 19 Nov 2026 01:09:20 GMT  
		Size: 2.6 MB (2585536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00e8e20b9f318429f393c62697fa264afa9b38cc20d2aedfe25c2a65b6376aef`  
		Last Modified: Thu, 19 Nov 2026 01:09:19 GMT  
		Size: 6.9 KB (6948 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4ec15128a9e0e63e8d4d5d6dfef428814d49c12a52612ddbab4ba6acd131a87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44865613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d993668c01fedd751b46a75b2e9af10cf4c23cb2384b6359125c1a937f684587`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751633ceb83c594b94c110a32dacb24ba5fdbca8cfb3274ab1660eb50613e203`  
		Last Modified: Fri, 20 Nov 2026 03:09:02 GMT  
		Size: 14.9 MB (14898180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:560e30ad38935fccdf042128d8d8f858dd7b23d07c710eba67803bd0663cf02a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2601378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998cad872eea5d92afaf31d7be67e494adb559cbbdf6b39ef2df7322f8c73e44`

```dockerfile
```

-	Layers:
	-	`sha256:105f6e8ae099968dea1b97572d7769dc5ad6063ba846a7b366aa5a688d0b5ab7`  
		Last Modified: Fri, 20 Nov 2026 03:09:02 GMT  
		Size: 2.6 MB (2594462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:175fcf4560b99f44b641f3063510b914cf18af130961c2081aba38a279184a37`  
		Last Modified: Fri, 20 Nov 2026 03:09:02 GMT  
		Size: 6.9 KB (6916 bytes)  
		MIME: application/vnd.in-toto+json
