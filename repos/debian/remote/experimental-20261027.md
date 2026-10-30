## `debian:experimental-20261027`

```console
$ docker pull debian@sha256:9b011bbb02a7fe1f5546987071c2dec128d5658c25b8ae40539cd6c76eb78539
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

### `debian:experimental-20261027` - linux; amd64

```console
$ docker pull debian@sha256:3c7fb6a6b07e365117b0a1e6430a90ef4c3da8bab91244dc705a57e2580627e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49823175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65ddb67300ef2d16454a64b55f2d3a05d744f06a11182ea99786bfb34aa80fbf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:47 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:c5521cce1ac8f98e9d2bb959e5c08926febf266b2a773f4e62d7bacfc7fc579c`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 49.8 MB (49822952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4a9e47f2bfec74c2881e0eb07e0f5d455920e7f7b472caa2bae6fa198b579d`  
		Last Modified: Wed, 28 Oct 2026 01:13:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:c02376fac68460a59916b702287e098bff0a07f968672e021b1b3ca96006f43a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11fe2e649788fdf6d17a61e2cbba4d162324bad8aa285da10508453a94dfa56a`

```dockerfile
```

-	Layers:
	-	`sha256:87e697efbd3cca165b13164fb0e40adb5bb7eb41a8a710427a14899999c7f772`  
		Last Modified: Wed, 28 Oct 2026 01:13:54 GMT  
		Size: 3.2 MB (3175742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8fcb497cab46ec8eafafa1a3ffd2949b68ccc7c63c51bc41a6d6b67e70e3590`  
		Last Modified: Wed, 28 Oct 2026 01:13:53 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; arm variant v7

