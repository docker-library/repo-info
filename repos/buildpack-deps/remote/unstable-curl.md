## `buildpack-deps:unstable-curl`

```console
$ docker pull buildpack-deps@sha256:46c50508cb85915c177451f24f769f3739f91b095301942dd928ea8cef4a6609
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
$ docker pull buildpack-deps@sha256:8969de2233954e1d501d1b24496a9b3ea5c726b0936bfb9e6842d2968d146d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77428461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45124b48e4329879626fd7530d6df01d4d8bc11342d1a7ceb78516f4e7148bf2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:15e2aa5eaf636a71504bd52ce7c8344290aaa10d75e6a3774b131afd96ad5ed6`  
		Last Modified: Tue, 04 Aug 2026 23:52:50 GMT  
		Size: 49.4 MB (49387103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d731411aeb3196fe433f8309b736b892475fca5ef141d75893a10230d0d5d5`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 28.0 MB (28041358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:893048de80ba8a76431a95fed9d9bba0b4088d2e5f458aae31ecea1191c5ea86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4095196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc18d6a7f63421ace0474fa29ddbcaeb589188adba84368c0dbe9f718bf29909`

```dockerfile
```

-	Layers:
	-	`sha256:06ba00ed0d90f1e0f66c1903a8d5577695fa1c4cca373023942c9d6856643701`  
		Last Modified: Wed, 05 Aug 2026 00:45:21 GMT  
		Size: 4.1 MB (4088435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f49fa9c1803cb3e4b2754185a0d47677784954ccff450dbd9487f1d3ea6c8c3`  
		Last Modified: Wed, 05 Aug 2026 00:45:20 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:be4943dc402f8b27bfbee08887573dc35839a63363dacf9467d2fda527bd85ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71700127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fb8a7c919577a0972953a364d3b97d1aab336f08fd7ba40e116d75b99def46`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:20:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:251599f66f2d2349f32940dab7d5837b044ff9b8cac629bd1e0c460bd6f75c2e`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 46.3 MB (46273557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5683fd9b5d0caf4addf66a0ad1daa72fd96a18fd429af0d82149494277f5f8`  
		Last Modified: Wed, 05 Aug 2026 01:20:22 GMT  
		Size: 25.4 MB (25426570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b253cd0c59a25310d57b5482202c1bfbddc5776b509cb0c68c7c46f2adda7f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d501244ae00c542fa9891592905d035eeaa2c542cc6f99a45c2d8edcc8e6c0a7`

```dockerfile
```

-	Layers:
	-	`sha256:e6f3236b799c3b5e30d5d377a6cac6500403c154e599c669473d45f38118683e`  
		Last Modified: Wed, 05 Aug 2026 01:20:22 GMT  
		Size: 4.1 MB (4090087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16a05e05ce7825a49cc067255aaa5351ea2e91b6e74f524f43cc219517bad7e`  
		Last Modified: Wed, 05 Aug 2026 01:20:21 GMT  
		Size: 6.8 KB (6825 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0c7fe8bb31f2c04ee63f3b0fb2995626009a1ccf52f46b024e93029d5e7e64ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76647481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a8db180bfd5c034299c846367d48cfa57050d7176191c99aa2741bd117cf65`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a57a6e9c43887a045814a2d7cd84754b3ba6bf85c26bb62c1127277b311f9c9a`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49400019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b9320a18c695ff87891bbf7ae073fdeb592ad724df4f8bc0da77677aabb25a`  
		Last Modified: Wed, 05 Aug 2026 00:47:32 GMT  
		Size: 27.2 MB (27247462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e15787e3d48591e3fe0bddd51e7c387e5a29a9e60de83c5d8832d49f957517fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4100052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc22d485dd0f8b1e04dcfb3fad6caab2b45201501663158c026928c31b0a27f5`

```dockerfile
```

-	Layers:
	-	`sha256:64847848aeae1531d8ecfcadb02f4f3aef74d90b4ea90bea716683249e006bec`  
		Last Modified: Wed, 05 Aug 2026 00:47:31 GMT  
		Size: 4.1 MB (4093211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21e8e0b339e2e96576b42bd5acfcf33d8ff6fda3f8cdc6bf9f493d14f294e8c2`  
		Last Modified: Wed, 05 Aug 2026 00:47:31 GMT  
		Size: 6.8 KB (6841 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e9bef8d6086714357837ab5b74252bbbc62023beee83950508811b059e33e71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79892973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da542f0e26df1025159823047c92ea744fd07aa57d725a0cddb5ec777abacbf9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:46c18deea7a8f421b1ea61707aa4ea39097cb49d62a1dd51ef6283de6649d1a0`  
		Last Modified: Tue, 04 Aug 2026 23:52:40 GMT  
		Size: 50.7 MB (50702480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a226658853d2da9859299f4e347f1ad8607e8233b4e92150950a20c490a68074`  
		Last Modified: Wed, 05 Aug 2026 00:47:11 GMT  
		Size: 29.2 MB (29190493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7a1543775d922cf3aa5cde5440ff304132b94ab1844e1bb8131bc081f1abf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40873d6a3cebefe1e914587ede190d3a18715b8fb3b7b5e3c86509cdc20617a`

```dockerfile
```

-	Layers:
	-	`sha256:4239f4dba3274fc4adc54e2c814d16508ac3210c7807bfdd1cd0a0b0891a2639`  
		Last Modified: Wed, 05 Aug 2026 00:47:10 GMT  
		Size: 4.1 MB (4085445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebf3a3bf1d013d6961b0995f1a4e8e9d96f9009e1b19b25196525608261b3676`  
		Last Modified: Wed, 05 Aug 2026 00:47:10 GMT  
		Size: 6.7 KB (6738 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0b16ea8ef883d1d34a72fc75f6ad5c5db5473f23f4b2121a892b362f33eda850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84930735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2ff593658372d5c1d755d80df4143d4c7ae717ddd8a38077f46285a5351e20`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:12fa46b5cfd5c50def1ed4867be13066aa1179fd67c6b3ba7af2cb4314775c6d`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 54.7 MB (54700885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1002eea87187cf4278a4278606a4747ecddd440afcaefd5fde08990f58675a03`  
		Last Modified: Wed, 05 Aug 2026 05:25:24 GMT  
		Size: 30.2 MB (30229850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d6cdfb003d6ce2cbd27d3c570c02e70b19c6ac83d3236d82930d3f0e6e2d99e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4099327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e777a057f564fa47df5286e9d2a1f2b425136edf9c593076838a347dedf0dd8b`

```dockerfile
```

-	Layers:
	-	`sha256:fa64849567dba7a94b051ed77ea5464dfde965d7b55fa0de219ac5b62153116c`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 4.1 MB (4092534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bec61230647ef6fca14228bab46bfcb8c24b57cc1a8cc670f714bbc3dee69b2`  
		Last Modified: Wed, 05 Aug 2026 05:25:23 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:17351d842f2fe778108027efd152d9452909691222f6d8a4e1c33f79e7f39df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74295248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e4feccf33c98721bdcbbf35d7e8616f96769e4520304c082be2f9d0aac1b7a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1783900800'
# Wed, 15 Jul 2026 17:28:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:1be6f73fee28b568bfd2983847008ad3e045372345842108c1717134726f14c8`  
		Last Modified: Tue, 14 Jul 2026 00:18:18 GMT  
		Size: 47.0 MB (46976859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f22f7dbb38520320997d4f4595820024a83e2c201d16f2f9a01c9de002b538`  
		Last Modified: Wed, 15 Jul 2026 17:30:32 GMT  
		Size: 27.3 MB (27318389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8988da8da1cf3c198e66d20a171cc6c3a095e1ed9877b49f49a509144ba613af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4040399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:903beab0e044ac0a0c8c3d3513a05c7da84e75c5db87f2940723d90c528828ff`

```dockerfile
```

-	Layers:
	-	`sha256:8394a5a88ce6993b4e51dd28634791e1aa84eb4bc9e57edd3515375e58252aaa`  
		Last Modified: Wed, 15 Jul 2026 17:30:28 GMT  
		Size: 4.0 MB (4033606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68fbc40d513c0de2ef3a895aa75cc497a198f486d7b46fa7dbb7bd7cd8e2f946`  
		Last Modified: Wed, 15 Jul 2026 17:30:27 GMT  
		Size: 6.8 KB (6793 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:unstable-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5799f9d94bc9d85962470e1761c2b6982c19190903802209783e77570590a170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76749552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e9b57f783775cc0d4077be0df6386ce89ee228d380defbdf773eb87d7dcad5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:07:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2aa606147644082ade2b9d04128b526910aec7a5edfb0a59cedb03e63172907d`  
		Last Modified: Tue, 04 Aug 2026 23:50:43 GMT  
		Size: 49.1 MB (49121203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09543b66c08f537a211cbaf01ac504c310d3f20a289ef6b4de027e48cbf8f3b5`  
		Last Modified: Wed, 05 Aug 2026 01:08:08 GMT  
		Size: 27.6 MB (27628349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:unstable-curl` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9744f21fa7b1e0d0092349516cd72bac24562f394f6cd6b0501c0cb8a6d97596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4096553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4df465b696fe3a45b6feade7c2a309979ff0f6fc896c90866c7400e6e4d076`

```dockerfile
```

-	Layers:
	-	`sha256:a8e1d7097edeab50ceec049ff3b0f864e82afb51db300d077a3f9316355c1ae3`  
		Last Modified: Wed, 05 Aug 2026 01:08:07 GMT  
		Size: 4.1 MB (4089792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a1b549c119f454e5efc982257b242c2d4454662ce2dc5e44f24e93c183b642c`  
		Last Modified: Wed, 05 Aug 2026 01:08:07 GMT  
		Size: 6.8 KB (6761 bytes)  
		MIME: application/vnd.in-toto+json
