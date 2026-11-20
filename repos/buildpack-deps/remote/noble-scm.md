## `buildpack-deps:noble-scm`

```console
$ docker pull buildpack-deps@sha256:c4e7382cc1abefe0bbaaf99324fad5122f9def4d3840fbfad17d3c2fd77b9dc9
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

### `buildpack-deps:noble-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e21d776328470d7644c861bcae8dca1d52447f25bb2164172cc3a7d3bada20fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88752988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e6169719f6ed45f5acb999d93f4cc813bc107dc33710ebf104e46a14a88c5c`
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
# Fri, 20 Nov 2026 04:13:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:2e950faf2ba41af9ebd7e2a0075ad905b4ab863ead7b320357611f220c3c56b0`  
		Last Modified: Fri, 20 Nov 2026 04:13:51 GMT  
		Size: 45.4 MB (45371067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e580185702b32a9ee13532aadbefa23b62c6b0decd9b8a8522c5a6b1824ca6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658fa8f08c82a5a859d9f19bf486671479cb87659c9cc4306ef5d15a77f1122a`

```dockerfile
```

-	Layers:
	-	`sha256:9ccb6e18dd9d6f0e790949c823fe5712d338bf7326c3d0a7d92950a637d62944`  
		Last Modified: Fri, 20 Nov 2026 04:13:50 GMT  
		Size: 5.3 MB (5258432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c15df7aa68516a5ee2e893be60c577097277113480fb9210d1d80bc803a9134`  
		Last Modified: Fri, 20 Nov 2026 04:13:50 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2574e4dbfccb36793b4e8252b2832be131a6fe5b489960bbe1751223caf3bbe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88640526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168bebc4232a16c8a4bc7b45ea2c0e4584b98ea991d9f305900fbb095f0462be`
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
# Fri, 20 Nov 2026 04:14:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:bbf47a0328137b2945268bb16a469fe5d7803ffc6992ecb64556038b94bdb88f`  
		Last Modified: Fri, 20 Nov 2026 04:14:27 GMT  
		Size: 49.0 MB (48975094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c6b3209527e261ea342260a01fa922752a4c264010088769913ac9088f2409a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b7535ac40fa6a653a05d3ad6d59be1ebdf0838019bc850786f791f3bfa7846`

```dockerfile
```

-	Layers:
	-	`sha256:493cd89ba4fb16baa53472f842c77fb18fc838d21f154d397c703e86e06a729d`  
		Last Modified: Fri, 20 Nov 2026 04:14:25 GMT  
		Size: 5.3 MB (5259730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1753206b6ab52534fd8cbafd568b03c79c0470fa71e23438736527b6faa233a9`  
		Last Modified: Fri, 20 Nov 2026 04:14:25 GMT  
		Size: 7.3 KB (7326 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:eaaff4c17afe550784b3e72a3565f5e410e214d079d3068fc34ffbd6f53b8502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87784399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd751bef98f0def5b8fb5c19c49f353b6109db9ba2614aaa1e2b40467020c8b`
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
# Fri, 20 Nov 2026 04:13:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:51bf0443734dca177ebc0b0f3eefef6f51e253640779a9a47d0e995d844ccb30`  
		Last Modified: Fri, 20 Nov 2026 04:14:07 GMT  
		Size: 45.4 MB (45387344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c07683f3878919706cb23444f3cdbd8f90f35b256fddccdf671e422896598415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:821380969477213394eb663572da2d2a6209f63cc3b1774efb5200a2f5364122`

```dockerfile
```

-	Layers:
	-	`sha256:72b885980834e1da777a13b0732b4278c130fc7ee72c2f360b3b8513742800e7`  
		Last Modified: Fri, 20 Nov 2026 04:14:06 GMT  
		Size: 5.3 MB (5265624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e90a849bd9a079fb5b4d9c019a2a9e011e3628f2d74d2fc037754750f9064c91`  
		Last Modified: Fri, 20 Nov 2026 04:14:05 GMT  
		Size: 7.3 KB (7340 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e7da574206f801373ce5dc6fc20e1b14757a8d774737a0a47139389167b58ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100737675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1135e598cc12a025ca9b89189554519afb2ebd6d53c59c6f20b5e825668dbc8`
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
# Fri, 20 Nov 2026 04:27:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:e41f8e5d84856f139a81cbf168ab15de45efc934e32bd33f8afcf4f0adc08b29`  
		Last Modified: Fri, 20 Nov 2026 04:28:20 GMT  
		Size: 50.4 MB (50416564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d36e5eb13cb485f4e61fd273eece1970d2d754fbbab5bbed5abc353085df797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439353b40c93060339a866997f3cc971b1de1b6b0a8b90099a5f949b3ac250af`

```dockerfile
```

-	Layers:
	-	`sha256:6e1d7f87d3e0b69077c8f7f34b9c19bb2760a1971456149e969bd91d99e95a63`  
		Last Modified: Fri, 20 Nov 2026 04:28:18 GMT  
		Size: 5.3 MB (5266286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db49f3fe1188db3b178b4ca83cf70b62b67406a27e36139af4c3c90c965b93f`  
		Last Modified: Fri, 20 Nov 2026 04:28:18 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:24161954eadb95af25479b238f7377a74e76cfc9d2af2d5348e85f2bb5834aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99274459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a985a9d68c9a326ae997dc4a4359279373e35693254761c58a4575b9e4a79964`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:54:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6a95e766b7860b047e49d033542badca2f0ebb78f3f1b5af4fab8f4dc39f26`  
		Last Modified: Sun, 01 Nov 2026 11:29:31 GMT  
		Size: 14.3 MB (14301315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c47ede4e756b490dfaaf6436afb35cfc953f4671a16130a77d417545da6936`  
		Last Modified: Tue, 03 Nov 2026 07:57:43 GMT  
		Size: 53.9 MB (53918515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fd97dfebc26357a384ce3839f9f20af9a30ce3bcc163d5c777908b5265445c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69cc5a717381ffd12ac2be07611dd2ad15145d4e21f6d7dab3782367f4f7da15`

```dockerfile
```

-	Layers:
	-	`sha256:fff3140e3fc12146d9c6a2a4db5de757f65050e742daac3a9435f434958a48ec`  
		Last Modified: Tue, 03 Nov 2026 07:57:35 GMT  
		Size: 5.2 MB (5248224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faf8a32ccaf9c65944a3b149e6b3e709750ef1051b07e98ac5eb4839dfcaf3a5`  
		Last Modified: Tue, 03 Nov 2026 07:57:34 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:11677fd143a41a0e0b0615db3ba5dd2a10ee8702f7ad774f4854439a03e35777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91737194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cea7d5f0a446ad7d099093a517cfc2c1162839462be28284a3eae2ff338e5f7`
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
# Fri, 20 Nov 2026 04:13:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:dae2af3cf7505a35515e7c973962749b61cd49f5945b87c2a98c6bac8ad12ece`  
		Last Modified: Fri, 20 Nov 2026 04:13:32 GMT  
		Size: 46.9 MB (46871581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cbfa9cb0852d5b5b30f3862a8428c6b327de17258eb244d743efb3ac39637695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46c17903c93d26b6a82c7b3a19f9b9ec72c2a2d79f8919b740a46219e636be2`

```dockerfile
```

-	Layers:
	-	`sha256:cc50854aaa0f58354d9cf42df76ebe68d7950fbc6a60f353272b373ac27efb90`  
		Last Modified: Fri, 20 Nov 2026 04:13:31 GMT  
		Size: 5.3 MB (5260764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7795f52ac273fc6b2aef0eae357f442f63e59a68306c8df8096e321cab925ec6`  
		Last Modified: Fri, 20 Nov 2026 04:13:30 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json
