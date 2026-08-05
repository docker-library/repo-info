## `debian:forky-backports`

```console
$ docker pull debian@sha256:95cbd4be1025da72db850f70cfd7fa19e67f2336991823a85b9a2bf95ab01fca
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
$ docker pull debian@sha256:739e83eacfd76cf902ca460a54898d0cc67695d62600e565b3ef83fd1fedd708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49331925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f04ebabd057737a144ab440384db84384f1bfd41d2f299669e853a58e0954e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:14:53 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a9d7b479042d051e643bab1c85ff0f6599260e4745f41b5274612a5bdc6fde05`  
		Last Modified: Tue, 04 Aug 2026 23:52:17 GMT  
		Size: 49.3 MB (49331702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e125a740deebb70f4978c7719ecdeb35c9dab0e619d499ceb29e48284f48af`  
		Last Modified: Wed, 05 Aug 2026 00:14:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0ab1f04fa95ee8632853c5b247b7827bdbb7ec8deeeb4aa74b6f884b24dd9de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8877791b37858bb0a881f38c06ac1ff6f30af8ac60d8b0fb384d17514b169b`

```dockerfile
```

-	Layers:
	-	`sha256:5e061d6e53545ea24f5d39e7f74cee0f48d3f210b920d5d1a8f74d8cac5dce97`  
		Last Modified: Wed, 05 Aug 2026 00:14:59 GMT  
		Size: 3.2 MB (3194277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c16735232e77de5aa6ac9641bc29feab3b5cf0c3f225068d975aa9df3bcb6e7e`  
		Last Modified: Wed, 05 Aug 2026 00:14:59 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:36903af2c9b0f65b882054a46dbacc0954791e6137beded69f20cf5c770d5aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46228272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54238d882f88cf050fbd856fe8f4ed56c0e56bff02fa0094cda71105421836bf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:14:53 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f678b1991f147b21923698c169a035c4b8f5ae61fbfd107e1529b3e1195c4fd6`  
		Last Modified: Tue, 04 Aug 2026 23:52:06 GMT  
		Size: 46.2 MB (46228048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de96b6f66228611e93db0ebb87ef6ddc7161ae92ada2a04a61476eed9a1d877a`  
		Last Modified: Wed, 05 Aug 2026 00:15:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c023f9eeb06e1da034b30fcc1aeb1afcc9f73ea2b4f5601efece4e36112a4b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4ae47f35978761ebbd0940db789fc7b46cb42f84e2524f16c511a4391a46ba`

```dockerfile
```

-	Layers:
	-	`sha256:e00faa34eb56157b7047bfc23a39fe0168e4ac28254da75d17b7cff2bc04a20a`  
		Last Modified: Wed, 05 Aug 2026 00:15:00 GMT  
		Size: 3.2 MB (3195804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:514fc323e283c74f3c9814066ecd9cfa84101d945b8dd7bf59f27f16a50957ba`  
		Last Modified: Wed, 05 Aug 2026 00:15:00 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:e080c0a2fbd06517c7fb71f3c2da6bf45fcfa41454af69e8dab9d54b99699dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49362000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b637d72de88c7d0227fc1b587ecc09cef500637a8ad1e4db9872f4da0345834`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:15:00 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:bfcb34026e1133159b75d54bd9ab0e7c3b167036e1a86690a2e97c22d8614806`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 49.4 MB (49361777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8414ca74f506f852c33f44dcd925fceaea4b972a96373bfa702b4a90071b25a`  
		Last Modified: Wed, 05 Aug 2026 00:15:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cab407b94d701a3c1d91520b9c50b7290d60a64a81fc5e7e94c12724f2bf540b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1598a55e32d4a5acbb60f5d01c2fe2efe0e57914ee296b39da5fd004e6230416`

```dockerfile
```

-	Layers:
	-	`sha256:d0005020f5bedc481f3e6cbfca7c9e3b13132cc964d426dfbaedae87335ba3a4`  
		Last Modified: Wed, 05 Aug 2026 00:15:07 GMT  
		Size: 3.2 MB (3199002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5aef26f045f03c32dc1aacfc5a72bbb0c710f34d665c8488e8a95be490c61c5`  
		Last Modified: Wed, 05 Aug 2026 00:15:07 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:80fc21ff26290a3582bdbaf5e7a3a74b7222073fc6aa6cbf4e052274cfe8950d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99d82f47a783802eecb70991befa7f20f3ec1c2662309356490942f7c2aff97`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:15:17 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:5ee9cec7ecffffde5454be1577dcc2e874bcfbeb92f7c0c58c02330aa3cd53bf`  
		Last Modified: Tue, 04 Aug 2026 23:51:46 GMT  
		Size: 50.7 MB (50668690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1ff58dfac1df78c93e4bce85d59f2bc7912f12d323e8c7fe8cb2ee95ff7aad`  
		Last Modified: Wed, 05 Aug 2026 00:15:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:aa28227d8e2d17bcda9577372165a06f990f1d735377a1e7f530ff5d39f0c48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3197135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db5226e275c039de38a9e27cb3879e30dd19a54d07a6a38fdc06d9afc83188d`

```dockerfile
```

-	Layers:
	-	`sha256:e4c67760f7f011a078fb219f779dfff2b3283c4de73875f640373671d85b8d92`  
		Last Modified: Wed, 05 Aug 2026 00:15:23 GMT  
		Size: 3.2 MB (3191374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4fb891234f8a60465922a126ef20bacbbc69b9563070842b2a700095602a24b`  
		Last Modified: Wed, 05 Aug 2026 00:15:23 GMT  
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
$ docker pull debian@sha256:fac6ea7722255071116b470b8fc303c8bd9f7ffcefd7ea30e8f45b4b2bbb438a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49078709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe33e7af8f02f52bd4d22fc24203d1384e62e24aefc517486194ef40f62a499`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1785715200'
# Wed, 05 Aug 2026 00:14:18 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a4f59ed26dcfdc36a2af78406bf56ffd7a79cb3b3675a5ae541447ba304914fe`  
		Last Modified: Tue, 04 Aug 2026 23:50:35 GMT  
		Size: 49.1 MB (49078485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ffaed0c3f0ee06423d46a764355586f12f9108b0ea71d3f60ebd8716554daa`  
		Last Modified: Wed, 05 Aug 2026 00:14:29 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:cb8ec98a87c9273b8ff19cfc2aa195c07b63bd2b3151b9dc6690f66d51945243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4f08e7534f775ad02756f3fe8d80fbd624bbb7784f769eb7570c820a03f2bf`

```dockerfile
```

-	Layers:
	-	`sha256:5a07ba18a1a24c566e37a897c5bb134d84f2c47ff1513bf3c2a08e1e8ebb045c`  
		Last Modified: Wed, 05 Aug 2026 00:14:29 GMT  
		Size: 3.2 MB (3195673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd8f5cfb9d350601cae2eefce3ff6a0cd9c0a4560031e1268c048fcea4ccb46c`  
		Last Modified: Wed, 05 Aug 2026 00:14:29 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
