## `buildpack-deps:sid-curl`

```console
$ docker pull buildpack-deps@sha256:27558c1ec98e0fb9e6dbb494932aeb4d635a65dfab52a39ea1d3e75ea2c592bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:sid-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:aa45e13d3e3974db63cf878d7d15b5b9154c0ca049e99e301ff8fb8d1b325be5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (78049659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42b3c99c8d5d21039d04fc1bb6d3dfc3cb1a7738116cd2cfa78273a08723ca4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:44:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9427e3b2a5c8e9fd944d13bfb003426136599c11a7541d4bcd51808a7823967`  
		Last Modified: Sat, 19 Sep 2026 00:45:06 GMT  
		Size: 28.4 MB (28400198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a0c3d314155d9192e875cc5dc1c67481e7f05d1e797e873f9b00ae27822d2c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4088520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c589ee4f8706d6e465964089654b3cee3cd510f7c5c86a96cf4f7f625393541`

```dockerfile
```

-	Layers:
	-	`sha256:99634b75b26dee09cfbe90df2f3e4cc2ed56a8cf3eca016b38302b578d628a93`  
		Last Modified: Sat, 19 Sep 2026 00:45:06 GMT  
		Size: 4.1 MB (4081759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a083ba5d32c88faa8ef2ac1167d273678ba47af99c9aa49559960e1aed4ecb24`  
		Last Modified: Sat, 19 Sep 2026 00:45:06 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8fa2a2e2a546ab1584716d003e4cc30455d9263c3e53d18fe44b890db46a2ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71502368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072a5229dcdd79b479904f50b74ef8629f5ceb1f90613316058fab0bacb0cc62`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 01:28:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:62aebbfb3371202dadee4b4550328ad7d4941f4c7e0a83244a23e6a9d591f3e3`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5cd6d762c31d82600bb12f69f72d05f6a80fb1604fb9492fa9243d4bfffd0f`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 25.6 MB (25579374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:15de9da601ec528f1b87602f2533a7905f157ad6721720229a0be02acf0c8c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7bdba4a186cb8408e6ba0a2b8a8377b8b3d6d228d95d511ddfecf39f904999`

```dockerfile
```

-	Layers:
	-	`sha256:816cb214c5ec8230c582984e01e317ff221d12df6ec31c79c18ed1304c0f75fc`  
		Last Modified: Sat, 19 Sep 2026 01:28:38 GMT  
		Size: 4.1 MB (4083411 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:440e5672688947c7e1a94b33d9f3271f341c3815c377f536e9aacc3e1f3b387d`  
		Last Modified: Sat, 19 Sep 2026 01:28:37 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:786e859d05cbfe7c5bab3022df8ab37d9c617173b88a2389f510e8069fa3342f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76390318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d45eb3832903c23cd02a5d10549e13f994e0b2959b8663d9d74b9ba9503ad87c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:47:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ee2b7339d8602fb7b4c51198797a6da775611e66c131459028f80afebc5eea`  
		Last Modified: Sat, 19 Sep 2026 00:47:37 GMT  
		Size: 27.3 MB (27345600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:456b2dbb7515064e75942b776f40c26f3e3927704671a51e94786020acf4d4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca92d36a01f3bcba4599409b0e5659283ab5bd54d3e94e46f46965547e55d87`

```dockerfile
```

-	Layers:
	-	`sha256:3159ee075523b3ad38d791a9f238df95d5b3e743b07d319e7ad1e5b6da61ee7b`  
		Last Modified: Sat, 19 Sep 2026 00:47:36 GMT  
		Size: 4.1 MB (4085259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d654cc277413562c761d8ce6f9bc77f60470e72d1c8c42720099175cc3092f`  
		Last Modified: Sat, 19 Sep 2026 00:47:36 GMT  
		Size: 6.8 KB (6840 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b8a499121691e60538334ab665a63694837f7ba499352a276ea8329b076dfe69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80349983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cc17348114352ac8889f1dc1a078b608fd38bbf25e27f968aa3d6428109be4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:49:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c566546097e50ac1cd4cfe9c183ee89572445be5ac187c16a973e354c3ebe092`  
		Last Modified: Sat, 19 Sep 2026 00:49:58 GMT  
		Size: 29.6 MB (29597173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cc70f80bec56c4424dac05561e1e73ddb766cb981eda24f123fc9c6001899363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e462e56594c22d96e217e49a79c05956513db14aa5da0aefa5fd3f23b06c64`

```dockerfile
```

-	Layers:
	-	`sha256:a28ffb8bc697f140beea146d9042ead2f2dea9d998680618ddd53c2041852e23`  
		Last Modified: Sat, 19 Sep 2026 00:49:57 GMT  
		Size: 4.1 MB (4078765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05ae2cd21b73a6830b8ffafdf8655024532d4952af8211946dfbdaca0d39f8a`  
		Last Modified: Sat, 19 Sep 2026 00:49:57 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:86f9a1d69e4003d4b942b99651471609ff66289d73549103a5c0e3214d43f322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84731507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35dcc20b3c94d4df319601fc9aeac9c99d185be89ca371a16f3313ea1b73de2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 03:17:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1bee8b4a482e38c21d63246011ee76bdcda1a12e221d085c28b3dd02bd64c5e2`  
		Last Modified: Sat, 19 Sep 2026 00:04:25 GMT  
		Size: 54.3 MB (54324993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0fe18434c09d5b70155621fd15a8de09c82401907bad0453523969c19aef07`  
		Last Modified: Sat, 19 Sep 2026 03:17:27 GMT  
		Size: 30.4 MB (30406514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4f41cbff42db56f17e43b6e666c9e15d3e410de808e868375e32c37c52408140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef6a94a4c852b0be6694d97fb8c77755ac4216c0123ddedd5f3e7fde5605eb0`

```dockerfile
```

-	Layers:
	-	`sha256:675b073f777d90a281d7db0294c534cad3f265c197875d9a11b3df3aa25d4b94`  
		Last Modified: Sat, 19 Sep 2026 03:17:27 GMT  
		Size: 4.1 MB (4085866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9d6a2a6ca7824cb88d43d287213124cadf0a8f15300d26b5027524f65bc8387`  
		Last Modified: Sat, 19 Sep 2026 03:17:26 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:9c9eb2751e8664f572ae8ce58e6f76c23c0f6001c16848231819c34c2284601e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74613835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75eb487fc4112ded1a214c8cc7a7bac54310998515ba04e89b6dd8c21366d21`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1789689600'
# Thu, 24 Sep 2026 23:38:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:30538fc542fce7748e1323fdf450904ebd72fcb5f34f619b66a3656ae4ce3879`  
		Last Modified: Sat, 19 Sep 2026 03:56:13 GMT  
		Size: 47.1 MB (47130502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1272711aeb3fc61c61c8b0b4e85760de8f59819af3b5ec3eec6b383bd9c9732e`  
		Last Modified: Thu, 24 Sep 2026 23:40:42 GMT  
		Size: 27.5 MB (27483333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4854e4859cf4791a7998cef3d1e1666a6d767c1f209dd4e47c6292fae11649e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4080286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebcbb6b156f29708dcc22edff78abc3ba20929223b0110813c41a287841939d`

```dockerfile
```

-	Layers:
	-	`sha256:99eae90943d2892f0929782d1be95b5c2f33325989dc219db03fa44e050ecef1`  
		Last Modified: Thu, 24 Sep 2026 23:40:38 GMT  
		Size: 4.1 MB (4073493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:072ccc3ed99c9b3be85ea0b19dcfbbbcaeee9a91d992fcccde2306eaa7217cf6`  
		Last Modified: Thu, 24 Sep 2026 23:40:36 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c13760ba867dfdb4695e91280a9a87a9d8dc741d556533eacb7eb7d80577248f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76533253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad394c81c1faa1e87c520e66a6d2b84285c4f3857ed58949fa0c52dbd6d1fa5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:58:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:80deac694b4a50e1f04d0dc0d56fbc2ab7ad1c454b1bc48f20e9c8af1d7189ef`  
		Last Modified: Sat, 19 Sep 2026 00:02:11 GMT  
		Size: 48.8 MB (48825379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60312509c1953e37488c829800461120a152ef2c2984035ee2e4faca6eac3ec`  
		Last Modified: Sat, 19 Sep 2026 00:58:28 GMT  
		Size: 27.7 MB (27707874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c90dcf6fb9348f143fadae81a6f09bff78663f26a2c1d0698198ac23771c6ea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4089877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c4a8887fc2ee87b770540278dd22e4e4fe3fffbd80fbd91bfda9296a8cf333`

```dockerfile
```

-	Layers:
	-	`sha256:7f558bbe59396ece287d3e4da50c0faf0ebe51faa62d2a7cb2a447e43cee6fa0`  
		Last Modified: Sat, 19 Sep 2026 00:58:27 GMT  
		Size: 4.1 MB (4083116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60ea41fde292eb1ac96225f790bea4f7d2dcca5e1d80d6d78b84a22cb9861e34`  
		Last Modified: Sat, 19 Sep 2026 00:58:27 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
