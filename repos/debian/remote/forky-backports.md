## `debian:forky-backports`

```console
$ docker pull debian@sha256:fdf5e89b3dbbec7e5177deae39e8a074d79408205a213b79e6c0c2f5a9e86b04
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

### `debian:forky-backports` - linux; amd64

```console
$ docker pull debian@sha256:c49e53d4d63a617913f802ce1e5718982c7a65e82fe9e563f691822c7f36ed6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48865556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9bf25c97f8169b89afc3606e0a52927cae01b999f38e5d2c8aa4a17f1e5824`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:46 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:047f915cf84519088f227c947fc73d6993e3370ea1bdbc426fc9228a57ea006f`  
		Last Modified: Tue, 14 Jul 2026 00:14:42 GMT  
		Size: 48.9 MB (48865332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1cbcc9db74ece3e290d6189acf12bd99111d24b2944c400cf93c630dd89ad1`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:2413a34f3a08437fb501a0e9974051dcc9541e29b3e52e6f2737ccfd1fcee5f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3155769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05f084a722585def812d685f1bc231a132e95fbfd5739c4f99a00440f721d825`

```dockerfile
```

-	Layers:
	-	`sha256:df4dd71d55567c86cabcd6ba91c3b0e322897d60d7467fd5988be83fcf61ef08`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 3.1 MB (3149991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5448814bd8cc536aa89cf861d6f9ddb45f7ccd3c8e26346e2686aee7c55b337`  
		Last Modified: Tue, 14 Jul 2026 01:15:52 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:0baa90d77be3856ec5ca4ba5e7188a097af328610e0cadcd354eb098d92598cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45771721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc9a092e7f74929cf4ea6fc852f09d9a2d24b4627a6a6b662e063375916d38c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:31 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fe0cf301c4580afdcce9c4523d53e4a9f0421becb9a7372a07529c5a0d93fd85`  
		Last Modified: Tue, 14 Jul 2026 00:14:29 GMT  
		Size: 45.8 MB (45771497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ba832d501c73362f575ec8ee54169521465ddad79be99de62991c46813638f`  
		Last Modified: Tue, 14 Jul 2026 01:15:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f886482d6039e2285b27020e482eafb3bdb4128cb7676ef3de35a44db9ad8a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5680e5f635f661ca9557168a1d8b71d9f05100d1254d9410d443bdeaf5b6a18b`

```dockerfile
```

-	Layers:
	-	`sha256:007e462ca38636c7d3c7bd555ef5c956e1515ae59f0ddfe485b5dd036ef43326`  
		Last Modified: Tue, 14 Jul 2026 01:15:38 GMT  
		Size: 3.2 MB (3151353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed06b1607ccca890f4f57d3b1e08bbb63c53b46ca87ec772e72cc69ddfe46b18`  
		Last Modified: Tue, 14 Jul 2026 01:15:38 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:0090459bae62f8c483a29db944e77c84b4c216aaa09223b866415da3cdbeb6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48890829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a42dfb373cb63408069d02d7e7665f9e0b2c26374427d2af2f1d87ac465a59b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:26 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:171877af6f22a967baf8e777422690fade518ae6079ba449600acf24ab19cd96`  
		Last Modified: Tue, 14 Jul 2026 00:14:27 GMT  
		Size: 48.9 MB (48890606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be964bf3deb9fd7800992ddbf89ee3a4788b8c7cdbb08d91fc6a317c76644dbb`  
		Last Modified: Tue, 14 Jul 2026 01:15:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:da17558ba6af7d0e42955fe76479eae8ec7f757e0c22a714c38926a0b1e5d1a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3160506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb38e97031ec9f56ed2569b109e8ee58ed8f8120666903ad124e5cd10003e5ae`

```dockerfile
```

-	Layers:
	-	`sha256:3bbfaa77efece01a647a07a843f09e5ac5d67faa0a8d190e58bedbda2659bac2`  
		Last Modified: Tue, 14 Jul 2026 01:15:33 GMT  
		Size: 3.2 MB (3154661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:377897d0852b3d56daa767ec2ffb93f7cc5683fee3409c8700f887ad53a5745d`  
		Last Modified: Tue, 14 Jul 2026 01:15:33 GMT  
		Size: 5.8 KB (5845 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:c304ebe834dd51b332ad558a7db658e912517649dbb9fce9824537a266661540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea3410614cc26959d68c9dfaad80565474a8d3610d427c703ab26c9d4a4277d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:40 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:c88c360cefbaca915e0109149100d8dee7c64c5fa84949f659b53f6261f037b6`  
		Last Modified: Tue, 14 Jul 2026 00:14:35 GMT  
		Size: 50.2 MB (50191150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05d48910c2a142705f612fdc630c4383180f470183e0a82341d25f3f7f31ba2`  
		Last Modified: Tue, 14 Jul 2026 01:15:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:98539d7b48ffe09214d966438d7618e5d1498685d204f8c53fae3d15beb49946
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c496a4a52476a3faeca17da41461c246a8b1a059ed126c2929dca32c789de6`

```dockerfile
```

-	Layers:
	-	`sha256:c5d46492348bd84c8b12bdb1f44f0311416e854351da9d7041059995f65d7d5b`  
		Last Modified: Tue, 14 Jul 2026 01:15:47 GMT  
		Size: 3.1 MB (3147197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5488360dfa4331bd6f5e1cd445a5e1cc9c9ef0d7a7225149708f5c5c4b1d7e99`  
		Last Modified: Tue, 14 Jul 2026 01:15:46 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:7a9506d88153ba0533a7c00840a458da3711c20cbc7dafaf623ba108f462e8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54187620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14667d1b10d3070cb9bd7c3fffe4cf101e28c5b6d337abb8d6e20f8417850673`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:14:03 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:99ce65367c2aa19aba65de12cc4ed189d6b938a0f33ead71ee1e5509c2e689ff`  
		Last Modified: Tue, 14 Jul 2026 00:13:21 GMT  
		Size: 54.2 MB (54187397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3b7785aa864e300b01af0a486574ddffc364b9c786245b40a7db2b9ae17e30`  
		Last Modified: Tue, 14 Jul 2026 01:14:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6d5430c8266ee5a5411c1715fc989d3c2ef1f5ef159e3896c04ba8159f36bcfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3159288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc453f32084f6034d3bb6b1e9bf97a122cefb392040471bebd63ddf93747e7c8`

```dockerfile
```

-	Layers:
	-	`sha256:e353561dabf75279422f87fc740a6198e04acf5afe56c8eb1ef4d0eb4b50cef1`  
		Last Modified: Tue, 14 Jul 2026 01:14:21 GMT  
		Size: 3.2 MB (3153484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dcc0ea82cc02a8cf0d68391db30e78d064dfc2f751f90a31bca703a50e5e687`  
		Last Modified: Tue, 14 Jul 2026 01:14:21 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:53861871a8cd3ca87042a884e68be9679c70da686dc474e248d6a43cb97feb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46974693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c178ad2b84d2b4c50d0eb8b29a058e6592408b50eef62f122c79621b63dd197`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:15:32 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e2834ca6ae81e566a8b7364039c7033fa86964b75b5c08017d3845b776e8057e`  
		Last Modified: Tue, 14 Jul 2026 00:14:52 GMT  
		Size: 47.0 MB (46974469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c4439840894eb630e18fad920f073cf6169b73fd761853a508e3d7615b73c7`  
		Last Modified: Tue, 14 Jul 2026 01:16:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1bf01b48d6ab3336d0273209b42d991ca981649654d425fe37a1071259125e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3147291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec1d6e10d9a8766c2d76be73fd57620df3f68ce7789c77b53357884fffe0424`

```dockerfile
```

-	Layers:
	-	`sha256:82b43b0737a1aca2a4cecc7c14ad7f9c3413d5e9eee865491b8b8980524baf24`  
		Last Modified: Tue, 14 Jul 2026 01:16:28 GMT  
		Size: 3.1 MB (3141487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:669ad0b9bd2364c9096681d2d8205329a3a68c3e9c15ef89b2bb615d0e355555`  
		Last Modified: Tue, 14 Jul 2026 01:16:27 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:2829ae41bddb052a6c122065c57f085444adcd214432351e9566223402fdaae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48600958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7ed5bca18583f5940d50fe180554b4308f2d1d8045dc5d6ae87e85c87065ec`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1783900800'
# Tue, 14 Jul 2026 01:14:22 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:394d96029495a1917f7fc96f31c9815dc81075af3a5dc05ae1774fd68ae13a47`  
		Last Modified: Tue, 14 Jul 2026 00:14:16 GMT  
		Size: 48.6 MB (48600734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625a9651d25261aa2c1ab51888b237600d5e973b99bc6d194da4ebb4299e9af5`  
		Last Modified: Tue, 14 Jul 2026 01:14:35 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4b6319e44b4f211609dbd3ec509d6c0a116d4759009585a934bb2f48e778ba88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3157219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ada8e47d026ec56064801eb5505c54fa5c6ea6f1ed090db4cee99a3edeedef7`

```dockerfile
```

-	Layers:
	-	`sha256:d22fc9101d5e077b5c89c9b6a78c4647647ca7fb43941efc774ccb1b6e48c06c`  
		Last Modified: Tue, 14 Jul 2026 01:14:36 GMT  
		Size: 3.2 MB (3151442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a08777b57fa732ad1cbe8d87425d8b5027844d25754674c60ed2eaae996698ff`  
		Last Modified: Tue, 14 Jul 2026 01:14:35 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json
