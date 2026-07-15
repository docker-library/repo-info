## `buildpack-deps:testing-curl`

```console
$ docker pull buildpack-deps@sha256:65375534c8fb2226128686a1b69eb30f303368036770faf08b21baa14081abbd
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

### `buildpack-deps:testing-curl` - linux; amd64

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

### `buildpack-deps:testing-curl` - unknown; unknown

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

### `buildpack-deps:testing-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:26187d2ec2d694ae76cabb6fbdd0ca5d4ee60502f537f20050ca5467cb14d731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71077467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e506a57b8df84127fef1628b0337cb8b309d430a9d7c3730f40e9b86bb41522`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 02:30:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fe0cf301c4580afdcce9c4523d53e4a9f0421becb9a7372a07529c5a0d93fd85`  
		Last Modified: Tue, 14 Jul 2026 00:14:29 GMT  
		Size: 45.8 MB (45771497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f486118fe23db804c6ddc7e2ceba9a8e8b4ce1707d31fb3879d7d9bdae23e9`  
		Last Modified: Tue, 14 Jul 2026 02:30:22 GMT  
		Size: 25.3 MB (25305970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9add38d2100ad248b6b4d0674d12f1c5b473a71258a470e074451238bf1fc637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4052474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7293b33fdbca124910837e898a25f17705584406b7fe98c28fc6602adc57402`

```dockerfile
```

-	Layers:
	-	`sha256:dfbab1f3a83e26c2aa8cd6dd1a047d9a5d7cc36d76adf9d36007234c12534b64`  
		Last Modified: Tue, 14 Jul 2026 02:30:21 GMT  
		Size: 4.0 MB (4045637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac7e323852c03b93c69d431e635d95e990625c77eb05df1634046614d7396a7`  
		Last Modified: Tue, 14 Jul 2026 02:30:21 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:56ca8785a10ea4e8c5eac963388f4ea37b2abe135181f6e5846e6d817f0d357a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (76023255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310f2ef4a0f4fb5c84116a62132f4894e67bca28bf482ad69c2c41191b89618b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:46:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2f4f82e27068d266153b28dc9c7ef6e89b9ce2e86335fcdf4c6349cd26ca08`  
		Last Modified: Tue, 14 Jul 2026 01:47:01 GMT  
		Size: 27.1 MB (27132649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9dbfe71b1e99849ea5bc99e13397a17e1c8b6302ada500a27e1579c2704069f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b85c108aebcce18f3de2594693c7028893c1ac1ca6e585ca6118bb3edfc192`

```dockerfile
```

-	Layers:
	-	`sha256:6dabf7f699c1e1f1d739e3938576f94a60c97a9ddae056625c36c4a99b8fbba2`  
		Last Modified: Tue, 14 Jul 2026 01:47:00 GMT  
		Size: 4.0 MB (4049509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87307a8eff341e32fdba44c32049fbb4b8370d790bd5dda771e98a99cacbe564`  
		Last Modified: Tue, 14 Jul 2026 01:47:00 GMT  
		Size: 6.9 KB (6852 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:fb7216c9aab3650daf2bdc856301240f29af86b9b897c2f877d3c633f20b9f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79242952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f733f4a0f649e1e0b5f5680ecff486e58e7b2b85eee1498923cd35a861d9ecd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:46:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a419d8b16d5c4eb83dd574573e09cbbf331d9ac2b28d868dd2cdb09f6440c1fd`  
		Last Modified: Tue, 14 Jul 2026 01:47:07 GMT  
		Size: 29.1 MB (29051802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7a78f18d8a9a80e907d007e3ac974aeb8332359f37cfaacea278962df1d585f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4048018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b467a6b228ae6b5930838e188a88c1a6b950d607b448bcd8b663a78f5d3508`

```dockerfile
```

-	Layers:
	-	`sha256:1b2d6d8187887c2d3994c8a4b60aae73cb0b15b7c9e28ebfcf507b9d7d8fa96a`  
		Last Modified: Tue, 14 Jul 2026 01:47:07 GMT  
		Size: 4.0 MB (4041267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76d0a23722c3ebd5aa727836bfc5eacde9e3373a49c07f0779fae84c1c90f9f3`  
		Last Modified: Tue, 14 Jul 2026 01:47:07 GMT  
		Size: 6.8 KB (6751 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ba4caa396d5b8472d80175039a88c7c2846c5acf25b9632e7fd5d1e49d07c711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84305998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42a57c51052805820a00cc0cef63054f80518e8ad41abf4ecc19c5d7fdc5b38`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 03:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:99ce65367c2aa19aba65de12cc4ed189d6b938a0f33ead71ee1e5509c2e689ff`  
		Last Modified: Tue, 14 Jul 2026 00:13:21 GMT  
		Size: 54.2 MB (54187397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bf537e71e85c4895a4930b8dc0b90c98cb11d6030046fa25e0cb1bbeb2884`  
		Last Modified: Tue, 14 Jul 2026 03:50:28 GMT  
		Size: 30.1 MB (30118601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:59e8e153add6a5194e8d974f054c00e1c10f301319dbbe17cc3afb76e8ce3df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4054981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a053bd53cb9bb507ed76c18e40407a5e6870aed3c900c08886caed708771bbdc`

```dockerfile
```

-	Layers:
	-	`sha256:10ea7041118fd7c12567308d8cdc5cb3e870a75e9ea048f152951bfbfae482e5`  
		Last Modified: Tue, 14 Jul 2026 03:50:27 GMT  
		Size: 4.0 MB (4048176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5036a07c4adec12076a2492cdbef149e426a7723d7a4238ef892bd0d61af4495`  
		Last Modified: Tue, 14 Jul 2026 03:50:27 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:257df78b25adee0160f4d18022ab7512525cb54c245eefb2ebb2e163463a86dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74205996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1611640937bda6ad44fe126dbfa63cfe05018129faff4745557b3ebfd9389a64`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1783900800'
# Wed, 15 Jul 2026 17:25:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2834ca6ae81e566a8b7364039c7033fa86964b75b5c08017d3845b776e8057e`  
		Last Modified: Tue, 14 Jul 2026 00:14:52 GMT  
		Size: 47.0 MB (46974469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d3fd9173a91e2ee4c5e0ada56b684528f5689a2e333a6a8a4865e29d2cb157`  
		Last Modified: Wed, 15 Jul 2026 17:27:02 GMT  
		Size: 27.2 MB (27231527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2ba3ba08feea142f57ebcf860105d55daed217a877baafdf0515381deaad7733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4042828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec63b64df220dfefc3ca53c693e5fd9652ecfc5630c5677858b24ac98f6243d7`

```dockerfile
```

-	Layers:
	-	`sha256:5a23d38d3964f5159188bbd81284674cd40962a19a3e4f5d29964229995320a8`  
		Last Modified: Wed, 15 Jul 2026 17:26:58 GMT  
		Size: 4.0 MB (4036023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be88e918c2efaf7f6a480e86c49162db277b611fa4fa63800932557bd1c17ba`  
		Last Modified: Wed, 15 Jul 2026 17:26:57 GMT  
		Size: 6.8 KB (6805 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9ef56eac7ddb9c3d123477634fe8bb1a2064845449877ba8496ff21ef5b328f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76115638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60d9446600ab2e6af4d709cf025e80d30b38ab568a5e507b34a8f76d636144f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 03:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:394d96029495a1917f7fc96f31c9815dc81075af3a5dc05ae1774fd68ae13a47`  
		Last Modified: Tue, 14 Jul 2026 00:14:16 GMT  
		Size: 48.6 MB (48600734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccb084fe4893e3ee5aaf287aa6c021a4a77b8cb38b2c673b352ec3272712743`  
		Last Modified: Tue, 14 Jul 2026 03:07:43 GMT  
		Size: 27.5 MB (27514904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cd60e5eb5c4addf6fcc09f6303f669f97e55c55eb16cc34ce43aaf9484425afe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4052531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02982737e7efe8c1a26c1fcd382e3f5a918389b1591c33d81f637075c5bb89d5`

```dockerfile
```

-	Layers:
	-	`sha256:e04c6f57b002c03d3fb3fa71cb62595b9e4085a3cf986e511e57438243798248`  
		Last Modified: Tue, 14 Jul 2026 03:07:42 GMT  
		Size: 4.0 MB (4045758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ead54b15dbad03e98ee61b599ddcb9d0c69dd6119564ce566a505e7a4bc991`  
		Last Modified: Tue, 14 Jul 2026 03:07:42 GMT  
		Size: 6.8 KB (6773 bytes)  
		MIME: application/vnd.in-toto+json
