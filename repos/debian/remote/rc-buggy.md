## `debian:rc-buggy`

```console
$ docker pull debian@sha256:2349563c639e7db19ae89a6fb7ef16b6d2c5b07c206616a5054938a80205f7b3
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:1edfcbf42d85aad630ae09110af137c33af4732c2dc37d39973e0ae30811b83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1e574bd08d5d5b88df1ce6a05595708c5c5bb1bcb163188e19f582899cac8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:12:28 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b43f8109ee6868b4da5eaaef5f982f7567515dafb2148c28f0781d3d297cea4`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:0dd59ba5045febf2ceef3996f7bc970efa4c97044f199bf021bc973a99bb27d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d567bfd368201d033b345ac9ffce1c8fde64a1b43ed84920e702ddf33cb710`

```dockerfile
```

-	Layers:
	-	`sha256:36d2804cba70287434c86da013ca00701bbd3346ed144c27dcc4274541d26f6c`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 3.2 MB (3184495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55828a424f8c30fef53c6e26611e1e9ebd6e2f7483edf98f8fb3b938bf62354e`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:efc668f3f37ece99d0b125dacbf921293d289fd99372255cb193126bd4965318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45923219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f782a6ff8b7774bba60105aafa2b2f32760766247d73a88c6d81f5d7169e758f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:15:03 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:62aebbfb3371202dadee4b4550328ad7d4941f4c7e0a83244a23e6a9d591f3e3`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a50e815ee25a7dbc1f03022b68072f148828249f2bb933c0b126257912d3643`  
		Last Modified: Sat, 19 Sep 2026 00:15:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:d9c6c321b46432aaf12a191671ee68c7274d8d2d276acba5de03c695a27e7d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a32e89e6e0f5a5a2361e7032d6945c9108352ef44977a6f3d98c353dded4d7`

```dockerfile
```

-	Layers:
	-	`sha256:055ab97071ec8a41cdcb18b2fa42cc0d45674d3b9e70780919b820571a2da7d3`  
		Last Modified: Sat, 19 Sep 2026 00:15:09 GMT  
		Size: 3.2 MB (3186030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:394049d30906130cd5a0cbaa89cf2164e0ee6667b952057d681b65866897468f`  
		Last Modified: Sat, 19 Sep 2026 00:15:09 GMT  
		Size: 6.1 KB (6120 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a7a985e7dfb184fe476679aeb83b2d749b0880d2c9d97555c60b3262d0317755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930757af46a1a9e94c1c3d82c950862c7b28cb0feed62ac18d29e238c8459a44`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:13:06 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f5e0393a58d1388bb0116ef5a7d9449717cfe9386ec69ae503f97f5ca90f6f`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:b700c1b994d91380741a15dff85fdc5afe740d091db66e9041feed29f46a3897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88f9de99a4665f57a6c314ffad3bd015ab7bf07986995713383331dad57fb27`

```dockerfile
```

-	Layers:
	-	`sha256:a9d7be9662000adb6fa02bf2e47a4b0f59c6c1ce126eb37251f0b818706ab24d`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 3.2 MB (3187956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4623d25e88f4d2ade2a6c204e30f17408d1f931e3b8324e670367a2893bdd27c`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:35f9a11df76d73d8914861a77fa30dec7413ae07eef092a49c788eeed93e4975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51017657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c753c5c690680351ae749a19c09207b66eea010ab6291cf97510ea1e36e42495`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:16:06 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:e01d3901aa4016b5ea48582531a16356a61eed1c133860429fd1cae83ee61798`  
		Last Modified: Mon, 24 Aug 2026 23:20:39 GMT  
		Size: 51.0 MB (51017431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298c6d7251e6af4752daf84af7d9789084dd18ceb3a905e4b5543a8cc9906d22`  
		Last Modified: Tue, 25 Aug 2026 00:16:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:ba182a877653574400ba5200d6d593ce8d06e38d1d0f003e3eb85580c21551d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4634cff6f18b8b8bb9b9cf012e01841a27b0543e888a0dd9c6f3d06bc4b7aec5`

```dockerfile
```

-	Layers:
	-	`sha256:9af803c185ea50351476b6ef781919d5d74004e721a71d3ac6b1b3390110c969`  
		Last Modified: Tue, 25 Aug 2026 00:16:13 GMT  
		Size: 3.2 MB (3192114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c139dbc44dcd09b2e833b5b0a96e9ee16375d7da56419bb943143f6e083f4109`  
		Last Modified: Tue, 25 Aug 2026 00:16:13 GMT  
		Size: 6.0 KB (6034 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:87bca96c9dd1f63f9f3082d901237e6183f6509b0190f65bb658e1e62c3b8b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54325219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435d6bb1a1a571b73244a4444b8272e6de9d2357554c26c041582ed759ac3a3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:14:10 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1bee8b4a482e38c21d63246011ee76bdcda1a12e221d085c28b3dd02bd64c5e2`  
		Last Modified: Sat, 19 Sep 2026 00:04:25 GMT  
		Size: 54.3 MB (54324993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68e082f811e415d0d91638ee8e5ca545c4a7897c886a9ebee35f357be19c51b`  
		Last Modified: Sat, 19 Sep 2026 00:14:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:8f3d89b9193de7c9a0cd5b72a1f89d28f48d80f7f835a9935ecf76176bc68144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6aea7faaf1e1037565f96a2004be74c34f5a3912969b0f12f13a7aa69b937a`

```dockerfile
```

-	Layers:
	-	`sha256:c89dcba013b2cb7bcdede56efe3fe742d3389518d9398f5676d5170b2d2afcc1`  
		Last Modified: Sat, 19 Sep 2026 00:14:23 GMT  
		Size: 3.2 MB (3188263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:000c738f8e432fb5962ac3ed6e12cec9ab4b3d722b289772592a67b882cfcc95`  
		Last Modified: Sat, 19 Sep 2026 00:14:23 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; riscv64

```console
$ docker pull debian@sha256:9bc238fb56a6ee0e254b0c16d30c9eb90b880d1764253cc9898c589e1cccb708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21710b729979b020580ea1e4924f0e7c735733eda52d477a58b590eaf815b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ebdd89b00a8705e3b3704b27b947bea95cfc83734a6eb81fe4941099c26f3f12`  
		Last Modified: Mon, 24 Aug 2026 23:25:54 GMT  
		Size: 47.6 MB (47562284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77869c8cad23af638d89e1792cf2a6097208925d65fd90508e05d6e0f57c6ed`  
		Last Modified: Tue, 25 Aug 2026 00:25:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:7e6097af9fa2c75475bbe8b9733d083c243516c2ddb1bbf5c91bce9e1dd4bcbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf840626487ad9e373d0b07852f8ba0c8c63f5a11b98ed3b3e9f570318437d7`

```dockerfile
```

-	Layers:
	-	`sha256:61f6e197b938466f9c8700bb699fc310eb43ac1915ed49ec148ef9bd2a3e5600`  
		Last Modified: Tue, 25 Aug 2026 00:25:07 GMT  
		Size: 3.2 MB (3187389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81d96792d429262b3cedf494dcdd8472e7619a16e93f98fee46ecb6d6218f595`  
		Last Modified: Tue, 25 Aug 2026 00:25:07 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:b6e5c9a8c5a35ef0787fdddbe19a2022cb074829a509875183d62c97a7a2bd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636b38db02ab4cc7004d62aac6ad73a1dae5c9a9fce3e870d3a57b5ccbfd214e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:15:20 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:bb664b74d9fd31369cd1996da2e710116110371d6fe8eeed4d4bb31513c08ad4`  
		Last Modified: Mon, 24 Aug 2026 23:19:26 GMT  
		Size: 49.2 MB (49248305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c1e268710dad652710ec13b2cbe8d419239df3911416c649468385aed7dd24`  
		Last Modified: Tue, 25 Aug 2026 00:15:35 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:e8d1968d34fbb3787157f312d4a44e137ca696b256421394c5d8bd6e96663aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fc92e7dd9b1620f65ed897cdfde24466bc71fdedea757fee468aa26a6483e3`

```dockerfile
```

-	Layers:
	-	`sha256:00247d334327296918e0a75f5a5adc9d942a26aed35547111f1ae6fff4a2cfa3`  
		Last Modified: Tue, 25 Aug 2026 00:15:36 GMT  
		Size: 3.2 MB (3196417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ac088c5869de9f533f2336c5e836a38ceeaf2d305562a2f80d34f133683e506`  
		Last Modified: Tue, 25 Aug 2026 00:15:36 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json
