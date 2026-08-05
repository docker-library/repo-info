## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:a4e624d530bc2c43fbac42d1821c5ed7a0ca5fa985506dc488dbdcfa6754d725
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
$ docker pull buildpack-deps@sha256:f021c64e8246c48ad263f22f1cf0ed24a359de8af83406cdc900df9178cd994d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125815432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1dc466537a06ba21c3842c2127b1d126bdf1e637afc8c2b4be53945367908a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:15:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0890883874051ebbc97c0f302949cefff32c87f2ad60cc2477409b9c7da643b4`  
		Last Modified: Tue, 14 Jul 2026 04:15:26 GMT  
		Size: 59.7 MB (59662246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:94a647c89731058d2345b3c8aa0b6e105723ca2c602b161a64b57368a58b72c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7974774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a30f0ca32a8308675237a952fbd7e3794a63d958f2fe9f35c47fa889e304822`

```dockerfile
```

-	Layers:
	-	`sha256:a77e89067115db9acd4437c87c8a3f4ca31fb5a091ed2bb4970d55f72d37bb6a`  
		Last Modified: Tue, 14 Jul 2026 04:15:24 GMT  
		Size: 8.0 MB (7967401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11d7457e21ac844b8b1e80573d636cd8b9b8685e8735a1b1a8ed3c6afc8e11fc`  
		Last Modified: Tue, 14 Jul 2026 04:15:24 GMT  
		Size: 7.4 KB (7373 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:adc99e0a8a54d56743fdc04ed201ce0e4f0b79f1126f9ff71f95edb82034b4af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136494539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc34366a95cb09bf877b83d5ae1a70cb881da50f3d726ea0f9a1a0bf602bc2d1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:36:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af2d47cd8540f7af1f8ba488289fa82e9a2258d051477163651baf22fc99ea6`  
		Last Modified: Tue, 14 Jul 2026 02:37:00 GMT  
		Size: 64.5 MB (64498147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a069548dd1eb2cd2bedfaf2586ae2f900ff3f8f471e6a7b25fd8c6c61ad962ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7979907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4943393183c92216fad8d022ad854a180c3b217d9886807a497fafd5f109e506`

```dockerfile
```

-	Layers:
	-	`sha256:2c3e2b9f75dac7e002af7010ba1635c4eda3e4d73645d4bce8322c3e8ea35afa`  
		Last Modified: Tue, 14 Jul 2026 02:36:58 GMT  
		Size: 8.0 MB (7972517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e9e398115579dc3a695b6bc94cd85fdd9a322453bcdbb2dbf484f5b4c3c63b4`  
		Last Modified: Tue, 14 Jul 2026 02:36:57 GMT  
		Size: 7.4 KB (7390 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:041ac8bb83a315a1ec8c5ed2ecbeda5010f7d68f563c1a4996ac7b6b0b3ec6be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.6 MB (140614456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73892f22284b84c68d0b04cebe1cffa9c2ec5a2919e88b797937b6896635d3f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:38:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:7ed62c27c4f21adf732321eceae8ffb1eec07091e8f0d4e0c808bda76320013f`  
		Last Modified: Tue, 14 Jul 2026 00:13:55 GMT  
		Size: 49.5 MB (49485439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57925bd1ff28d8c7df42e8e4386b1a8e5104548196adaa28c62e0c7b26b5f2b9`  
		Last Modified: Tue, 14 Jul 2026 01:46:55 GMT  
		Size: 24.9 MB (24879833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a17209efcdd987645a47d85b886216acc5254a2a0c1aef2364b9a70bdfd8b2`  
		Last Modified: Tue, 14 Jul 2026 02:38:33 GMT  
		Size: 66.2 MB (66249184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:455943aae51647dccdb5bae99040cea8a94f8c65969a25feb6dce25dc03ab643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7969570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbc4d9930fd91e4df61d64272e4eb017bd770452e3f86e1cab65df3728e42fc`

```dockerfile
```

-	Layers:
	-	`sha256:91ccdebdf3ef829e02a0588f2676a7a9f9623cc985db47a2370e58d62c8a4b3a`  
		Last Modified: Tue, 14 Jul 2026 02:38:32 GMT  
		Size: 8.0 MB (7962282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20473cf640d68b56001037a4dc13e1f56dc6f77db7112ecd8b6760f64a50149e`  
		Last Modified: Tue, 14 Jul 2026 02:38:32 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0dd8cb57ef336f8bb9b8c88eef64ad66aee1a54d8b472e5ed400739f5c13c1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147880321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7377148142f915afbbd3cab300bc8cfd01cd21efcb8d52c82363ea152f7bd5ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 12:13:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5206cda10cbd9dac32ecbd02a80861ff43df730ef77172b28d0e3c72a02c96ae`  
		Last Modified: Tue, 14 Jul 2026 03:49:23 GMT  
		Size: 25.7 MB (25687296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dc397ad605293503e3db0dcc973f7b867a960c6167203f96e7b22c80e4c3cc`  
		Last Modified: Tue, 14 Jul 2026 12:13:50 GMT  
		Size: 69.9 MB (69851191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:02351158b7e43bc4329d9ad4e39a6b3e4e7308d78ee892e01840a64a2265d90b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7981339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0108ac684461d502b7768543389bba0ba61836a7300f8e341defddda6439d998`

```dockerfile
```

-	Layers:
	-	`sha256:3ea7e0fc7bfb72a1b0ca175fd5aa9a54dddd264c67f228de6a5d1886a6b31798`  
		Last Modified: Tue, 14 Jul 2026 12:13:49 GMT  
		Size: 8.0 MB (7973997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95af8662f97161732e06892b9f342c44d77cb89ab07393782e03511d389eb4fb`  
		Last Modified: Tue, 14 Jul 2026 12:13:48 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json
