## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:901b848f7e889b100e982a873e9d8303e83bc974f819baf18f7dacaa99b3f46e
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
$ docker pull buildpack-deps@sha256:d69a2f606887171d69f0bce71f81b7402f957497a969b345def67146d92177d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156566539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0564ce3e3327e2fede406a9451c21f54058979b9151ca08b871f533ad469210f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1783900800'
# Tue, 14 Jul 2026 01:43:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:29:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:4efa106fbab9160a214b581611ae3853802baac294d16c6520ed635c30d3fc90`  
		Last Modified: Tue, 14 Jul 2026 02:30:17 GMT  
		Size: 79.7 MB (79684996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:04a85c4fc64bdbbfb720fe84d6fe485626ee9e2c01b6adda20335e89fa6c9bcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8246412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcba586489ae280f087909cd65275e11fc2a58d9679ec7c1a2785e669ab1e0e`

```dockerfile
```

-	Layers:
	-	`sha256:a1326f7ceca86588b9d0f4db9c40e005395949e87b14f6161f9684f4d76ee9d3`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 8.2 MB (8239159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:831c1ca06add0e25af658efaa69aefffc85aee1337b41ab40a8bc26bcd75ffd3`  
		Last Modified: Tue, 14 Jul 2026 02:30:15 GMT  
		Size: 7.3 KB (7253 bytes)  
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
$ docker pull buildpack-deps@sha256:0af86a69d0f8c1e62344ae9c24e229a8f1603085c8b5d6446ca66a8d3bbd92ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (169029925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464803228c18740a1e263192c90e443cf97d6327a914642a4ee683c70f2ac965`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1782172800'
# Wed, 24 Jun 2026 03:26:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:10:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:318bd778ee6617ca24d7be45e5c23eee9ba0bd8ef611556ae854c0b431747a89`  
		Last Modified: Wed, 24 Jun 2026 09:11:39 GMT  
		Size: 84.8 MB (84759730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c9a2e0905625568f7d9d49cc423674d6198299e95ee1e82d2d2ef7981c5179ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8301322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef417c111fb270ea37204daf1ec5d0e2ba0af0dac8f1b44068916f599704469`

```dockerfile
```

-	Layers:
	-	`sha256:f9d4bca92dc76b87fe6453a9fc2c9845d0b96450bc2b60f66738459269cac166`  
		Last Modified: Wed, 24 Jun 2026 09:11:37 GMT  
		Size: 8.3 MB (8294037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb3b989629b63ee38367d0e9b4afd20005a839fb7bf8a4880381ea2efb6f308c`  
		Last Modified: Wed, 24 Jun 2026 09:11:37 GMT  
		Size: 7.3 KB (7285 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:71e6c2a8752beca97a400b4892a7c34642a5706736d16ea608eec0efd153a84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152338800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181183cbc143f73fbde4e8f0c8a232823e9ce336935c5e66079aef68c435d129`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1782172800'
# Sat, 27 Jun 2026 16:16:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:44:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
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
	-	`sha256:0dc4e8d8f6ac0dd209d4e4784f09a7509814776537d3815c90e55eb948ccaf68`  
		Last Modified: Mon, 29 Jun 2026 10:48:21 GMT  
		Size: 78.1 MB (78144376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3d0dce3e3696976f606bd5a662c3d7f125cb1f1f517227e76292494232f1b429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8373792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3ee8509e4e4bbd13d45161c551b8183b909adb1984621b84d38bb359a48ef9`

```dockerfile
```

-	Layers:
	-	`sha256:c1bfd76be0a03db2b7bb4a22f8d674b11ea0ac95e5fed694c70d9c3a1b352648`  
		Last Modified: Mon, 29 Jun 2026 10:48:10 GMT  
		Size: 8.4 MB (8366506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d700f89577afe06b17f6f5c17972cc0253b069c663984b0dcd4d21cf8257b962`  
		Last Modified: Mon, 29 Jun 2026 10:48:08 GMT  
		Size: 7.3 KB (7286 bytes)  
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
