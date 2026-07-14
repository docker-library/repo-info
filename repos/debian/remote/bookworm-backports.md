## `debian:bookworm-backports`

```console
$ docker pull debian@sha256:1ca9759ecd23e78ff81907229ec8ba9b6c08902fad4feca6fe4173b12326d0cc
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

### `debian:bookworm-backports` - linux; amd64

```console
$ docker pull debian@sha256:0acb65200fb9cb66b510c7033eda2cb61e1c8d938e76888eecefe2b7bc2a76e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48502436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd666fabe24931d9f4064fca873ae2608c30ea4aef886294844e056d70db483b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:14:38 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e19e5a185af532dde5a41105daabb184fb27a9fde36e8b7589c7efd2582330`  
		Last Modified: Wed, 24 Jun 2026 01:14:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1e953c44f185eb03b883fad64b09585909a430fbf0b505429391781f5ff12de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825305cb1ea7f6efdb77695e8f60d25a7eb52d0c5dac36c0c27fa677c444f57a`

```dockerfile
```

-	Layers:
	-	`sha256:d7bd99f715db8575e8e765ab0d0fd9d843868d50726e1b84d417770d2c33d5c9`  
		Last Modified: Wed, 24 Jun 2026 01:14:46 GMT  
		Size: 3.7 MB (3734110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4084f6beb225cd42de28a070303d02769bbad45abaf3b830327714bc57e9ead`  
		Last Modified: Wed, 24 Jun 2026 01:14:45 GMT  
		Size: 5.8 KB (5803 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:3215ba40fb7865c485fff3fcb0d3a254733a5e7740f96b82971776ec6bc31d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46034041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee5aa6c3879d426efedc4569b9b2e12171df569660d84d11980fd362d271a7cb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:15:13 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f99a0c6c2573399952c2c4cea64053957ffa423850eeb55a72c61f7e0b4f7c8f`  
		Last Modified: Tue, 14 Jul 2026 00:13:39 GMT  
		Size: 46.0 MB (46033816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aea9311a73406d8a12db1826ee6847a4a48f2d81c0415d77bc00a20b112e5fc`  
		Last Modified: Tue, 14 Jul 2026 01:15:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ef8222536ad88f496a8a63ee5eca0e27ef36ba05f2b092f6e24da4bfe91439a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8ac8f6e87d8f70c09b15d142bcf0c74091c140049e607757e02aa3a6bcdc00`

```dockerfile
```

-	Layers:
	-	`sha256:d5713918dbee2a5f3f8d32a7a67c4efc8dd4cd3ea375de4512bdc2ccecc08a09`  
		Last Modified: Tue, 14 Jul 2026 01:15:21 GMT  
		Size: 3.7 MB (3734347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa6c71a5a3f1f0a80c20444b5739b8e19be5f8f1c9746f284aaa990fae6bc763`  
		Last Modified: Tue, 14 Jul 2026 01:15:20 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:519b80e47f3b5427fb81ff23514dee4b5111375f1650c97721199512ed64f749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44208369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914d9529e3353955f23e20fe5ac122a3b817e746686879fea5ac7f3d55ef2daf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:14:24 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a377229a203cb34f8794056f63a543f6981b984319f56e275158dc58561beda5`  
		Last Modified: Wed, 24 Jun 2026 01:14:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b58674a238345ab3d063eea20e757cc9f4f47ba719ecf2c7066ff6a4d44c34ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e939df1e206b0bc2af5fecf0958caaf925e603111ff38236d16f7a5ac5093afd`

```dockerfile
```

-	Layers:
	-	`sha256:94b45e5c0c345baef37914cea9908dfbdfd3cbf4dd6a163af3bf986f0b6e3708`  
		Last Modified: Wed, 24 Jun 2026 01:14:31 GMT  
		Size: 3.7 MB (3736289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ee5b6ea904fc8acef56cb57482f72ca61b2de4fbc8987d466f55a6a7433303c`  
		Last Modified: Wed, 24 Jun 2026 01:14:30 GMT  
		Size: 5.9 KB (5860 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d3b4ce38fe7b9c2e736a6e4b5e4b8357ec0fe38fe7bb9cf0ed4b001f5c4c64e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48389426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa81a9c87ee2f8f4158c5a19447f0d5ab010878d2bf8b6489d04132d0f2406`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:14:28 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62bd9c5ffeb13724c744ee71f422904f69a752d9ceafdb462fbc05da37a43f0`  
		Last Modified: Wed, 24 Jun 2026 01:14:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:68fe387744970f33d0ab194ade5d25162da6a311342a30b68b0eebe7f3146c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2456636eb3b98ae0745c7b5a84aa8a783449c3ca656d66845f5df8a7d8896a65`

```dockerfile
```

-	Layers:
	-	`sha256:0af0cc4375dd473486341c39faecdc44207dbd4bec6b9f2a8a6be2895269bc74`  
		Last Modified: Wed, 24 Jun 2026 01:14:35 GMT  
		Size: 3.7 MB (3734325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcfa4bc8e79801f69d724690777764c2b724b9fe45ae1dc3d66bffba631736b5`  
		Last Modified: Wed, 24 Jun 2026 01:14:35 GMT  
		Size: 5.9 KB (5872 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; 386

```console
$ docker pull debian@sha256:5d12edcc07b9584ebe911b59ced4b0405be2452050d95477e18296d5fe982977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49491603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb9e80ecfe8e1f6a0e469ed0905ea04cb1052b19ba5dfb608679269e4535f62`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:14:26 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6e71d6fdae0067ca7814009e714af79636f0fda964fa691fa61569b29c09c`  
		Last Modified: Wed, 24 Jun 2026 01:14:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:721865f144b873f366bddda340b0285c2cb116cdefa1e3f2f72cee44aa040c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a10a3a20ae0030292514394ffd7a7cc95fec599192fdf9850d9329130bcab69`

```dockerfile
```

-	Layers:
	-	`sha256:41ca9b63a1fc73db232822fd8241c1990d98eef22ae0ba39bdf17ac2335e2d1b`  
		Last Modified: Wed, 24 Jun 2026 01:14:33 GMT  
		Size: 3.7 MB (3731306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61497b1a342c44c5e8863dc36e2e995e140088e513a6a6a78389f2870cae2b68`  
		Last Modified: Wed, 24 Jun 2026 01:14:33 GMT  
		Size: 5.8 KB (5787 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; mips64le

```console
$ docker pull debian@sha256:94b2632f6c45ae7d3f4ad33cb5dcdc5d5298d41048409eebc2cc9afbd4c40e3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48793042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd2b65d43117852a0450ebdd638c3f29f9ce54669921e15eb89643253edcf88`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:14:43 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d06e8744a62761c63cdcacfb2a61022e2f4c0aa854b6cede18fced28342dc1b2`  
		Last Modified: Wed, 24 Jun 2026 00:26:53 GMT  
		Size: 48.8 MB (48792819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce86d6711cfb8c47715a9051926dc92ca2e565536ae48a851f806413902d840`  
		Last Modified: Wed, 24 Jun 2026 01:15:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5c4ba1501b7c10458add9eeea3ad1e69536dca578009916847761f00079b2c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 KB (5628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336f1b074cb734d15ead68b8f84471db6eb4fb79e18ff5f840503c7458869d67`

```dockerfile
```

-	Layers:
	-	`sha256:8e42843955b81f96a9bea22d71bf74ff6ca0db0186e8b6a0aba76f539a2ed3b7`  
		Last Modified: Wed, 24 Jun 2026 01:15:01 GMT  
		Size: 5.6 KB (5628 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:c6313af6ed0a6c387c9fc8f1315cdfe0e43739bc28807385a72dd5d93d708808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52347070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf6ef11645ca82ce10c6d265629e3add02704f830b5a3dce52034aa8a22aa53`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:13:36 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40479814124522186531436de9ae56ee64f96c48c141f9304c560120d9da7e01`  
		Last Modified: Wed, 24 Jun 2026 01:13:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:253941af09d5ba9774d100eba8f495ff87d23d7dbdcd49afeea24c2231bdda49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39356030da2d629288dd26fc8132de53b877fc0aa15338fb758e45bd15ddb671`

```dockerfile
```

-	Layers:
	-	`sha256:e7fdd975f4938cc3d888cb449fcefac7cc56c3a391985ee5f72a338fc48bcaae`  
		Last Modified: Wed, 24 Jun 2026 01:13:57 GMT  
		Size: 3.7 MB (3738468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da0b2bf392296c0e3328182eb1f12b285652549206d0926297261779bbd2c5f9`  
		Last Modified: Wed, 24 Jun 2026 01:13:57 GMT  
		Size: 5.8 KB (5830 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:bookworm-backports` - linux; s390x

```console
$ docker pull debian@sha256:c5ca198c062adbea520d41efe5f0319bd851139418b195a544c3ab300bbed58e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47161898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14a1235706ef2b2e5283cf289b728012e35144e7de9f7788efc364875fae9bf3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:13:56 GMT
RUN echo 'deb http://deb.debian.org/debian bookworm-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de485312453cda759dd6e86786aae42c606a06b41c7d477f1fb8991e8c9c6fd9`  
		Last Modified: Wed, 24 Jun 2026 01:14:07 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:bookworm-backports` - unknown; unknown

```console
$ docker pull debian@sha256:23ef3bde979dd726711ad86fab4a0178fe65535335934a0bae5efdd600d94eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3736752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd50d01fb909df785b6b4c3f2a8cdbfc901a0721319aba0eceebc265d2cb47cd`

```dockerfile
```

-	Layers:
	-	`sha256:3225757a0ecc229ee6c736ca68806532fcc263c69507482d8584bd2ee93dc55e`  
		Last Modified: Wed, 24 Jun 2026 01:14:08 GMT  
		Size: 3.7 MB (3730948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6ac67469643ca4f439b8d3e08aee9259181dbe8ef98aaadd5e3faf8025cce8c`  
		Last Modified: Wed, 24 Jun 2026 01:14:07 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json
