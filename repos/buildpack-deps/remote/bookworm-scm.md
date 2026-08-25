## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:02da93eef71891fea924813663ef12d6365d8e075ca3e897edf8c251a2f30f79
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
$ docker pull buildpack-deps@sha256:e36195843463898b54b6e24ab3623b1e7aef2420e8f945afa1b9bb96f2611a87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (136966674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2b00127bceb0658141e3315481c9b7685968f588363f2208ce3fc80723b20c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f4c0a11ca8db9df2f22b4e4171d55cf8512da7192346f568cfe04db2edb8a31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7978672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f53bcea095ef245e7080b12c92e7134f4e22c58bafd8f48d045be35163e7cb6`

```dockerfile
```

-	Layers:
	-	`sha256:15f11d68bcfc44049b7d7954fa8f51c6b091a1ea59dba480a853fe83473ae423`  
		Last Modified: Tue, 25 Aug 2026 01:38:23 GMT  
		Size: 8.0 MB (7971363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ad273446820c3428d10cf4a78adcc0af19c3c1b50c4f974cc970e562fa9d52f`  
		Last Modified: Tue, 25 Aug 2026 01:38:23 GMT  
		Size: 7.3 KB (7309 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f2dfc99361e6d1a888e6276beaf3a4e4f8c60e4e5e5c7fc73cf0a411ca4a9cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125827796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1a5a01a3a345727f80994a4dbd8940f24afd56d9859d7108df04524fdd617b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:236b04b4b69b12101dbd45dae0f059e6332168d0370e6371bfc34adf608f6535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7980014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd4279878a1f30f6112a78d75c6e1182d0fdc95195b294eaf3f4d07ee6ca9b4`

```dockerfile
```

-	Layers:
	-	`sha256:80ed8a2f291b73372e523bf4d50ec97d0a691f4e76dac3679adbc067520fa03b`  
		Last Modified: Tue, 25 Aug 2026 02:36:27 GMT  
		Size: 8.0 MB (7972640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e868a702aa575f9a1188db8e1a68ff585f16470bb2d5b9d9b9819ca4abeb355`  
		Last Modified: Tue, 25 Aug 2026 02:36:26 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:156c016bb6e91cdf3f5f8fe6d5c7c583344c6fc49eedcb1a2242a3d1bf497f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136512487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8f3ce6b02570f75034b162de54c7d30982e48b721153a9a7b8f1fb56327de1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:25bc8484624d2984c043ee6e16cfdb50d948ea20aa3b81fc7178ed06c5757244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7985146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0805be8300767d2f07c2f730cfdf6721d985d0422a16de530dff9df3da8f78da`

```dockerfile
```

-	Layers:
	-	`sha256:ef0c7a26ecab335000c87c814b8d492dcebd47cbf70cf68bd71ab320daa8b8d6`  
		Last Modified: Tue, 25 Aug 2026 01:43:19 GMT  
		Size: 8.0 MB (7977756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a8908e46c09d7da493777910417c9bd2118af59ea0f8ca84c827e8ee7050596`  
		Last Modified: Tue, 25 Aug 2026 01:43:18 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3bdb0908f7c91bfcd752f48fd6ed0ac9dde7f47493d3ec3b1766802ea8edbe16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140628212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f382113bd53f6a96802629ecdb4f6a706b40fdee2a832be953989f468272e4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3fb971610e50bef8da550d97c0e5627b5fa70e211cf3a8a8608ac4dff3c6446e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ccac599ce2cebce00df0259be8aecf1efdd741a56821baf6921b66ea27c879`

```dockerfile
```

-	Layers:
	-	`sha256:f88a6ba8e7b381a372c381495ed1363cbe199702ded69623534b45f92518ec00`  
		Last Modified: Tue, 25 Aug 2026 01:42:04 GMT  
		Size: 8.0 MB (7967521 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5db3c51cf654ed476daa81391264f2e0b7a845b504d5a2aee0a2850bc6002cf7`  
		Last Modified: Tue, 25 Aug 2026 01:42:03 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9fb762ef1dd3ed41d2ed37755d44f57edd1aac930205fa79710bef599973414f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147880251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc435120270366ffb10121ad5e40be035a6604668db35dd7c704e566ff234281`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:57:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec967797e5dd9489be310b03bea17111b4e6049dc869f8b0a3a81cc540a0e7b`  
		Last Modified: Wed, 05 Aug 2026 00:57:30 GMT  
		Size: 25.7 MB (25687275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1bed36611a08515b1a40e861280de5d11d18c2f44c9f9eafc31d2ced5dcc1`  
		Last Modified: Wed, 05 Aug 2026 05:24:07 GMT  
		Size: 69.9 MB (69851499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5765e83e75d57d8c24661e319d5aaa02766b7536b6bc720f54cc185606f9e9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2572060542987f01f6fb5375f539ec6d2387f7a40570884df6df79f95b1eb59`

```dockerfile
```

-	Layers:
	-	`sha256:0e1ddbacdd770dda220d8810d5c50f0215a2aeb6a5c5fb4fc3af7cb14731b046`  
		Last Modified: Wed, 05 Aug 2026 05:24:05 GMT  
		Size: 8.0 MB (7973997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:405d1027c5d6861f4e88e09396febdc94a38efb056557139501a2715d2b7ae68`  
		Last Modified: Wed, 05 Aug 2026 05:24:05 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
