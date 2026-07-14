## `debian:trixie-backports`

```console
$ docker pull debian@sha256:e89ca645fb58e6252ee59f5f770750e6a42a4cb3b230acf464d2e7094bfec8e8
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
$ docker pull debian@sha256:3f52db30774f3f4de0aca0b3ef0faa82b2b3cada06a75a659334a0d5e1146956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49317479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e5fa44c4ea51f5291cecf02b4c034f091acf104b4ea8413e99b4dc5528ad28`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:15:41 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce49e4693810d1ad5170dd44e4f155ca156d2366474c0877c1330e163a489d6d`  
		Last Modified: Wed, 24 Jun 2026 01:15:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:9b606ff766995cbc6d014d80c9f8c5c42cb83e9cbe1dba724eac049423e5c57c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d760e0ade85fe8def2388525f344521b3eaed10b084b4db0bf1c43c84203d57c`

```dockerfile
```

-	Layers:
	-	`sha256:e916561df03232cc6925673b0a41526b38c21f35ba4d8a1923e402ee6953df14`  
		Last Modified: Wed, 24 Jun 2026 01:15:48 GMT  
		Size: 3.2 MB (3170955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd7c5db8c58f90f42e80a965f4eb3d66f4b907ba90d0ae20bc17b951192cc4f2`  
		Last Modified: Wed, 24 Jun 2026 01:15:48 GMT  
		Size: 5.8 KB (5783 bytes)  
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
$ docker pull debian@sha256:42f392feb4f3988d618a289d879e7da5dc97e914807176c0bc389f7dc3f29d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49678618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3314eec7fac3c5580b239ff989bf8af208f89413530c69252ffe738c129d3460`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:15:22 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce95b9a586728caca4fff9229f505c66bc15351b7940e22f92da58e61f5bed8`  
		Last Modified: Wed, 24 Jun 2026 01:15:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ddac3d36419db03764757f54694b137a90b166f466fb4d1b3e357b9c338b01e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42a5376b6d29d83091fab28c113df15a1a5f6f011c95ef15e828af5e3bc96bc`

```dockerfile
```

-	Layers:
	-	`sha256:18f86a8dbfd8eabf15d5a2ea6e6760645e4636091e5f517a134336139a6a12bc`  
		Last Modified: Wed, 24 Jun 2026 01:15:29 GMT  
		Size: 3.2 MB (3171799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74928f6717c828acc4f4201db23914723529e3821b0b6099bf8605db3edd6fdd`  
		Last Modified: Wed, 24 Jun 2026 01:15:29 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:b85165591d06952f64065548072bc815d0fecbdca063732405e12d641e82a15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50835878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ea81ddc37f428a45f873d603d1c319c6cdcc95cb0a92c6cf0f55b6398c98a7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:15:24 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af53682b0b3a28f4e1d1fbfc32f157153660212403f55e5bdcbc5ce36a338007`  
		Last Modified: Wed, 24 Jun 2026 01:15:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:06e4a6a834807a452a0d34942d93a8843537bc8f19d0ab7d91db147a9ed61a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9930340f5dd5e2c6d66ec137b4f8a4c51b38df93247755f0e97651f579b91873`

```dockerfile
```

-	Layers:
	-	`sha256:d2b7e0a1f33c90e49f9a0f2f5a993a084e367f5b862b369bce81ff04501ee141`  
		Last Modified: Wed, 24 Jun 2026 01:15:31 GMT  
		Size: 3.2 MB (3168157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8dee2577d43e7caafe3f710475d84f4b4000f90d354721e57dbbdfdca6fc052`  
		Last Modified: Wed, 24 Jun 2026 01:15:31 GMT  
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
$ docker pull debian@sha256:f37bc4b05e77c79cf0d23b6e49ce378daecd75a0f3cfe327ec0ca2d5ddf5fd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47802882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1435fdf32b9f44dd85d794b31d19eaaeb1906d111a1eea2b25c69144a7a335a4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 18:37:57 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c118a9f274086905ae39d6b85df4cc6fc543eae5373eeb3dacb31fb8a2447955`  
		Last Modified: Wed, 24 Jun 2026 18:38:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5c4b122a153581df7ea03439b69b618178566fb2f60313b8294063ceb7dec118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3169090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813912daf3007b8b8fdccbd1d5a7f9194d964ce4795d60324fe501530af64e88`

```dockerfile
```

-	Layers:
	-	`sha256:c0e1e587722353dfabc8f34e5708440213d7a60d27f14edc117c44f1074230e8`  
		Last Modified: Wed, 24 Jun 2026 18:38:51 GMT  
		Size: 3.2 MB (3163280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f226d2a37447423fa1ec7ecbd69bf3124726cff051b18d53d66ff01600a41fbb`  
		Last Modified: Wed, 24 Jun 2026 18:38:51 GMT  
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
