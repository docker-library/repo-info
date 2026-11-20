## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:9f9786e59f48e3d71ba5a83b26f689d2da9d731e2361f6948f422fc6853036cd
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

### `buildpack-deps:jammy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1059119270cd21310714140aa3e39969245a3154ec3ae905ef8e60fa82f1a40f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37136831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fee698c8bbe9ffb6030f2f566690adce20ab39cb3b6b421b5598e12a0b3dc8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba289bf7917cc3690a1d142485d35c2c92979a691772ec44a0a9ea481ea0619a`  
		Last Modified: Fri, 20 Nov 2026 03:10:02 GMT  
		Size: 7.1 MB (7067016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:af1c04cec341cc0b2395dcd25dcba16b9f3c4c23b43dff057fbd2aa07da7a922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b37f38019aa63ba178f65cfaf13e576f317a6cb39dd3c4379980e9f4595d72`

```dockerfile
```

-	Layers:
	-	`sha256:880d5b72d6f78f8aaeb1fc1a40eea24fbd17dc7c1f4b1fc8fe456b1dbbfb8180`  
		Last Modified: Fri, 20 Nov 2026 03:10:01 GMT  
		Size: 3.2 MB (3188999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a7058fd1d0dff321aac81f95b433793dd073301962d35e1a42d6044acfa36c7`  
		Last Modified: Fri, 20 Nov 2026 03:10:01 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:586353e0521407b70768a37612f88567b27522a4589ac7fb08d3e89cf29fe9bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34142770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1749f85795cf78a26602878c34bf801f9ed79bcf087039e611c6e034dbd9958`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:40 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:40 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:43 GMT
ADD file:a872ab0d3f28a3797c7da6e33a8d7923099a6907c527b58bce44bfad93c122dc in / 
# Tue, 17 Nov 2026 09:18:43 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2fde5ef6b5929fd5892e075a0de0ae7f80762734f112b1892524a5acebc87144`  
		Last Modified: Tue, 17 Nov 2026 10:29:18 GMT  
		Size: 27.2 MB (27174737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d65bec29613007dd234f1af09d77693df4f8932b423186e8d5d177bbeeb4bb3`  
		Last Modified: Fri, 20 Nov 2026 03:10:14 GMT  
		Size: 7.0 MB (6968033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a7e02f017ed392854ef75c7a14aa7cff7dd2a8ebbbb76ecb27c46821370bc881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb056a52d1db9c460d930bab327433a937f975717b54b6ca1d1ab101de2a93af`

```dockerfile
```

-	Layers:
	-	`sha256:ccec638c2a8b777a5c217fee1b83c8bca9f18310776a873f63fa172a02e4a327`  
		Last Modified: Fri, 20 Nov 2026 03:10:14 GMT  
		Size: 3.2 MB (3191306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b525370711956b9f2e857ddc7ccf614691a53afc51de6114ddc96c57a2dff08a`  
		Last Modified: Fri, 20 Nov 2026 03:10:13 GMT  
		Size: 6.9 KB (6945 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f2db98faa0fe1f49c660f9ddda8b8c874483e23f14f1262d0ced4e7119e9e6aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35023329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d14005c41673be5144ef05923c3b55f38cefb93e5739628a53b7a32bc12c72`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4aad13eb428c7c52aa688d043cc7b27ecee97beae97d644adaaceafc6294c4`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 MB (7021928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7a0bca704057d9fd003721eecd2ace9429ef6e95ca9f1365145e4c19f685ae60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3196227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c42a588948b3c050758928c270ea531da34e1e88ca76d1b012f7e0b9c2960fa`

```dockerfile
```

-	Layers:
	-	`sha256:d3e5bee2a1bc404e804299a8618a9f16fb80d88035accdb3469222235cbeed03`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 3.2 MB (3189266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c9c980b8bb3cd6126a9828e87d2b037bd369441dbc53ed03cac62e96377057`  
		Last Modified: Fri, 20 Nov 2026 03:10:24 GMT  
		Size: 7.0 KB (6961 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0bee48f1c565228b915ea7fe20a8daa4c621011dd2bcd61cf277cec167cb034f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.2 MB (43169278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5da42486d93482955c266005f32d1bbccc3bf006e7f74f37b2d72db32e7f7d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:27:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2d091d6bff914e427865c2beafb72a89c485609b6a9241269790526ad6d1ee7`  
		Last Modified: Fri, 20 Nov 2026 04:28:16 GMT  
		Size: 8.1 MB (8147616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:04a6b3e4cabc424cb0faff320caf69f186bcb79a23869daeeeb685030762a473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ec95f70864a822c6a94204e42d422d73c8425a5d8e4d4dd20fc447a83ba8a0`

```dockerfile
```

-	Layers:
	-	`sha256:d3f228b0002c99e555b6816e81bcb32027b2b34d84bd6990f7abbc7713179aa4`  
		Last Modified: Fri, 20 Nov 2026 04:28:16 GMT  
		Size: 3.2 MB (3193635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2e9b0a23fcb0ddc54fb0ef63d75306d4bd56de927cf59d32675f235f15c9312`  
		Last Modified: Fri, 20 Nov 2026 04:28:15 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:f5d00470c084b9d0d5bb402d89b37020aaff736aebb8192dd7f07134a15f700b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34693840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7480a35e76a64530ccbe008c73390b6842becc9ff4568395f478d9f98ab778`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:31 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:32 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:38:25 GMT
ADD file:7e32d6826beb7c99ba7236a5c31ed0eb2180d37c8105507c660fd78cf3f85019 in / 
# Tue, 10 Nov 2026 08:38:29 GMT
CMD ["/bin/bash"]
# Thu, 19 Nov 2026 01:05:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:37f0fa8b2131a4ebd5f7acfaabbc9bfbb0206262818b72b7108339b73962e964`  
		Last Modified: Tue, 10 Nov 2026 08:55:15 GMT  
		Size: 27.6 MB (27618079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd23a3b451d1c8a03d30ee4e85527716e5ffd7f04ee2f33ece0933f9928a583`  
		Last Modified: Thu, 19 Nov 2026 01:06:10 GMT  
		Size: 7.1 MB (7075761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5780c9e424d9232e43f49504f40adb3fa5d6ef35e2205419c2fc633ba4ff16a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7458a6b37b2a9519007f9ba4f3fe112690d1c630fdc8d310e07a430ad8cb562d`

```dockerfile
```

-	Layers:
	-	`sha256:d592109e4a673dadc603027b6d5657382f707a4c135f06752c4a2f0de7cdeed6`  
		Last Modified: Thu, 19 Nov 2026 01:06:09 GMT  
		Size: 3.2 MB (3184259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:251289ae9046042d04a783a541b6617f7c99146e22e7f41c73df4c771a5af4b8`  
		Last Modified: Thu, 19 Nov 2026 01:06:08 GMT  
		Size: 6.9 KB (6913 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:dcd1eb22357e34e669f586cb65c712cb8c4de6ce8758c865db2389a4cf488ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.5 MB (35516659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5002d9705d1f5063d8f1d1267a88adc592481b1c30798c66b8ce88d7c08736cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:08:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2527ff1e571b75b8f8e5f37c7aff6b58a08c93d10b0ebccf64d7725d804dc935`  
		Last Modified: Fri, 20 Nov 2026 03:09:03 GMT  
		Size: 7.0 MB (6977641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9da56037713feeee39c3a6f87635faeba4097400b05d707c53f8d3ffc0d43c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd2281c244272b24d08abeb7f3cf621a081bef5412893f241291619f485a0b3`

```dockerfile
```

-	Layers:
	-	`sha256:9c644d065b1c764609041debdd65743e3916fe286d4ce9bafeecb685a83e9463`  
		Last Modified: Fri, 20 Nov 2026 03:09:03 GMT  
		Size: 3.2 MB (3191216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5fc738c089593f69b694911177cd7a1c351ca20f601ec6216014acb317f9005`  
		Last Modified: Fri, 20 Nov 2026 03:09:03 GMT  
		Size: 6.9 KB (6881 bytes)  
		MIME: application/vnd.in-toto+json
