## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:a7199ed08911557f39828b0110e590eedb843277a83b2bec1a1c619b8502e1a8
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

### `buildpack-deps:unstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:da9636f4461000f4ddb4e4c98e8cc6bccbc537120e64774a13f2886b38b84b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76881543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a04becf6757d0b19e763e0522287ea1af277a0d7d26e1387ec9f7672ab040d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:43:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a12f52d658fe46a9e8d7a13788267b554640d09a4570f2025b88af603eef3711`  
		Last Modified: Tue, 14 Jul 2026 00:15:07 GMT  
		Size: 48.9 MB (48864034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b9ffa190462c00dd3e91866b45b51875d2406be32a6a9ba23ddf0342daad6a`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 28.0 MB (28017509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7caabeda1ad79c4bcc128b3ef8600700ad491d9c47a0ca7d4a800d6587288918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4047881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d729ce7ffbc43fc89e05f0a8e39c5d526add4c0c7a8f43a1f8c3f48ee6c487b9`

```dockerfile
```

-	Layers:
	-	`sha256:7937e16b19d890af605b03877fdbc7cd21f402bae778d8ffb77ae67140ad3dae`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 4.0 MB (4041120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26b80d759810733aa3e89b7714d58a468b4459e69e36f866f5bc6c9ac54f0e62`  
		Last Modified: Tue, 14 Jul 2026 01:43:59 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2c4ee93f9516f609f4729e90cbf6c2024ab1afe5c9b5826c9214b0565b8270da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71053022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3659fc200e8693ba1d96af048a7f42e3f4bee6da4f20ba716202528b412cf257`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 02:24:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d675c589a8a116f3580b1211f18fa575a815f4d2314413ec9c2112d3a61d24a6`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 45.7 MB (45678632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0274b6b7737c2b06a1765a2a054ed7c230000ea352ee09b5b9399df372d1dcb2`  
		Last Modified: Wed, 24 Jun 2026 02:24:52 GMT  
		Size: 25.4 MB (25374390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9534eddd569651aa49e6bd9caa37e03ba32a5d6a2a776c8079bac4c76c332e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4052214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce7f10c70d8704e662126c7dd0537c71c56e3742f27d73f0d2627765c0ab0b5`

```dockerfile
```

-	Layers:
	-	`sha256:b2f8bb4a4d3b0675f25f242e4d17758418746fa72a7d0792372ff1374a3d0d42`  
		Last Modified: Wed, 24 Jun 2026 02:24:51 GMT  
		Size: 4.0 MB (4045389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e21762af61975f024f7b00f651e88e7c533615121d149eb0409ba3a0adb44e4e`  
		Last Modified: Wed, 24 Jun 2026 02:24:51 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:5a68a808de60988e3ac5c1ffe3af1615b13e5d4c94ec1db8e0f5058b2d16629e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75991306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eff722d235c209077bec90a3e92d9194e04a44b2ec3815b8ccacb770708ba9a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:45:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4fddf52615bf1690082a9d73cb8346614997b5b51315236c93a190fbd50fb899`  
		Last Modified: Wed, 24 Jun 2026 00:28:05 GMT  
		Size: 48.8 MB (48798835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbfb65123f81cd28e0545a5e6f88cbd0f9d83e9d96851b068d4ef01e4482bd0`  
		Last Modified: Wed, 24 Jun 2026 01:45:17 GMT  
		Size: 27.2 MB (27192471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4caa67162c8bcb8874506aeaba923e9ee1e6d1629b6d1019dda603553ccb1933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a23b3bfe8dc2452e972ff29f56ab9c70dc805e12e51a36d53c80e1b986fec96`

```dockerfile
```

-	Layers:
	-	`sha256:f38ed60eb2062a19b9216e112f3d27e6a0c9f3180d7728a1d98389d76b6e6d01`  
		Last Modified: Wed, 24 Jun 2026 01:45:16 GMT  
		Size: 4.0 MB (4049261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c8907ce80102752b733734436dd525f47a5e75c3e741b206311caa6597f49de`  
		Last Modified: Wed, 24 Jun 2026 01:45:16 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:b1ddb231e9a7a821928ca481dbe0ed826eca3d7e9191deffcc5e1aa974e46c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79198360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8a4de0567f1345169c1307e2f3b2fb3a38ff8ccf5b2ace8f410800b35126db0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 01:44:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:466f7f9acdfac81cb720fa13d53a50111bee95182357f963947200187b3ae3fe`  
		Last Modified: Wed, 24 Jun 2026 00:28:18 GMT  
		Size: 50.1 MB (50080955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4172c1f095cffcf024eb812b3d434c5ab119bc7e7ccee1fb4953b378a0a4d2`  
		Last Modified: Wed, 24 Jun 2026 01:44:15 GMT  
		Size: 29.1 MB (29117405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a76bedeb287d0f95b2c3181fdb442d75fa4aeffe215f6c522eed4c065db5b327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4047758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06c6e2d8d67f0d0d88041695fa80178231fb609ff81546a4e0f44dbdf582b6e`

```dockerfile
```

-	Layers:
	-	`sha256:746e80a2b47ecc809dccfb482e660e869c9d8d493b217a713ea7c3cb27d74402`  
		Last Modified: Wed, 24 Jun 2026 01:44:14 GMT  
		Size: 4.0 MB (4041019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51c0ea8a13e8fd61207b0c81fea8cee701a56c144cbcd96baddac72d24832cfd`  
		Last Modified: Wed, 24 Jun 2026 01:44:14 GMT  
		Size: 6.7 KB (6739 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:bd378f7dcd7edc6e6c9754c00256b9895c86862fc6b6e718909c95cc2a5c70fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84270195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33595bef4e5fdbd335b5ae35bbe076d257a3fc6534041a19282a13341cb0dad5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 03:26:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:207e1fc4a0d78092eada2cd0c9c038e7e28d176a37a4e995ec935b5f148a7e59`  
		Last Modified: Wed, 24 Jun 2026 00:29:01 GMT  
		Size: 54.1 MB (54097978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd980cdf87733c0ab6b7b8ac7237e7ffe3d5a175827f49d762e394ee883380`  
		Last Modified: Wed, 24 Jun 2026 03:26:38 GMT  
		Size: 30.2 MB (30172217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:290f947d44058cafee8e9044ee1eca7703cbe8066d91054957768cda39d45542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4054524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7663a3f59865d836de58a8a59edf92ccf2216c4a17930d8e05eda5878cb73618`

```dockerfile
```

-	Layers:
	-	`sha256:2f7c6ea975be30d01775d3588bcf430f18bd569831bf3c99c4dc2159d49c07f3`  
		Last Modified: Wed, 24 Jun 2026 03:26:37 GMT  
		Size: 4.0 MB (4047732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aff0a642d8b96ea65b1c283dbf3270f7686241661a4fae33543b25922a64fa2`  
		Last Modified: Wed, 24 Jun 2026 03:26:37 GMT  
		Size: 6.8 KB (6792 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:12cb9e997a16536748d26e8559872f06c0911aeff4472782f76a08b8d971a494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74194424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0186aac2a2d9cc62aed53a1f0c74effbaff008921a74459f52e1f99ca56408c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1782172800'
# Sat, 27 Jun 2026 16:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e8bae1b6870c9b437f01d25a862e15ba295e7a79fd96767c6645eb7fdef5abfe`  
		Last Modified: Wed, 24 Jun 2026 03:29:21 GMT  
		Size: 46.9 MB (46898250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e5a3a6b67be6b5f648cdb0fc2f69f94d8fb9df5374644e5045cc659aa9911e`  
		Last Modified: Sat, 27 Jun 2026 16:18:18 GMT  
		Size: 27.3 MB (27296174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a71191d81365c255b76c8b714dafa62f3f7ae895659b05cc790bf0424119dd90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4042356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c31eddb082895ceaf798816aa75eec3f3ffd3714d8ee1e25c6160768f4ba82`

```dockerfile
```

-	Layers:
	-	`sha256:0d155fbe810b2b02612fdf7ba4be7aaeaf8bcd0653b5ede19edfa6a1558e9a67`  
		Last Modified: Sat, 27 Jun 2026 16:18:14 GMT  
		Size: 4.0 MB (4035563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6494ed307f51eb3a875840324149fe1e14168f3d3c4b3b1be7e83ba2c9cec916`  
		Last Modified: Sat, 27 Jun 2026 16:18:13 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:e60c23937a7faad3f804fbdef5f89eff97185f65549baf51c8329ddcce42a98e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76093880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6beb76272329f045ac8ce9b39c958e41d74a4fb5e4ba70dde270fe886ee12b60`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 02:46:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1e9b72b44a72df002ca2c8ad8ccb65d46205892b54ff8d9ce0b5dd7be73544fe`  
		Last Modified: Wed, 24 Jun 2026 00:27:46 GMT  
		Size: 48.5 MB (48517796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d84ec64f6d4462ee570697b4fa616aba8bdae3a994fb4acb8bbc6decb3dc15`  
		Last Modified: Wed, 24 Jun 2026 02:46:41 GMT  
		Size: 27.6 MB (27576084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a79af2b03aac648c82048ce6ee6418b3c82b4309ed59f0492b43ba5a07ac22cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4052075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524c9f41a984e55f7d55c5d6a26c5667d24d6038f2a43192ff92975cddc53b6a`

```dockerfile
```

-	Layers:
	-	`sha256:112f7c042d905d8bfb55f1a98632774ba0d1014a0e73f2715e332b486fa78e13`  
		Last Modified: Wed, 24 Jun 2026 02:46:41 GMT  
		Size: 4.0 MB (4045314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b36953af5a0a9a2dd11c2356f0f85247dbf590aaf1584c0c37a8b73ef7eadf90`  
		Last Modified: Wed, 24 Jun 2026 02:46:41 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
