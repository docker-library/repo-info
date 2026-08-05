## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:de4e518f98c6533eceeee6f8b14a77a918856fa8282a1b711c0292d089157c0c
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
$ docker pull buildpack-deps@sha256:f6a68ca746470d6eda3dcffe2e9852556d82b2476ac337fda49a944151d18952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136949497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a22f9508a3679800b07cd2d6d1bcc7a47660b74faf7a4e3b25a58a2ca17355`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b02178232c403d8a6d5b460ad955daba177c38e178ed7dd417e5c4d748e948d`  
		Last Modified: Wed, 05 Aug 2026 00:44:54 GMT  
		Size: 24.0 MB (24044139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a4625b533197abb25ea2a32be06c59c984d97c3c2dc9952e0b76f2e81ee0d2`  
		Last Modified: Wed, 05 Aug 2026 01:32:46 GMT  
		Size: 64.4 MB (64408267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:800faaba2a9ac416cdfc3446be2c1a20c6ef3d4c9133a1c8e901d37f9367ac6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7973434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9768e646a3a365708da62fa0c2ca1818c621a9f161a2429292450c128245543`

```dockerfile
```

-	Layers:
	-	`sha256:3204f950d19d4f5d56227cee165d767f8f28d4631747b16e5b726aea93b09a52`  
		Last Modified: Wed, 05 Aug 2026 01:32:45 GMT  
		Size: 8.0 MB (7966124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd19e47d3108001f2b7a00b280e6c76e1ea90f9704c0c9ddcb20a9eb7f3a1566`  
		Last Modified: Wed, 05 Aug 2026 01:32:44 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm variant v7

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4290d77f2efb22105839727af2a816a0aaba3ace690a10afd806e654bd78b1d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136494216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9562e2b16131d13e774022120f1460248b8aea761ce83a3d73d9abd7bd4d5c1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:47:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:38:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:225a0a6c500bfb3b4e92e3971bd6e5d097e6b511817e446098aa783c771a70e9`  
		Last Modified: Wed, 05 Aug 2026 00:47:17 GMT  
		Size: 23.6 MB (23612667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a098bd6416b43625806c3a6a005297e2cd5b9b5664e389da30661f6acfb30`  
		Last Modified: Wed, 05 Aug 2026 01:39:15 GMT  
		Size: 64.5 MB (64498169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2b85d6858867e991b1b29d7654cde0ed90d18327ff0fadb7cb1259d14132abdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb39839c58f8e5f39c7844a4ca221a8d5257cd928fdf469bac5e5c918d2ef23`

```dockerfile
```

-	Layers:
	-	`sha256:96fc8f491c41695962c2aabdc27fe84148ab7fa4dbe62a7435a6949d989e3e78`  
		Last Modified: Wed, 05 Aug 2026 01:39:14 GMT  
		Size: 8.0 MB (7972517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b3522c7f8acc398818bd314eb668f503344fc9498b633647777939f0cf1620d`  
		Last Modified: Wed, 05 Aug 2026 01:39:13 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; 386

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

### `buildpack-deps:bookworm-scm` - unknown; unknown

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
