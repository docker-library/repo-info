## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:072a0c39baa205ccc9ab0949ff68cc405f1a062eda6f426e900554e3565a2a7b
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
$ docker pull buildpack-deps@sha256:6fb1119621429f26895e473596a376648d6fad7808cbeb86d3485b81bee04668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145169431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3c806d6813cdd19fd0164efc230ea8a410ee5ac4f03c92aea388391654cb22`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 02:30:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:15:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:56f6eb49166be48a96505a3cb30479ed7bba799856a72fc0ac4fdaa74dd921ef`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 45.8 MB (45761330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1b68246de367282f99cbf7edfc3bf59cf036d727865cf3e45de1303e33bde6`  
		Last Modified: Tue, 14 Jul 2026 02:31:02 GMT  
		Size: 25.4 MB (25396520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb827bf065e1b7bf6085c2881b972271f4691409c7e3a819e41845839d77401`  
		Last Modified: Tue, 14 Jul 2026 04:15:40 GMT  
		Size: 74.0 MB (74011581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c1bc7477b20c2402aec55c3da18b416adfac7ccba1358f12c2451c5c4ab31300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8246391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e155b1c9f7fad52c9d90aa2deedd9914bfc5da1e066c0e80a4687aebf03b5fa5`

```dockerfile
```

-	Layers:
	-	`sha256:383b05ee2b43218b8a8497e6a18c3d2220843400c0438ac5e7a95b514a849c2f`  
		Last Modified: Tue, 14 Jul 2026 04:15:39 GMT  
		Size: 8.2 MB (8239073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b338b74bb6ebbe268404a607dbf69d41366ff7fffc7431e00fd2866b9e7173ac`  
		Last Modified: Tue, 14 Jul 2026 04:15:38 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:3fb972be4e54733aaf78a3db5da35b9a7c80449d9c1473102c10a5d6bd5ce22d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.1 MB (155059815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05f8d6157f89445799920d835cd8e5d0571b4871a8bd86f3f00e7cf29754df5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:46:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:36:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4480ca4037883605321976814af29e4ba8cd9d2dca0746762a317c319bc395ed`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48880319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:443df5d9b4c983aa55f566335af19417100c2925ec7efd6c50e74c4e05e6df67`  
		Last Modified: Tue, 14 Jul 2026 01:47:08 GMT  
		Size: 27.2 MB (27225176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7968db662fcbc614126ec3fc0dc61486aa0c797c93f39535394b7875dc4e8b2`  
		Last Modified: Tue, 14 Jul 2026 02:37:20 GMT  
		Size: 79.0 MB (78954320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c730d05c11bc1cf1865b40145f1f301534f5a841d58c5a8305c5ace48ed00ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8257998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364f154fd74a9898505c649935e139c6fcbbce27e1a6e7f29935d4638b22fb79`

```dockerfile
```

-	Layers:
	-	`sha256:d1857b5118d96d46283a75493fe242d0119ebf17b8a9d9c5fa64ee53d73de45b`  
		Last Modified: Tue, 14 Jul 2026 02:37:18 GMT  
		Size: 8.3 MB (8250664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb3dbd73c62814c075034c987425c9bc2a3e947c70ce5181147b767dd3207105`  
		Last Modified: Tue, 14 Jul 2026 02:37:17 GMT  
		Size: 7.3 KB (7334 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e690ce0463918a04d3f20b176599d6b821f3d954421920999acb46021600b94f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161281368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5963586c94237733e1b650192f25d8d6c0cbb66f74047187e13ae996062b5315`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:38:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:80f34b6bdaadd9ae002625a28e22722e313c4ac7d32fe7fa3a8ef3a66ae7b362`  
		Last Modified: Tue, 14 Jul 2026 00:15:03 GMT  
		Size: 50.2 MB (50191201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae53ddb1e095516038a38011bf3e6dda8259acc739ed46a5bfeb81089e5078cc`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 29.2 MB (29152557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3a27a48d6fd7cbb4b77ba29662aed3a634a105bbf7f5373f302ac93f08990e`  
		Last Modified: Tue, 14 Jul 2026 02:38:46 GMT  
		Size: 81.9 MB (81937610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:073042c2fcb24fee54d5801a35bc2dae0d1212a252591719e4969f8c2dd6abef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8241893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53afdcedfb9ab6b58f1f84833dd2c111b5b8735c3f6c041463c4912315d115a7`

```dockerfile
```

-	Layers:
	-	`sha256:596cf7d93e30b871591ceda461bed0362b1376196be21392bb1947e95920abef`  
		Last Modified: Tue, 14 Jul 2026 02:38:44 GMT  
		Size: 8.2 MB (8234661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:064985552b590c05242283b8bf8bdfbd778301ee6983221c4b82c40f0c7850f0`  
		Last Modified: Tue, 14 Jul 2026 02:38:44 GMT  
		Size: 7.2 KB (7232 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:934bf5c29f3794b2fbb37da594583010dcad91199482bddea2b6276c4a332801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170898220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a8f044e6aac372ff2854a5906364bb640dbf9f76e1c2f37b150ae20ab7479c5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 03:50:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 12:14:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fab381d38d54382fff171f66c20a79e5a3635a25848a60c6cf6a6fbc4e75fd6e`  
		Last Modified: Tue, 14 Jul 2026 00:14:18 GMT  
		Size: 54.2 MB (54187305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abde0b9abfcfe7b355ae0c9b8bcfdae707404d70e4e816f5ab91eade15abe11`  
		Last Modified: Tue, 14 Jul 2026 03:50:45 GMT  
		Size: 30.2 MB (30196266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea62099ed86ffd38d1b0401321627dedf475a9ec88aa63b93d060a01ea929beb`  
		Last Modified: Tue, 14 Jul 2026 12:15:17 GMT  
		Size: 86.5 MB (86514649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7c8cd78125252fc613b241524596704630c6becd3f6886da3b94eefe9b4e6288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8253615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f4a9109cc36b0bf1054ef41ba15f2387f8451b96fbc50a5c3eb0db41d302f9`

```dockerfile
```

-	Layers:
	-	`sha256:9621e2928c2e4936bcddd52e0b07bb83cde19b2e1b806367af572139a2ce7662`  
		Last Modified: Tue, 14 Jul 2026 12:15:15 GMT  
		Size: 8.2 MB (8246331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867ae840e62af9e6df4c0126a10123f901d13c5a6dbbdf83161c227be8359697`  
		Last Modified: Tue, 14 Jul 2026 12:15:14 GMT  
		Size: 7.3 KB (7284 bytes)  
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
$ docker pull buildpack-deps@sha256:6ba076b3dfab5b751b89716117f4ad2df3d92f1c6ab59e3ee2c13c8e8666bd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.4 MB (156413843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ca6152033cbdea5bd9f6d51eb30e6f4eadda63cbdbd9d431cfe64aa6b5e0e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 03:07:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 04:47:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:5edc945190a0c39bdf657a310c42986617c2cda52e9000bb8f8e914615ba5c56`  
		Last Modified: Tue, 14 Jul 2026 00:15:29 GMT  
		Size: 48.6 MB (48599867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fd495b241210e4b0a788cb4a753adadaa6ed306585eaff5d757a1be878c975`  
		Last Modified: Tue, 14 Jul 2026 03:07:50 GMT  
		Size: 27.6 MB (27607303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cb8fedc432d0c476892099e2847164c7ef8e1eb0510ca46b3f241046ad454b`  
		Last Modified: Tue, 14 Jul 2026 04:47:35 GMT  
		Size: 80.2 MB (80206673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:306c322da80f6d143c41e530a606255113935cccafedb65d4911f1f5d8d38876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8246509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b9da9e4f0babe828340082d2ca954cdf11110b82f129b629f409ff640b2969`

```dockerfile
```

-	Layers:
	-	`sha256:3e319410554dbb7a9804c4f43114856d89c4b31ce561d2fdcf96e5b7c0d9a463`  
		Last Modified: Tue, 14 Jul 2026 04:47:34 GMT  
		Size: 8.2 MB (8239255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79913c4419c973e332e7dc416807349389a269f5990fbdf99f99e03b999ef24`  
		Last Modified: Tue, 14 Jul 2026 04:47:34 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json
