## `buildpack-deps:bookworm-scm`

```console
$ docker pull buildpack-deps@sha256:877e9e4d949edfbcbedabc3a2d7ab593955fee5d6d0777adf3a991eb30c750d8
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:bookworm-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:03ebd10d64962a5a1214ddc5b6b6b29a589629b23254d2e02fb78e9db535dbc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136949958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8572bdb198152c8f8a3df05ff8dc9d0d4d53575e84fa1d067b924f141f1809b2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 02:29:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd2dd4f152bd44fe5b02de3e47483f6cdf32bf3d7ea1c7cc70d57b075f2eebd`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 64.4 MB (64408455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:916475dba8c1143245a4e632d32ee4cbfe5c4d7fc2f2d3d3b3f5754a8ae9eb4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7973434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7600a0c13fa0f160992af54126559266d4f704a0481c0eb259e4faee24c4261`

```dockerfile
```

-	Layers:
	-	`sha256:00f0715600fce41095dd3c6450693cc2505f317f517bf6c3429ac736cdad98ad`  
		Last Modified: Tue, 14 Jul 2026 02:29:55 GMT  
		Size: 8.0 MB (7966124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1958f509ccd504bffd267dcb5184afd8fc418e756edb1771a72c99ce8005848`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:10d7beec85848acce13fb686c7ac559d7a869e379633814c0452d35d22d2186d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.8 MB (130778904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9592a5ef76e8d67dfbdacbff800c841dfa6be64cadad3e95b9498a2e7dfe394`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:24:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 03:57:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f99a0c6c2573399952c2c4cea64053957ffa423850eeb55a72c61f7e0b4f7c8f`  
		Last Modified: Tue, 14 Jul 2026 00:13:39 GMT  
		Size: 46.0 MB (46033816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec7f2bf827ae68b8180a893dd1bd8360ef00bb8731e9fd6f8e3ba50146ca801`  
		Last Modified: Tue, 14 Jul 2026 02:24:49 GMT  
		Size: 22.7 MB (22718439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d96b3670aff78faa8d106bef60a8fdb91bfec8a0a6015d0f0f4cb341ec4f556`  
		Last Modified: Tue, 14 Jul 2026 03:57:42 GMT  
		Size: 62.0 MB (62026649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b6ad80b7beda0bdb66c7b1667e59fd8862bef39c7ff750d44c26c55fcdf44b4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7975356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa48279e14c545c11d840bde17bed758efb17b58c7fdc8b1f99b89b203297f7e`

```dockerfile
```

-	Layers:
	-	`sha256:31054f1db34792ce0b86da536d237b68cb5dd951e70aab68c707ad66a62006b9`  
		Last Modified: Tue, 14 Jul 2026 03:57:41 GMT  
		Size: 8.0 MB (7967982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:297000f1f6352374d6040460fd15086a7cd2d23a4d3d33cef7a3740d6c3cb1a6`  
		Last Modified: Tue, 14 Jul 2026 03:57:40 GMT  
		Size: 7.4 KB (7374 bytes)  
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

### `buildpack-deps:bookworm-scm` - linux; mips64le

```console
$ docker pull buildpack-deps@sha256:1c4b479fbf01dfb904d50ec62417cdb78c0659b3b1668d05b711fbafc64b7ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 MB (135729607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75278649053efad38e63b47b5600dca354098359dbd1ccbfe8d16d6964b6a16d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 15:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 20:35:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2c328c8c141bfe93d6858b21fa00b7c39f26eabfa97b46e975fdb98a417abb35`  
		Last Modified: Tue, 14 Jul 2026 00:13:01 GMT  
		Size: 48.8 MB (48787637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76566152e1d6c0e89b31535cd95a023c05f7a786977745a6d5a4e7142f155ef7`  
		Last Modified: Tue, 14 Jul 2026 15:24:33 GMT  
		Size: 23.6 MB (23624346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e94da2d06bbf493038b6b10b2d438560e41649cc15cd3a34176f7d9c726ae2`  
		Last Modified: Tue, 14 Jul 2026 20:36:21 GMT  
		Size: 63.3 MB (63317624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7c996e28e151049219650fe6dc94865ca4fb483aa6d266d3aa2a17a62bf84653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 KB (7142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38834374ce907eced9c426169803b084e5bc890ec1d47eee4f789ecaba316f0d`

```dockerfile
```

-	Layers:
	-	`sha256:635bf720e7eda7a82b3cea5a6c362a2083083df277520aaca1ba20169198aa80`  
		Last Modified: Tue, 14 Jul 2026 20:36:14 GMT  
		Size: 7.1 KB (7142 bytes)  
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

### `buildpack-deps:bookworm-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9b6105d78433049a6068bb427be6829e53f89388ca89aa71dc4269743d39ac80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134702183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547a05e4279dd5fcd7cff46200f5e3c9d004fbb15cd94d1f0489ad3f60937500`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 03:07:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 04:46:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fa1f9755ea504ea510505c6aa6140e24c157db826373159a938bdb7846c5eb`  
		Last Modified: Tue, 14 Jul 2026 03:07:36 GMT  
		Size: 24.0 MB (24039166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b278779eeefc8e0ab5a2dec92882cc188d61f2766e99be2360e27e73c4c186e6`  
		Last Modified: Tue, 14 Jul 2026 04:47:17 GMT  
		Size: 63.5 MB (63505738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aeb52098c05e3e08793b2ee69b62292373a90a24d50bbf0c3e96259744103f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7969745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c76f13300b89b1516f8e0c2cc36310f6027c8213922a11786971202eb86bc2`

```dockerfile
```

-	Layers:
	-	`sha256:f086ead73a400cd7096f211b1bce80b228d3418c0aaca1e9a2929424f712d632`  
		Last Modified: Tue, 14 Jul 2026 04:47:16 GMT  
		Size: 8.0 MB (7962437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40007a38cbfcf314dd55cde94d08db3855e9098b9a7ae093e4a22bf2450588b7`  
		Last Modified: Tue, 14 Jul 2026 04:47:16 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.in-toto+json