```console
$ docker pull debian@sha256:3df5a4582cc47ad1d703eb23f1f6c4f9b7133d8728471bf0238a6658fb9f0333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46006954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b3bb8c077f89a055480eb858bb7350e41f0bb3a8a873711f391086448d8dc3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a82b1de741ededdcc7594493fa1c22368389b0803017f99d084e97c948eef96d`  
		Last Modified: Wed, 28 Oct 2026 00:11:01 GMT  
		Size: 46.0 MB (46006731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4a9e47f2bfec74c2881e0eb07e0f5d455920e7f7b472caa2bae6fa198b579d`  
		Last Modified: Wed, 28 Oct 2026 01:13:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:7d670b8f9643927fe5646c01c990d4b5d1f743e2328b415c7036a930dc1a5960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5151b5255bd909a9cfa48d8ab03a2eb16dd522f3e0cc50df1932f6ebba667745`

```dockerfile
```

-	Layers:
	-	`sha256:a1ec2f79a61a77a2869ebca167603b36fa8b827747a2a7d36bb1b874689fd7b8`  
		Last Modified: Wed, 28 Oct 2026 01:13:53 GMT  
		Size: 3.2 MB (3177277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ef97177136f875cc1a045f02618ed629fafe4867f8203997f613d75629ffd0e`  
		Last Modified: Wed, 28 Oct 2026 01:13:53 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:3f29f8e6bf6af292ec6abe189b6ccdb1784b5a104f752ece679cedfe4e943247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49169441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3dee330a66af4e7350571d0f363f15b73c5e013c892e583a33bbe0dca9d0fd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:b90a370182f628f407138ba302f7e2e938c453528ba030d16d1916a3986b2213`  
		Last Modified: Wed, 28 Oct 2026 00:11:29 GMT  
		Size: 49.2 MB (49169218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681fa999ce45d0ad2a0fbfb6fb1ff8e809cd4cb4c838b474e7e44bfe2fdd604e`  
		Last Modified: Wed, 28 Oct 2026 01:13:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:77c8e2a5f5a11ed346b1604efbc71665dd8d061f831bf9f5ac47214060191a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d43d0f955584b1fc075a7ae962fdf9f3bd027844571d09c9ea56621eb604e88`

```dockerfile
```

-	Layers:
	-	`sha256:44c8e94b2ea956cab9ec92048e2642d43acaeb74e929564e18aaa1aeba61c1d1`  
		Last Modified: Wed, 28 Oct 2026 01:13:43 GMT  
		Size: 3.2 MB (3179203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2a1a66bdc9211ebe8eed8a03bc09ea29c4f9539981c55ccb0e28744a0412e12`  
		Last Modified: Wed, 28 Oct 2026 01:13:43 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; 386

```console
$ docker pull debian@sha256:08da7b7d09bd792e869b6be1ab24889ddbf9c3192a050a213e990dd1a2dc0cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50951514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2238d25e04c3194b6e62eab99f34376c501941cec4d28447155caceea035c232`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:218b17b699af66ab1e816fb94d215bce6c7dcc7817eb59bf5668e267bb655f16`  
		Last Modified: Wed, 28 Oct 2026 00:11:34 GMT  
		Size: 51.0 MB (50951292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9786d01ce538d1d38262c7f81644aed422479432b29c634bbc5d49764c2811`  
		Last Modified: Wed, 28 Oct 2026 01:14:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:bb5d3e603a51e3a44075b309b1f945f995c400ec8b4abc220eae105170a7f801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32b352925081145ee5021e7c199c5fd325a5546ff5b0572b03ee7a9f16895189`

```dockerfile
```

-	Layers:
	-	`sha256:75b72c3c07156bbff972c8181683cee1ae6d1cc4617cd777089aad54a3123d23`  
		Last Modified: Wed, 28 Oct 2026 01:14:06 GMT  
		Size: 3.2 MB (3172835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93e48b95ee6145b68762e0e3be6243ba316eb1df7e10ac0c4fd60d68937aabdb`  
		Last Modified: Wed, 28 Oct 2026 01:14:05 GMT  
		Size: 6.1 KB (6078 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; ppc64le

```console
$ docker pull debian@sha256:072edb0f7242aac25f546eddd3e06d43fa3efe6f91acaffc811e5c14014d8bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54510603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b013e8dbf217d23bc3f2e8ff28812551c846b48523018c6b0d44f4db038b2880`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:27:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:fa5b372af123a537bc8237df3c186c6bdf4d5bd7c6885ecb87d50b791fb2f60d`  
		Last Modified: Wed, 28 Oct 2026 00:24:50 GMT  
		Size: 54.5 MB (54510381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d11d194e736a8f4f192eb1030bca803a7b4b896d0ffe3c6910a956e90bd4046`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:cd663e5a964a0f13d95862083a1318fc873fcc22d842c4b73c8e08237997f3ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d687d2e7fe7f87b996b67e08ccd42bda797af5cb8a90fa0254c2b2115355d909`

```dockerfile
```

-	Layers:
	-	`sha256:83e1ee09d5f6dd9156a108b4cb6245e049915cd5ea6f09241ecad085e0171fe2`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 3.2 MB (3179512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d95e32bb84b78fbd5ee6cb2fe4ab08115dfa2b4d63b11fd47a8052d56ec39a40`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; riscv64

```console
$ docker pull debian@sha256:f22a4ad9ea8ba804188949185fdc10a7fbcad81abe7ddfed0b704549103bb650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47253400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc703c8ef47ba7b030f3b80c0e4bdbcad3bfe7457e4bab942878f97a0e1c30d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1793059200'
# Fri, 30 Oct 2026 09:08:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:49267a5fb1462a423d3b043318cd1f9d6e827a4352e0bd3446006cf06b74e2ed`  
		Last Modified: Wed, 28 Oct 2026 18:41:41 GMT  
		Size: 47.3 MB (47253177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1dcbef21cc40c09aa55e7a1421aed024581e8ef5b3b1957bf8765f5e249dc23`  
		Last Modified: Fri, 30 Oct 2026 09:09:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:6e996f6c6ccff8c3875a692309cbf6b479d6df60e1ef2d10eb2cd967787a0dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3173428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff18a221911f7b35194d917ac0f2f0fa0e896319f82788f6f9f3e7e7710400b`

```dockerfile
```

-	Layers:
	-	`sha256:bf6c1f0a1a4fd9ecbed3507348f7652755eeeeaab903f56ae582b5be5bd392e1`  
		Last Modified: Fri, 30 Oct 2026 09:09:39 GMT  
		Size: 3.2 MB (3167295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f114f71b3cc5cac3fe2907c57b910f380875b3716ffd804cc0c3ec0e415a8303`  
		Last Modified: Fri, 30 Oct 2026 09:09:38 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20261027` - linux; s390x

```console
$ docker pull debian@sha256:ed8fc9e809b3579bd5c09dde4a50f378ae918432aa859d0f6c20258380b1dd42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48927088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d164f83f6c811c189123200e1e4df81a244f63c4ecaa3770113926bd3fab2e6b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1793059200'
# Wed, 28 Oct 2026 01:13:20 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:5027860a266f8001f1a4d5763d04b6d106fefd34526c05b3ea18d15914777767`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 48.9 MB (48926866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c7dc646b79829b66d33b4324f6b82c2bf4efbbbde34c6d918a8481fda7c3b0`  
		Last Modified: Wed, 28 Oct 2026 01:13:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20261027` - unknown; unknown

```console
$ docker pull debian@sha256:a5fc77203f7c1e948bfd864b3502730df742d134cb2cb987361e7830c3fbb3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdfba55a867efcc01b2bbf673731c01ceaf0fb9ca8fd484f7b2442ce1d01bfae`

```dockerfile
```

-	Layers:
	-	`sha256:b2de0cfd1ed006db81cc96dd87b223fa6778894a79e4667cffce99327b3d8715`  
		Last Modified: Wed, 28 Oct 2026 01:13:31 GMT  
		Size: 3.2 MB (3177138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef299e06a3a488305b915e0f0e20a7648decdf9eb60e63a07e336e235716a975`  
		Last Modified: Wed, 28 Oct 2026 01:13:30 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
