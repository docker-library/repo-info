## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:7dfeda14b9fe91ef2d879616399d36624691403ef318ed54258a3ecec0e4e934
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

### `buildpack-deps:bookworm-scm` - linux; amd64

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; 386

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e89fe388ffdb58784e69a60a7edf56f37809006bafba2c716760d3bc2b05f87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147901740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d96320b714d735c7d784e36fba479df46d09e5514797757f523c8f22a75022`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 03:15:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 09:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0e9f3363ace736c21292a425cd627663814b1275272b7cf79f502454af1cac`  
		Last Modified: Sat, 19 Sep 2026 03:16:20 GMT  
		Size: 25.7 MB (25703264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb8363b45637c8da3b7da1113159dbb24fb241a976701cf530477d2ae974472`  
		Last Modified: Sat, 19 Sep 2026 09:06:01 GMT  
		Size: 69.8 MB (69849171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1997fe075634e79ea6af8deceb96b3844341c0cb316a1b40ad9a5e4037b31127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37cee1489b7169806dbe44ee28b346f08e45f5d790810775a11743fecc72e8d`

```dockerfile
```

-	Layers:
	-	`sha256:db9328c1694f63ec9ee82dd33836f0baf9c6efd7348d788400b3625960563882`  
		Last Modified: Sat, 19 Sep 2026 09:05:59 GMT  
		Size: 8.0 MB (7978495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15738b95f9c6e2e45e77d22a3e1c9d702b499011250eef3d180395a1c0eca011`  
		Last Modified: Sat, 19 Sep 2026 09:05:58 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
