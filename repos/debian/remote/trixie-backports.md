## `debian:trixie-backports`

```console
$ docker pull debian@sha256:b188e0a5df4ee698fbb9ad16159fb9628019e247bbe526a25714a2451142d6e3
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
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `debian:trixie-backports` - linux; amd64

```console
$ docker pull debian@sha256:4dd3bc5ef37e3e9b080914fab8522921879b17450f1ebb84c1b5cba27fb8c906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49312796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c14eb88f4629df11fb5393e08d749988e954b109d22b073540e4e4862a3b57`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:10 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0d15a890f4385454d9788c559582590979a2513880a740681447ddeed9a81b`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f58237b6c09f908148002d60358dcd267d88c59c605eb6b4f7745557309b114a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0102138b6894a29bda18d8508b079b039a4b048e9a3fa5be196301f982038a82`

```dockerfile
```

-	Layers:
	-	`sha256:4cc61ce98828c1ad30dc9d9e92ea9efa098551874fa215035cbfe18dfddf23d2`  
		Last Modified: Tue, 14 Jul 2026 01:16:17 GMT  
		Size: 3.2 MB (3170991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89ff111330a86f4b657d34c0d7902492616809827ec4fcc324bfaa6f66610d0`  
		Last Modified: Tue, 14 Jul 2026 01:16:16 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:f2a0c7c85ec3519d11e1429b25c72b1ce9f12f91e12a9f013bb3de66c2ecd296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47490190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb362cfd28a288f2ca914cf2b11683d1c04e771e40de49f04f944b7ab30e940`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:58 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1ad99c59586600a5647dd3e6e12fc8c9b5e12a7e7f8e1bd39b7df82072afb746`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 47.5 MB (47489966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f0004e9554d35b58d3a79231f14b1c18778f6000d31486a4fb9fc8f16753cc`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9b00765975de90d8a0ed59d70899d96d556846e2e4a5ecaa65572310778f84fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b894e498d3c0b291a45ffd2296b1d7d958869fdf59bf08df7cfb0f9fed5fea`

```dockerfile
```

-	Layers:
	-	`sha256:a11216f5d37f247f25f3979f91c2297f8462c2efca4e5db45fe3feef858f4c83`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 3.2 MB (3173928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c8e01a24d16eea430d1c4ad8fa333790dd1b9fd8b1c3d80c652bd548436d9dc`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 5.8 KB (5839 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:4983b95ab8e3deb4a21d69b5d701d63e9e5a644ca450d718a5df857c6a812d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45748943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f4a9ab2eec34423f1489e94c714666f2086d24fdfbeffd00f6c1a5117e8267`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:15:03 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d257ca9b1275be3762d985b763f743bfe5e61364b8eb974499a07a5328af23`  
		Last Modified: Wed, 24 Jun 2026 01:15:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:400597e5c629c5688b15e94a44d96e8557e00bb49649654ffc99e59cf59dbbea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b9027714d0783f4054d5664bd9165be03502e56722ecb7e5b66e8f8d234509`

```dockerfile
```

-	Layers:
	-	`sha256:fe36989a54f3f56ef90c061d8addf2d2cde7e94774c904741801ed6181a09194`  
		Last Modified: Wed, 24 Jun 2026 01:15:10 GMT  
		Size: 3.2 MB (3172329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53025e7d304864b6744ae93f83785344c76f00f67b2cd0ea592fcdfafc89fd45`  
		Last Modified: Wed, 24 Jun 2026 01:15:09 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:7c04ab06bab97bef8dfb717f809bbaff562d48bca7339475abef21628eaceeb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49674408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c40975187bd830e4392b7ae7138b1d44975906221ebf8311552be9625e24e9b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:15:57 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f0004e9554d35b58d3a79231f14b1c18778f6000d31486a4fb9fc8f16753cc`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d926e500890b14eae1d424d05558f8de9a5b8153767e8f9f1b1e522c140778ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978883550d14e40dc013bebb258195387036d2ca7dc7f0fa67cd12a6415e7cff`

```dockerfile
```

-	Layers:
	-	`sha256:0829ab4556decc8bc5664cb11dd781668124123ee373da733f5cce6b80306f27`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 3.2 MB (3171835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73044eea00213c658b9501c6f443a4c5638067acc059c43dbbc178bae9406d6e`  
		Last Modified: Tue, 14 Jul 2026 01:16:04 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:69a52589007a8f1a0921292ef033e1ba9436f702a97d46b3a04eb3056a9d6d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50831712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e9f6153e2454c87462d0a0b7ed28bd5005bba137515e7e26b3255a8ea9809b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:16:18 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f9e72967b6159d1a82908643c7f71f363d2dec972d7b546172e1833794af64b0`  
		Last Modified: Tue, 14 Jul 2026 00:14:50 GMT  
		Size: 50.8 MB (50831490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca916bd4e86a48b6e3448673cc6df8b9afa9d81c1328d962ce9d5887647bfcf9`  
		Last Modified: Tue, 14 Jul 2026 01:16:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:22bbad5ef3a7959e885a8b27d02179994c80c63564547d80b69b6f6034e2c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10500141fd02ba6ddb125c6058712f2fc7ad9dfcdadefe8c204aa4813ff064a9`

```dockerfile
```

-	Layers:
	-	`sha256:0aa1534cb142c85242960fb5290b14124a844bfcd234ec66f7fa277caf54329d`  
		Last Modified: Tue, 14 Jul 2026 01:16:25 GMT  
		Size: 3.2 MB (3168193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d751e5457b1524800e3b0393ae6faea1ab31f34b113caec3ca907c7090293fa7`  
		Last Modified: Tue, 14 Jul 2026 01:16:25 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:99814b99f1d70897064e59a2d89c3cdb1f8d9fb2c32fd98f9b7435e1836b7e94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53138291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26200b0a6e8f9870dc22cc50277888c8bbebb93d0d97005580a8d31fbd64e987`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:15:04 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ccbba26ad88e4aa609a90fa8fe15720190ce35f7bb40874d73e54478e3873d7`  
		Last Modified: Wed, 24 Jun 2026 01:15:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1c0a0fcf2ae998d6020340adc0c22c9cc6df4a55b1b6545a21903774632c3e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c7c0990c77a52b44638843eff8587a3dc7b4b1cd9e9d142ca545e824f5360a`

```dockerfile
```

-	Layers:
	-	`sha256:3032cb055942c612578a5e9185cefa06ec68c31c34436a63b7a98097fb74bca3`  
		Last Modified: Wed, 24 Jun 2026 01:15:20 GMT  
		Size: 3.2 MB (3174468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc5f3eaf499929aa383c48dc4c22ab2a97717630cf8c76c021d1ecbc27df4a11`  
		Last Modified: Wed, 24 Jun 2026 01:15:20 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:1f48632f11887630aa26863ede5e9a93d6a466c83b817c2af9d69aaae250646b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47798012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993f7989ed144f11115437b3e69c6da8c1ada39fdd3638907c27f1f422d60fbe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:20:52 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3b6761664ee64309406635b6031c9fbc23849478cf77b4c50cc52c5a5a142dc8`  
		Last Modified: Tue, 14 Jul 2026 00:28:46 GMT  
		Size: 47.8 MB (47797790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec586f51293f5ce71d1d7c0365c9e113914d56d5ed6c5b7d00080bb01a9078d0`  
		Last Modified: Tue, 14 Jul 2026 01:21:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cfee98532b92cb9d6bbd6359ac25bafefdca74cf85084a6f37f89c83b82e0a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a1d2b3ab06910cede4cd4c6f5b1385de79732e87996be7e17ce0702aac624f`

```dockerfile
```

-	Layers:
	-	`sha256:ecca1ca329a33c7a528c32e8cf18d7fc76ae06d759a9d70496ff1c2ce442921d`  
		Last Modified: Tue, 14 Jul 2026 01:21:46 GMT  
		Size: 3.2 MB (3163316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01be46e5db088f393d4914b420226753ed8d6f8c292c9b18823b812edf265ba9`  
		Last Modified: Tue, 14 Jul 2026 01:21:45 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:059e1bf0df94dae535663bc93c6eefa6e7338f669b8bdd0b35b8e042f6fd83b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49386283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a2c1289d46fe578fa452608655de6675408500061e9c6b0e30a650710dceae`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:14:27 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d7eb41aa1a0fe87a5efdbe3348d13f5057e00c5d6ef78380aac79eeb7b325`  
		Last Modified: Wed, 24 Jun 2026 01:14:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:29a60be8b6c81ab29b92f883aeb4827882bed1966f1a810995404af63559444e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1007ad85d57dae0e0dd0f8fe394c2971f51f612b534a073014646de20945082d`

```dockerfile
```

-	Layers:
	-	`sha256:5170b852a05e7d41b9393987e1d33d130932ec92e4cf116d3e21944b241de95a`  
		Last Modified: Wed, 24 Jun 2026 01:14:37 GMT  
		Size: 3.2 MB (3172402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:939b26394a55f1d04e5bac50296687375277033c8d8ef4d66c746524cf13776c`  
		Last Modified: Wed, 24 Jun 2026 01:14:37 GMT  
		Size: 5.8 KB (5783 bytes)  
		MIME: application/vnd.in-toto+json
