## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:d14b0f0e47b15bb7b41260147cbc5f34869a2fe8deca6eeec6143c43c05356bc
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:cf5273ebb597b9b4584a22ffcd9c87c47e03e2300feca70e6cda151e7f2b5fec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157170630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ec4ade57463292770a775f9746a9c549a2b76c08692f025cd800efeecf4cc6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:45:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:db3edc06f29bac9ea4d3dea7e53b73f2c1981058a945362b25731354ab1b6869`  
		Last Modified: Wed, 05 Aug 2026 01:33:40 GMT  
		Size: 79.7 MB (79742169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7a1b6b4fdc20aa428e1e541bd06715b7799200d0014ce7db5970a7478e75b8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8326731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7690e3d25432740bfd31a222abbc0443a5967152eb0d7e0297b101bfc51c6a5b`

```dockerfile
```

-	Layers:
	-	`sha256:4ff8b25b74bd4dd760208cbd6bf5e67b84bf640899330b36d6d95b28201f946c`  
		Last Modified: Wed, 05 Aug 2026 01:33:38 GMT  
		Size: 8.3 MB (8319477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f7465d3f9fa4c7b425ec609ed9149738d805d94085adaed1b5e2b47582af45`  
		Last Modified: Wed, 05 Aug 2026 01:33:37 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:86fe5fbc589f229f236f1946d704b2d422083939386392e0e0107544bbabf768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145764763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:574f033581db002142c96c04398e2f7d692ab068f679308a8026f5c2846ceaa9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:20:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:54:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:f3138c51fd41ef693a2d784a04bd62cc548225b1f03e42fb2828e4d37dd5f7d1`  
		Last Modified: Wed, 05 Aug 2026 02:54:53 GMT  
		Size: 74.1 MB (74064636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1d786381639d85a1ef97c03876a2272959e27b8ab8e26a2e2aba034a938cc9be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8326064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb32e4d1b90e2990c4f5e64979d85761c52de9b10267e87b5c529b34f936e15e`

```dockerfile
```

-	Layers:
	-	`sha256:ca66c8b463ce26736505c2233ea34b36b09e1c9f861487668ee04c07d2d9e087`  
		Last Modified: Wed, 05 Aug 2026 02:54:52 GMT  
		Size: 8.3 MB (8318746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a54258099fc13fe77b2206410fd63b7508fe6a139b716aa4317fd2b306037da8`  
		Last Modified: Wed, 05 Aug 2026 02:54:51 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:dd7d2ba9feb5370e8cd8c1f3171363b3a242ae70f5e9e67d5bf2108242191c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155584083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89690f0a236ff0a0fc868304d4ca27de3dac5e1fe1262c5eb134f4115ed3992`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:9f5e781a7147d3d64211bceceae7f6bcb4e044a63925d7f3373a45e2e34c0e8f`  
		Last Modified: Wed, 05 Aug 2026 01:40:21 GMT  
		Size: 78.9 MB (78936602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:74578bde3f562c7742cda252cb17786f9faff78c27a87b4c374960c2c82cbf84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8337734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46834e6a44b6b1a6026c59b77441dac6417012f92a82bc384bd5f8eb455a0e1e`

```dockerfile
```

-	Layers:
	-	`sha256:c14e7747a74752d7325f65f72e65a8867589a383cde61138697b44f042cd6db3`  
		Last Modified: Wed, 05 Aug 2026 01:40:19 GMT  
		Size: 8.3 MB (8330400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bae315084de6f293d08d4417b840f8e2475e0258f8641d3f8be142bacf3ed4a`  
		Last Modified: Wed, 05 Aug 2026 01:40:19 GMT  
		Size: 7.3 KB (7334 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1b7d7f8153542f7328b8da6f1148d34d7b665574572cde5fa7c928523df669e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.9 MB (161866204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c18a0c518154b0d5968c58c7042c4ebf4051aa05b1f1a1950fa52f5a828aa55`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 00:47:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:41:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:2e5a71c165757534b94e0fd1afa08fae821f26a1519cda97dc703e36ad506046`  
		Last Modified: Wed, 05 Aug 2026 01:41:29 GMT  
		Size: 82.0 MB (81973231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:125734af3d52fdd65c1f138fc93bbb0ebb1b97248b1336b5649a21106a36b45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8322096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd638a4c10371f6295e065d13adc96393120009d150d9d3c9d07b376707a6688`

```dockerfile
```

-	Layers:
	-	`sha256:164704440ee8ea497e49b2d9f586ded84f37af0e395ae666745d2266f892cc9d`  
		Last Modified: Wed, 05 Aug 2026 01:41:28 GMT  
		Size: 8.3 MB (8314864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4575b12467b9ec4dde75fad6eb24331cbde6de1e18e48e5d407fad08591df7de`  
		Last Modified: Wed, 05 Aug 2026 01:41:27 GMT  
		Size: 7.2 KB (7232 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4873bd549cac02ea4a1098eb4641e0ffde38d667b9836f31a7589ba024932d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171550768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b212401504891608d6a742595a17880ead5e0cdd8866baa6a2f934d737930f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 05:25:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 08:56:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:c40898c0c784f9909f677512656fd9353dde5f7cc4b38478a0da0c43e29b8049`  
		Last Modified: Wed, 05 Aug 2026 08:57:35 GMT  
		Size: 86.6 MB (86620033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:15b46fb29b7d2e7d47aa1e02a4d889a281f25e0b5e000559efb903b1c9ccf740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8333402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2245b347f41d88f6f4b099690506ea18c79d9d0fe2e2214dc58fb6ab5c797a22`

```dockerfile
```

-	Layers:
	-	`sha256:ca59e96d07c6aaec73b4a5f8135b0bfc5a0db4e7341c4d5c7be758d799c6a1b1`  
		Last Modified: Wed, 05 Aug 2026 08:57:33 GMT  
		Size: 8.3 MB (8326116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32c3a602552dc68292759e6ab352de9e1af480124c8ac2f21c5db628d1542b2f`  
		Last Modified: Wed, 05 Aug 2026 08:57:33 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:13233f9ab4f11360a808b5e7a76864e759272f9205882b02efbe3a3be19ece52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152645069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a073095419f3f7b3cf495e608ac8a529828f7a120b517c27635d734136be1874`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1783900800'
# Wed, 15 Jul 2026 17:28:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 16 Jul 2026 22:45:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:55400ca5db8218110976e847f90cd1c284ac0a806e59ed56db817fbe0857bbb4`  
		Last Modified: Thu, 16 Jul 2026 22:49:24 GMT  
		Size: 78.3 MB (78349821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4ad94095acc1037fbf52494039752065c55c619d24ff02900a8a0b33a722bdba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8237091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c054c13aaf3872525929f172d763a9d5d601303d59efb54c43b7ba2c91e932e8`

```dockerfile
```

-	Layers:
	-	`sha256:ed0ea704d4382caec10ab9827036e4abc3cdd8749a817605125137261797aa34`  
		Last Modified: Thu, 16 Jul 2026 22:49:13 GMT  
		Size: 8.2 MB (8229806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9114a70491abd8d60d53d0bb6ab91479a324114f721d97dd9f6e294886f5f8e0`  
		Last Modified: Thu, 16 Jul 2026 22:49:10 GMT  
		Size: 7.3 KB (7285 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0226c5d541e40ba90df03d968af71c056fb0f4a76d15ed64bfa25b4651f7b059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156996722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85173a1ae64b43e89d28d4ed73b4409ce0c94b0e74c7c352b1226117d6d7624e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1785715200'
# Wed, 05 Aug 2026 01:07:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:03:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:a9e1f43e6669d7a25e62acabc6b809e73e906f58478767919ed7104e99cfc70b`  
		Last Modified: Wed, 05 Aug 2026 02:03:49 GMT  
		Size: 80.2 MB (80247170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a1b104934b76b0754a9c8ac946bec272ded01b9d83b294f62870bf46b962a68c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8326770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e922de8edd9b8ed5f01dfb58754e85ceac6c6c9710f9fcdca2fe9e2a9d91984`

```dockerfile
```

-	Layers:
	-	`sha256:038dc63d6b8177c332e9b02f136e700e3c8891ab1db67f3c5031c8df6cf0fca4`  
		Last Modified: Wed, 05 Aug 2026 02:03:48 GMT  
		Size: 8.3 MB (8319517 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff092557cdc54a4ef718d6a274c3278eddef8d71d1388dfb27109d886e53c395`  
		Last Modified: Wed, 05 Aug 2026 02:03:48 GMT  
		Size: 7.3 KB (7253 bytes)  
		MIME: application/vnd.in-toto+json
