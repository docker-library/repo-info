## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:ccb9f3efc3b2262f3cb7bebd9881e670f858f0fdb6208cfeb320f3adf4f48ae8
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

### `buildpack-deps:oldstable-scm` - unknown; unknown

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

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f4b382d495a7ec8be503b54ccb855d45c6df402d40477ff12fb2ac01d53dd606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125815088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a5df7b612d00b83dd4d83f19579ca368cf1ad0540473394f8d09a27f06e202`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:53:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f3b34a29a0aa5af6a89a8656609312c9143362ac97ab4160c356553e27763d93`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 44.2 MB (44202872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f413ab31d7d1aa698770db491033136d52bb10d50fb70ca919bde399d2aed7d6`  
		Last Modified: Wed, 05 Aug 2026 01:20:09 GMT  
		Size: 21.9 MB (21949940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417c1710fd8f34b875b5a02ec81646b473df0d6e420f71c9e6f065ab8e79ec66`  
		Last Modified: Wed, 05 Aug 2026 02:53:59 GMT  
		Size: 59.7 MB (59662276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:497a9ed55bd439d464d0b963fc4a38019a7e1032ef7f8484e9ee29e439c198e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086925a6d62453c00479192df928054554431e7a5b76f0390e4979eaef853b9f`

```dockerfile
```

-	Layers:
	-	`sha256:9195a3fffcb2ad18f63231f5bcf75c1bc5c7f44504b1051d07ea85b68129df5c`  
		Last Modified: Wed, 05 Aug 2026 02:53:58 GMT  
		Size: 8.0 MB (7967401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06edbf7d06bd32b0d0867a287c0cab4368b1248a736d2fac7fabf049e9b58c15`  
		Last Modified: Wed, 05 Aug 2026 02:53:57 GMT  
		Size: 7.4 KB (7374 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; arm64 variant v8

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

### `buildpack-deps:oldstable-scm` - unknown; unknown

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

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6a34010c732b198409353b3e3e67984701cd875d9a8a0588897949bd6196e2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140614227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5267cafc0edda4d6ea9f0146ba9633694dc32b398ede811c90e4f8bc42c3c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:46:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:40:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:9e69b691eb95e2bd0553193ab2db36e850c21fc171acd2f9e2fd526557689fc8`  
		Last Modified: Tue, 04 Aug 2026 23:51:30 GMT  
		Size: 49.5 MB (49485121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fb8101655510b20bad67f876c00bb4d21d41b7a275411eb82a0d8cdc9b46e6`  
		Last Modified: Wed, 05 Aug 2026 00:46:49 GMT  
		Size: 24.9 MB (24879871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fed12a6feb1930e559968e2bc0bfe7d26d40716344b44941e3f2e9998b9ffc9`  
		Last Modified: Wed, 05 Aug 2026 01:41:06 GMT  
		Size: 66.2 MB (66249235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldstable-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:636f91f30689a20e8e71294fb4687d498d8eb54ee9713d8c6b3168cbcc497a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7969570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2006ea3e57061abf94483367109934d42c626b7ec6645fa03939055639bfd4d`

```dockerfile
```

-	Layers:
	-	`sha256:072bbc49509efbc63772601b45ea1332f96f1cf0f417f6104d14b29f6f8716d0`  
		Last Modified: Wed, 05 Aug 2026 01:41:04 GMT  
		Size: 8.0 MB (7962282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ded3535862058c71dcbdc117a5cadfd2a00ebe2956cb02bcccc106a3f0aac0b1`  
		Last Modified: Wed, 05 Aug 2026 01:41:04 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldstable-scm` - linux; ppc64le

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

### `buildpack-deps:oldstable-scm` - unknown; unknown

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
