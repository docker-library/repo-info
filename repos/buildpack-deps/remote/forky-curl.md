## `buildpack-deps:forky-curl`

```console
$ docker pull buildpack-deps@sha256:6b725e4f07358b3ba1050673f640e0e96a551514c21a8a5963ae35df0e47748f
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

### `buildpack-deps:forky-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:508a8369a9b167f66b94e27fa004b1c4f63ab745ecc85fd847e84b895c697251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76775020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fda8a6c287c20ec8728de00cdfb216509695b24ffeffac4f80c4c116ed929e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:43:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a5ee597eb0ffa48d00079725ab73f4aa69f4891fce8614dc46e85abbd9cc84`  
		Last Modified: Tue, 14 Jul 2026 01:43:53 GMT  
		Size: 27.9 MB (27909688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:24552c87266f50817b3c3c11f2f45c0d301cfbcf009d4da92cda0beee4c2ba62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4050923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c11a050585763207452f644ddb6377f0ebd7d4106c07645633d567ca1bec484`

```dockerfile
```

-	Layers:
	-	`sha256:e4504b867c90854ce9cb60451582700f3ce4426182f0fcb525dd1e7cccc29cde`  
		Last Modified: Tue, 14 Jul 2026 01:43:52 GMT  
		Size: 4.0 MB (4044150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:927bb1c66600a2b4260cc353f18a9ed19b7e90c6d803b24addf6df33c0c0edcb`  
		Last Modified: Tue, 14 Jul 2026 01:43:52 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:74ce74d09c3a82f153f033343f93f3e99080aac08bc0744399c033db2a7fbdb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (70956117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e8eaf031a742e34d14d8cbb5e6e3ac4bc1787c630f20283b5da2c2f1fc6a690`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 02:24:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:36ada862ffe71636cce33b70f21dd2f7cfc66ebaeabbfa49191690cfe0284fba`  
		Last Modified: Wed, 24 Jun 2026 00:27:47 GMT  
		Size: 45.7 MB (45653092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf71912b2942b0ebe3b4c7af5551cd81a88d82445a23cdcd992766cd0205984`  
		Last Modified: Wed, 24 Jun 2026 02:24:21 GMT  
		Size: 25.3 MB (25303025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ca34d744c483c7145d39b221006a445cfdda9c12d246c297640259bd2cb764a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4053224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8e490bfb303ccfa934c256b4ecc83ef1a3935a2dbdf4f28f9bb21c8c51036d`

```dockerfile
```

-	Layers:
	-	`sha256:f2c12c11c5316a9a633e04ef765f3baea97dd43a4172ccdcabfc2547ae5ae5fb`  
		Last Modified: Wed, 24 Jun 2026 02:24:21 GMT  
		Size: 4.0 MB (4046387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f209b294281cdcda63b07da558a1648800ab05a9313b490799c085b837a923c9`  
		Last Modified: Wed, 24 Jun 2026 02:24:21 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:40ddfd7920e9330367e594dda7461fc28a27f6f8619947c02ee453bfe374482c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75880135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2186c50b5a5e4a70031a7967ed134c9389d40eb78370c0103737317c2066211c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:45:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f5991d5bb2fa21186c9152bf0a9fa1c9c73892f68235c440c9967628fa5ecac9`  
		Last Modified: Wed, 24 Jun 2026 00:27:35 GMT  
		Size: 48.8 MB (48768712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6ca5e706504383a18ce6cb67cbeb352fc200523287b4db4c777b56d674314f`  
		Last Modified: Wed, 24 Jun 2026 01:45:13 GMT  
		Size: 27.1 MB (27111423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:809512de9e7adf0111ee4b1562446f184646209f953171145bab1ab7561d3e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4057112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceae88ec13481985f682a17dd99c6bc187a82e376c2c1732aa5d60be5d04c457`

```dockerfile
```

-	Layers:
	-	`sha256:cec7957209cef1ede91208460380119181b921aa85714503bae7169d856fa2b0`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 4.1 MB (4050259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebd7583cb6bebdec3d4a2937976d1d3cc404d8e778b69a1f0810f8b08d8dfd41`  
		Last Modified: Wed, 24 Jun 2026 01:45:12 GMT  
		Size: 6.9 KB (6853 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f39107c58ddbc954226963550c901e73aa1d7914f05f58eea63f844d5ab6bf88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79082165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3464716767029115a615886685ef5d0cabfd5b3003d0923d4f85b0f861605e65`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 01:44:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9b65e2e922e5570b1d72c057efc4f398b0b14051ad2a0b581d6669e50195e288`  
		Last Modified: Wed, 24 Jun 2026 00:28:28 GMT  
		Size: 50.1 MB (50051032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03dfcdfe53f6d94291d31eb390003496590b495637ff3e5a6cf06797e1f95ca6`  
		Last Modified: Wed, 24 Jun 2026 01:44:13 GMT  
		Size: 29.0 MB (29031133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:47d6a3031d9efa2e7f8bc9f86a67b1f72ecb35af03869b4d9557a20d2bf79a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4048766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d8d7f50cd8cec6fd6399315849c480972867da01cd2e835a8457f026deb7d5`

```dockerfile
```

-	Layers:
	-	`sha256:f14306b40f2a4d90cc210b62fd7fbe5132d584ee27dbe39e253190537ef835f3`  
		Last Modified: Wed, 24 Jun 2026 01:44:13 GMT  
		Size: 4.0 MB (4042015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b943ae6e43386f67c32bec5d68c8ef0de4b16c240ee14aafc7396b47a817c5dc`  
		Last Modified: Wed, 24 Jun 2026 01:44:12 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:c68b309dd0a8edc58811e0356b8394bc2a1f5db561db87ecb9ad84d108bc3549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84179074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9c06b32f139fc6ce560756d709259c0b7a7cf45deacfa8f4520f31bfb1fc30`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 03:25:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:18c7f7605567d97bd2e11cd865b7616a79a2f59d49d2c2db26f6e2d2ee14157b`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 54.1 MB (54079029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68da5f6b349e8580674c57a2ec241057ace529f7c6ffaefb122e78e655d6fa67`  
		Last Modified: Wed, 24 Jun 2026 03:26:02 GMT  
		Size: 30.1 MB (30100045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:81acc17c16c2b7481eb32e6b1e0f994c2ae7ff2dc4b3cf898bcd1d34fa4da9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4055539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a2afaee677b0231433cba1f9bde1b8d44103017034f667b9bdf8901f03ac368`

```dockerfile
```

-	Layers:
	-	`sha256:a5198268c76ffa7cd4e38c369c2043fc19cfcf6d4d4fbd44ca9a2997db492584`  
		Last Modified: Wed, 24 Jun 2026 03:26:01 GMT  
		Size: 4.0 MB (4048734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f31b608701dac3b7c9e82e9af08373d44fa1e3ca4911c785ae16c6e8ce6d080`  
		Last Modified: Wed, 24 Jun 2026 03:26:01 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:e3ad2aa93c67e3a7c7bdb4bb65e6e66f60a71db2cf01e47bab4b57564a8c2f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.1 MB (74073587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f8c12ba0597d0d09edcd93f77df99e36a229d6b9218aa9ff831a62d45de6ff`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1782172800'
# Sat, 27 Jun 2026 16:13:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:198a866fee61102466333b8b7e43c7a497d2c89dc9749834f261975581cdb8a7`  
		Last Modified: Wed, 24 Jun 2026 03:25:50 GMT  
		Size: 46.8 MB (46847590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcc7afc9b118cb481a7e8e8bce6ecbd596c8a3dc6781e188650e24d10ea540f`  
		Last Modified: Sat, 27 Jun 2026 16:14:42 GMT  
		Size: 27.2 MB (27225997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6f59614bdbe563dec999a4607453a714d0d28b03143d85b8f0c8acdd0c6cb919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4043366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c79b5bb1fbbe696995033e3797aea2673e24f0672eacf9ebd0a5d1ad7c43ad2`

```dockerfile
```

-	Layers:
	-	`sha256:4212c869f7aef5fb95df4ed6b4a65c389b78cf17ba1ec4eb1ef41ed75fc1d458`  
		Last Modified: Sat, 27 Jun 2026 16:14:39 GMT  
		Size: 4.0 MB (4036561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9521c7024dd947cc9cd513196ae3172163439f6b6681812b01b21b736e66b958`  
		Last Modified: Sat, 27 Jun 2026 16:14:38 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:fd50bbd6aec15035cb2188f37b21e9daa24e5ec5c3b392e664d04f0d719237ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75994522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7273eac213a88d1d6e0c6995fda172e6f175067d4d6b57b2789638dcbd7b6b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1782172800'
# Wed, 24 Jun 2026 02:46:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a0b2fd23e0800fbbfc85ca591b838ee879d8a24facc5eea58fda6e804f1b9315`  
		Last Modified: Wed, 24 Jun 2026 00:27:12 GMT  
		Size: 48.5 MB (48491838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43575a3ea94da16bd123e8c57b5643233473a759e5bc49fa7c335021337677df`  
		Last Modified: Wed, 24 Jun 2026 02:46:16 GMT  
		Size: 27.5 MB (27502684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:530f1a2a4e9dc08170af730a85d9c232b528969e36a457063c5bfeabeb8a49e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4053085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3273028a4560c0a4fe6fc6d5eb2422cba0bdc743dd4ba41fcb467384085f40`

```dockerfile
```

-	Layers:
	-	`sha256:9cf672f5a97162cee4bf6ef58e3e0af87f884ea3d65363c662acc5395008f664`  
		Last Modified: Wed, 24 Jun 2026 02:46:15 GMT  
		Size: 4.0 MB (4046312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d75d298016e169167bed2e8d8a0df033c9cfd67a288cbc40cf0c5197d4c667`  
		Last Modified: Wed, 24 Jun 2026 02:46:15 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
