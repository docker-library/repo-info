## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:8ea58fbc817960cd62d512044956ff00cb94865e549eeec32c12139413262004
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `buildpack-deps:oldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:17923645546d74acef88727bce62c23bbaed953fc7097c41a8b777bba3ca98de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139108342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d2284be437af82eaf8ebf5d1965223b8f259d82c1a523fff8e46de50ed5b54`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6eb4faf7d6bd7ff50bfbc777dd8c7c8805d58bc7daa2219baa941067f71e3781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7977934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae04e2a92bc66c24510afcb9f906ffe2c5c1aa35e6136aac1711b0100f9eee5`

```dockerfile
```

-	Layers:
	-	`sha256:fc46edcd6246016ddb4fd33660e9c9e9d04a637b49ccf860ea0601828321ae0f`  
		Last Modified: Tue, 06 Oct 2026 02:34:57 GMT  
		Size: 8.0 MB (7970624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65ffc5b4f4ea7adad485b9de5778844fb98534791b6753b0a56bb877608cdcae`  
		Last Modified: Tue, 06 Oct 2026 02:34:56 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:dbc50f36ca5e4ee445ffe3c1810f8c97de7fe7a04d2ef6fa3263726019b8a206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127759968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76e2cb12f924b01dcad0cd5cba388845d5871f0696b5418aa32cc1167275f6b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b768da400527c8a0e4827a2830eb7d6018a22af7b71ff5838ebe45eea9ecbd83`  
		Last Modified: Tue, 06 Oct 2026 03:40:51 GMT  
		Size: 61.8 MB (61771060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:14a60d6227dfeea721b9c9776beb63e994843d1e767b07fdc0e1b6f68373cafd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfbe69777a263bf510ba87e4a578a1c3b04bd9fefe11864dcbc5b2f756067df`

```dockerfile
```

-	Layers:
	-	`sha256:6eda336ddb64e6fed249876b653a896547f5c4b5f16e42d10bf65d09c330163f`  
		Last Modified: Tue, 06 Oct 2026 03:40:50 GMT  
		Size: 8.0 MB (7971901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44a2640ca5498e17b193b6c4070e44813df35e9d12de5ecaa1da59262b0c7673`  
		Last Modified: Tue, 06 Oct 2026 03:40:49 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5c622c484a937f524bb2d8a2bf7fb1a45ce77fda7b56d20fe1fdf7bdff35f69a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138613636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dbbab90854294aa3b5e6448a95640ca1b05731705a9276401723ed2ea617b77`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:841f6f15fea66bf2a7a6a600922e5bbc3ebac60aece5eab869450a9a6cd4e210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7984407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bcefdbfe406399142a50595351cdcad1ab969b6ca761a291a3f7c8e12a02cbc`

```dockerfile
```

-	Layers:
	-	`sha256:e8f546c04a67cdd448712de1078870c233666c2153b47356047ac68b3f5b023f`  
		Last Modified: Tue, 06 Oct 2026 02:25:51 GMT  
		Size: 8.0 MB (7977017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:825d0373b78222b6729f0a8098b69657803c19a19f2baeaf122973baf5e36794`  
		Last Modified: Tue, 06 Oct 2026 02:25:51 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:0bb5628edb65f3ac34ed946eb1c2001bb5926c47fbfb80427f3842ac27b57427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142903868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3def7d2354b832d8ef6b8dfa533dd7514c173f594066628a067156c97e38d2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f4e886b543dd0de1ec42d806d33e26264ccc6571085235d546d2e40a384e9`  
		Last Modified: Tue, 06 Oct 2026 02:32:29 GMT  
		Size: 68.7 MB (68690210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d94c10bc91c029db72cfa6419463c370ec9b076a44e7324aa9f4aef061bddfde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478eff9970dff571434d3aa382a6de95cb77c167e876815c3aa39b409069c2e3`

```dockerfile
```

-	Layers:
	-	`sha256:8c68b6fb6228364131d076f9c7eacbf01e70e66e1d8181589cb65774ebe3bd2d`  
		Last Modified: Tue, 06 Oct 2026 02:32:27 GMT  
		Size: 8.0 MB (7966783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78469fe968a6a710e3018ddbcbb7ce1437b1677a9d4cff91c467e90259f31d6f`  
		Last Modified: Tue, 06 Oct 2026 02:32:27 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:419383d6082127498e0e04eebe6923be0e6df9627285a90e66cb37d7ffc6af4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.2 MB (150207856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a42fb352238b5d1e1af05e97484c8e21b38166f3d791cdfedf363698f875f0f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a09cfc418c3aec494f8946561bd728209196dacc09fd66d1085056f4e142bc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1b44cfe6e623d2c9cb24fb67c22bf2549f47d603dedcbe26addcea3299f889`

```dockerfile
```

-	Layers:
	-	`sha256:bf33434094fe762333f224e55b135f13544f85d2e9535c23e86317841f906d3f`  
		Last Modified: Tue, 06 Oct 2026 11:38:48 GMT  
		Size: 8.0 MB (7978495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf57d6a36af6bc4eadc336a7a439525a12d62d1edb9d728746585f9732bc89e3`  
		Last Modified: Tue, 06 Oct 2026 11:38:48 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
