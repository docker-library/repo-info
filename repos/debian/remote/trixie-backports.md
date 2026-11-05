## `debian:trixie-backports`

```console
$ docker pull debian@sha256:5b34926d741ca659bcb7f99d712e1dbaf10c122655e1fe5b89d4202552775cb6
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

### `debian:trixie-backports` - linux; amd64

```console
$ docker pull debian@sha256:471f7ac462dc3340a91773a376acebe4dd4f6414a7a6b29d2dbcfe768341ca76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49412730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0006f97cbe8d1a00bf9d6a76faeb25f2c48ce8ad61d385d39b490516b99f0c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:27 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55155b123ed0e3edad3903f5558db4b61afd3ab84f449d7de72b8935e7e89e3d`  
		Last Modified: Thu, 05 Nov 2026 07:12:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e5d4e83deb2b0ed85f963314e9532ab097291a539b5c39f790f4e0b1d0ef873b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61ec8dc61e6c6704cc993099cd7acd7ad06099fc76b1a736925d45a93eff42f`

```dockerfile
```

-	Layers:
	-	`sha256:73cbcd89e50db8dbc9d511155dbedda339e02f63e8df89ce9598dd828b0780ca`  
		Last Modified: Thu, 05 Nov 2026 07:12:33 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08af72c9e153ee181684d4edcb0a296800881ecf1c91a08f35612bf0db7beff5`  
		Last Modified: Thu, 05 Nov 2026 07:12:33 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:eede7cc7e0bbaca90483f51f5acb0a07aaafa412e487894fbc8230fb4bf65789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47580083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b555160079d918582e6056dbf7b2c6f421732c4b40f2b54bec95793c46ef8ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:22 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6014ad01ba3bbdd7a5930a9421ba5183b08db4d400276b1280526dcab0eeca2d`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 47.6 MB (47579859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08396e2e4e89029352106c8eaf1ea98db522fb4063781a5c740786847e36e3c7`  
		Last Modified: Thu, 05 Nov 2026 07:12:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:256075ba60e00496e5bf9eb33bcc81f0a5bfe7419acf97e82e843b24f9e81046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31bc46dd9c6ffe3d1b77142acdb977522dc75b1cea2a4992aa6a9187b8d40eb8`

```dockerfile
```

-	Layers:
	-	`sha256:c4eb4efb22baebd88800cec7778b45f8c79cea19fe50e6c7a25bdbd208593929`  
		Last Modified: Thu, 05 Nov 2026 07:12:29 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7a1bad30e30343873b22adc18dc13f6f1ce69a4b7e67e230959998963906077`  
		Last Modified: Thu, 05 Nov 2026 07:12:29 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:4ad3d7b248959cf841d044ed66b663a7121b41b8916d22bc922068ae0f5e973f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45831347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:682705d8531f068326e21922086b96d1341426c4ae31c49c4f5a632d91a45809`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:16 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75a7a45f2c4a430a670ecc9a20843771d61ab1d8178167c9e16189f11228ffc`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a4a7a143e867f510600d70509c2b3b6f043eb2e42d0ce17d912e8d527d930dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa5e0f10f546fa21caf96d1c2c7a631653b60a8c079efe91762fe3be4ee1a39`

```dockerfile
```

-	Layers:
	-	`sha256:e30a34acc5e4b4a3e96fa61704f249d7c5ff84e1c257f001286b763c8d583f0c`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06490dd1f3f8f63ce429e8d8f553375be272f997c45c477bfb5e9e6f0a141706`  
		Last Modified: Thu, 05 Nov 2026 07:13:23 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:ab26c892d1ff29cc108c9f6908979aeed5ac64514c6ceda1d64ab41176eeb620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49778827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bb23d0c2a42fb4c299f12d5ae28a42ffda04f7eaaa62e4efda6f2bf335c0e0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:44 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d8a3eb46f84acae439a420c02d9fa1a6d6e99c192a96aecdf264af947b18b`  
		Last Modified: Thu, 05 Nov 2026 07:12:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:47e6269c035292884b0a12219d3445758372ff1d62cdae9f6cd25cb4d8f6e758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:047d2e1455c0270d0733e39c277a7b5ada1d9c9577193d82dcf97488d86d2edd`

```dockerfile
```

-	Layers:
	-	`sha256:4e61ae8375ee67d7d1b9d97ec87440cadac85827c473dd7aba470c96fea54954`  
		Last Modified: Thu, 05 Nov 2026 07:12:51 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb40bbad9a186a4bc7fffcb1ac8fa338b0f32126c0e9652efe7d13e240b723e`  
		Last Modified: Thu, 05 Nov 2026 07:12:50 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:60f27b4cb1bb235fe3f2af95bee1e8e67bc592a5900234e6d644f626d623876a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50920796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed95a585c605d8c5f699171562c882858cac9109c2f38a25ef3c2c1024cbca1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:13:11 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed14a9cd61db491128d54b5d989fcaa7e24685497e1cbca300338a7d0804e207`  
		Last Modified: Thu, 05 Nov 2026 07:13:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a9fdac23472245a76c668e9d7b80024173dd9ffab988a3ca4a9c3542eab916cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af2a54df9b17ca10a3e240c48a76486992e895c162f966141e79634a5a4e644`

```dockerfile
```

-	Layers:
	-	`sha256:b32e6a2d4911f42652f2dc9ff0f1fcf73f6f26300fee64ae4d2df321181126b2`  
		Last Modified: Thu, 05 Nov 2026 07:13:17 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:159753fa169966d68dce17531af0b484118faa68f50f2551beb7d89f2a85b1ea`  
		Last Modified: Thu, 05 Nov 2026 07:13:17 GMT  
		Size: 5.8 KB (5766 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e0606364a9517412e1588261faa4016da3cdc75077b63fb3e90cafddbdc724cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53225814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1827fb10837ab56ff2f1937ca8f7803f4550da045d1cc11a4097e8b3cc72289`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:12:05 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ef86b215e7c98eff22bd5c537b9ae2b987116917cb8e5943a5eaf94ef151b0`  
		Last Modified: Thu, 05 Nov 2026 07:12:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:99d885471c3c6716e379d9bcf134f30323b4534045d4b36da346a2d9c46fda9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3ab6be782838a644994102405f88856b084d53271d2f6b02429f5f1f36b58`

```dockerfile
```

-	Layers:
	-	`sha256:36e56eb3527c4e2efb14ae2b9851141124f403f6b8bfafe2566587c04561902f`  
		Last Modified: Thu, 05 Nov 2026 07:12:16 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa438000020b4cb39b51b79d838e8bcc08df8968a26604437f25810f4b7f44ee`  
		Last Modified: Thu, 05 Nov 2026 07:12:16 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:e042013fad184b8374c51aea21b12dcad49b4f9502ab0d017088ea614313c551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47892458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177707525ff408c10a903d66e7fb149b0d5dbe27f375535ae43509fae5cba309`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:51:39 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c14b8ddf6f44cf7593992e51d2d8638d5bf0eab35fec3f4b384bc222453acc76`  
		Last Modified: Thu, 05 Nov 2026 07:37:06 GMT  
		Size: 47.9 MB (47892235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d72bc431022c01f4c9e7e3ad4e8c6139337bba56f5c0487e6d7a2c25945a9bd`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9120c3917946ae1b591efba869a4a3b2d5c5c470d00bd70727bab52d0f0cc82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81e5bd0ef85cbd7a6b394d6105403ce0997f044010b5bcaf1103609d8c6588cf`

```dockerfile
```

-	Layers:
	-	`sha256:8c2359739d32d801c9a6386de804ed7052240953a193bfd1b4bd9bcfabe801ee`  
		Last Modified: Thu, 05 Nov 2026 08:52:50 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73a6947d8051195edf8661b99c175ffaa0d8fc49b5e7ecf562703013c361ed80`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:04d62cf9ed56112e9baf6552cd90b7a647f625640a88eea04b8430465fa991a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49479413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b87259f9dfe138d0069834316a1deaf1defc306d7c41670351578cc68c85e88`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:11:27 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1587f33f2c4545e0cd6c9eb4a5ead1e44a3d2b1354448105dda30a977bc10186`  
		Last Modified: Thu, 05 Nov 2026 07:11:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c3c4788ba0c6ee33bc451c4dd15310c0096a1f09a41190e820e31b71f6510757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c3612369a5c0a19e68aa24d688f4e56023b57bb4ef9173bffb7893728f2510`

```dockerfile
```

-	Layers:
	-	`sha256:bec012828daa58ea82788f4eaa70cdc5477dcb58604dfe957e390f58c2c2641d`  
		Last Modified: Thu, 05 Nov 2026 07:11:45 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f3eacab2bf1e2e0253097e667051f22107afde39ef92faefab4ba02f930a330`  
		Last Modified: Thu, 05 Nov 2026 07:11:45 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
