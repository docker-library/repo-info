## `buildpack-deps:oldoldstable-curl`

```console
$ docker pull buildpack-deps@sha256:7c8d79c31eb106cca055357456a2fa89b10fa20f254da6fe3eca937439696c62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `buildpack-deps:oldoldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c66298d2af959a7d7cdc0d5083591c616e4689d5d918f7ea176e791c2072b96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69582559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b3dd6e16a385427e1625f05f307d29f9079ac925b98ca757ac94065cd39941`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5909957719ab662a311099b46df8f146fbe5be5ec749fa12615589aaf221b5b8`  
		Last Modified: Tue, 25 Aug 2026 00:50:43 GMT  
		Size: 15.8 MB (15805167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b2037adcdea4b76952dd9cf0cc6c5562605117455cea05457dd65b85a86f77fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4649489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74001eee789276eacb3dc42c9b452c019fe1272afd78d14f16badbbf4d98c9c6`

```dockerfile
```

-	Layers:
	-	`sha256:d3f1ce87b9f0806735be5dafaa3a63beea722337ca01a20f8b5e9ebd44e44b36`  
		Last Modified: Tue, 25 Aug 2026 00:50:42 GMT  
		Size: 4.6 MB (4642726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c291b7c3ee3602acdad4149f44329cbec0b49201ff87ffaa5701aea86a0f8587`  
		Last Modified: Tue, 25 Aug 2026 00:50:42 GMT  
		Size: 6.8 KB (6763 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fa8ecb2764d9cc12e513ef3fe54b7da96e6351455b1313d497003b81d214d3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63981417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f46c18df7f62ec9a008d0622e785d0d293620d5e53894c12f765088da1979a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:32:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f6631be4d16afcfb3d74014e88338a92e7c1065338576d3e2dc9e061a4f3bbd8`  
		Last Modified: Mon, 24 Aug 2026 23:20:38 GMT  
		Size: 49.1 MB (49067696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cae38623c0f9775252c0e52955b53b4a7fa5906ecb81bf9eccd32f57af5a46`  
		Last Modified: Tue, 25 Aug 2026 01:32:56 GMT  
		Size: 14.9 MB (14913721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2b1bf5166f9ef78a745aaf304ddb6c352ed96979a267e47d7f801f9d471cc691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4651190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5d20946c98a01d408f739bfda7a8a7cd4a419299714f00564b1e8c0eb095e6`

```dockerfile
```

-	Layers:
	-	`sha256:0447f5414add35efe14f27b5d6a8f1bd1b605902094fd089910b43b3ab2f0e6c`  
		Last Modified: Tue, 25 Aug 2026 01:32:56 GMT  
		Size: 4.6 MB (4644362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:728a0e26f5ab85e548165571df6aa401dbe24c2f2a4c9814ac9f3eecc6a3a022`  
		Last Modified: Tue, 25 Aug 2026 01:32:56 GMT  
		Size: 6.8 KB (6828 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:49521cfd06080fffaf05534433895d7a15b8ad4cbf7fb41197093770cd3ed01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68051206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3d3dd346b4df88f439aaee02f1b49ef44c756263ccad70fee4e7d0fb3f5d60`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebf8e47572aa15d512f1dc9c2f5be1d99ab6c1c7747e4670e36bd9518a42b0`  
		Last Modified: Tue, 25 Aug 2026 00:52:51 GMT  
		Size: 15.8 MB (15789863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bc4b310b363547ecb26ce7118177f05229434040a56b89021b9e1ef2ce23d7a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4649184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a576fcc2016d2ed11c150bb8cf8a59ce3156d1658552c74e7a5ef89d5e5a75c`

```dockerfile
```

-	Layers:
	-	`sha256:f9c1f5fe70aa4fb4641286ea9b073396b5cf186d89650bd8ab3875adc59533ec`  
		Last Modified: Tue, 25 Aug 2026 00:52:50 GMT  
		Size: 4.6 MB (4642340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:210d9c93f2f71654b647627e224c89bcf122a8a07c08b0d18564c3519b1bd96c`  
		Last Modified: Tue, 25 Aug 2026 00:52:50 GMT  
		Size: 6.8 KB (6844 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:oldoldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:aa024a074fe869dc6ff1952a06b60886101c4b838775b1ecf39a80d137238872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (71026804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecfa325fec97e403fceab79d0e150f5789556c0317dbf8a12f2292aa30a747d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 00:50:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:f64e33df6f56ecdb94ffda8ff8b3392edefc222230e3c0514b62a3448a7e7e0c`  
		Last Modified: Mon, 24 Aug 2026 23:20:35 GMT  
		Size: 54.7 MB (54716169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcda78a9270c75800a19723999e4b6e90e7f8bb3d12a0b61bb9eb4b9d2c5a0c0`  
		Last Modified: Tue, 25 Aug 2026 00:50:57 GMT  
		Size: 16.3 MB (16310635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:oldoldstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:44f7548679d80fe6a61ccb813a8a94256301d5cb5b2a862de81029a3394f56aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4645970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956777236b44b0e7c2031155f4fb3175a6436159cebc00a16d86968f37cfb2af`

```dockerfile
```

-	Layers:
	-	`sha256:08e02fe84bac4da20b06f687bc6dd81feba17f4df322a1a2e5d822de8311ccb3`  
		Last Modified: Tue, 25 Aug 2026 00:50:56 GMT  
		Size: 4.6 MB (4639229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:499fe6d95ab298ddd5c58e32333acce80c53c4fbd263b6eb0128b9d83fbb71e2`  
		Last Modified: Tue, 25 Aug 2026 00:50:56 GMT  
		Size: 6.7 KB (6741 bytes)  
		MIME: application/vnd.in-toto+json
