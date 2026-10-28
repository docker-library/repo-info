## `debian:testing-backports`

```console
$ docker pull debian@sha256:6e6d86c4125583dc91dcead2c11cf0bfb208cb39e38cd989c1e341474201128f
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

### `debian:testing-backports` - linux; amd64

```console
$ docker pull debian@sha256:3a72ad356cd23bc0f0451dee42f4b74ac8b844ab3d9bcb6ecf607b4d41d8fd4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49814555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1fd904c76b0b0dc80bdb3dd49dfd6499445838354a28bdca2fe0ce5d189ba2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:01f4af150f35cf8c0660aa106c98e4ada817b99a2d56c58d15242daddd3f56cf`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 49.8 MB (49814332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5dc5c2333b9fca1a08ad5f96616fc2ec11cb3b436eb51d0642e598346ef447`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:72c03660a57668bc45c819b9c7dfad6de616c4c8869cfe12d26a243d0234eea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93bf77f72c421668a10cf7b1313a475f9bd8946ff7817617d22a581ccd206f6`

```dockerfile
```

-	Layers:
	-	`sha256:5d3ae8e786be90d98b6c835f072823f08c6ea2b1a446f1f71e3b7b90bcf7020c`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 3.2 MB (3174598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b92bccf6191d73f2eeb05b76117e326f6b154521d8bc9f466f7ce04f94de88b`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:01058158f23e8a01c77708f057ba79ba75f0bdb0b170a9abc01d3cbd7eb520cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46004368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fca4697c7d5d5648e32ab94eae00c7950b0216262f23175216384d7e4a4f80`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:15:12 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:310b9ce9a7c5a8bc74138d896531437b7fd4ac66048785859875ca8d02a627c6`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 46.0 MB (46004145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e2bf7d2affc5f5f2bac759aa3dd402926f28cf0364c9902988ce8f17e00851`  
		Last Modified: Wed, 21 Oct 2026 00:15:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:ffe761bd28a7e0b7c1ebe7bda913193b9788de311d7bae500bb563f015e8ee07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6a65e28a2720dc170015f17c73031618a93c907f4d495f4f37919da22d29e2`

```dockerfile
```

-	Layers:
	-	`sha256:7cece8a0b22c83ebbd9d06f16e44637978902b0adbbbe9c8024d7e7e6c6aef63`  
		Last Modified: Wed, 21 Oct 2026 00:15:18 GMT  
		Size: 3.2 MB (3176125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd10bd5dbb69665e0fa2416f0ff08a5d1fe8be76a5e13827009b3a4921e0d580`  
		Last Modified: Wed, 21 Oct 2026 00:15:18 GMT  
		Size: 5.8 KB (5850 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:041f33b0febc8ee05074aa4945419e85ca618b25eea43c641aa3046dc860fd38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49142670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddc81a535e4e957649137764ce7fc9911825a42f2faf1b970cee0a69815c8044`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:14:51 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e39da357b55f2c6e80d7112a1c30dfc8e12212feece4c704fe3ee09e191a593f`  
		Last Modified: Tue, 20 Oct 2026 23:30:36 GMT  
		Size: 49.1 MB (49142446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f9becb0dfa8f71d41fbb91d02d0520f6c08f646d851c03878c519bb3e26eb1`  
		Last Modified: Wed, 21 Oct 2026 00:14:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:abbc6d6e40da497d5d4a9ff04179a9b89917560f3d60750d6f210e61169787fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abefc9cad72f845192f109a97078af947c78de4667bc7820f53f34e0bb3823f`

```dockerfile
```

-	Layers:
	-	`sha256:2ff52424342e1d743ae1b0a991c72c922ffc10ff617c7f3a1d1ad6be85bd8543`  
		Last Modified: Wed, 21 Oct 2026 00:14:58 GMT  
		Size: 3.2 MB (3178047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82615e7dd4d38d8fbde8695cfddfe9ab3983f4f746225fa569626ccf0ccff2fb`  
		Last Modified: Wed, 21 Oct 2026 00:14:58 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:ca079d572312bf76e32526e089bb98b5b1db5c1809984e55a9be55f2cd20fe24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50935669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fadc051d37a6b583cc956287139b3764a2aebb2edec1c4e4c702868b71f82be`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:13:51 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6ed0a8cec46838599da7dc94a797abf5c7ab61a05495c396c07f437bbd41c1b6`  
		Last Modified: Wed, 28 Oct 2026 00:11:25 GMT  
		Size: 50.9 MB (50935445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11f737b9f36fe31230aa7fb2f5c56c00902bc4cbed4bfe162d2cbf800076a18`  
		Last Modified: Wed, 28 Oct 2026 01:13:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6b1dcaa3727718e6b7421a0f48f20a820d541d4e05e214142c70ba64c7f024e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9f861b1b3a468a5fabe658961c0051f9b08166c5a68c1a98dd1a8fee37f545`

```dockerfile
```

-	Layers:
	-	`sha256:876deb2d4c7588bed4fd7b53842924c89156f2300fe80760dfd0f9c6582a52d5`  
		Last Modified: Wed, 28 Oct 2026 01:13:58 GMT  
		Size: 3.2 MB (3173320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0f9347ed490f63e34dd691bec21b7f0cade8c7c66b12152df8cfd85e9476933`  
		Last Modified: Wed, 28 Oct 2026 01:13:58 GMT  
		Size: 5.8 KB (5777 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:e941b33288a11987727eef7a2529300bb817fcaa8c10d7625207fe919844070c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54501846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8754170b5189bc124164aed43fbca3fe1a67a14f8185521e46fc18b81f8f2e9a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:16:12 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f71c44fd4abcbc105edc2014324e694ae5e33581f182e5bb9c661420d6335ffe`  
		Last Modified: Tue, 20 Oct 2026 23:34:37 GMT  
		Size: 54.5 MB (54501622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f36bc877269f05b091952a7659622293044f10ce31eee09314d8521d7e2129b`  
		Last Modified: Wed, 21 Oct 2026 00:16:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:74c7f610d619494a400d5d94a86d912ca29fd5b4866d64f1de80ea311a4c3b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfc83d9db8828be54794c99c50822f3d6df349c639d57bc20f794084372d8cf`

```dockerfile
```

-	Layers:
	-	`sha256:29ca124dabc6fe3212d4c6f53d84df4590b5827ef9b65a73b103afbf0e8973cc`  
		Last Modified: Wed, 21 Oct 2026 00:16:31 GMT  
		Size: 3.2 MB (3178360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0a9367b65133cb0b8dc2b1de1d9c0d39a44785376524ccd0381e791d884284b`  
		Last Modified: Wed, 21 Oct 2026 00:16:30 GMT  
		Size: 5.8 KB (5820 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; riscv64

```console
$ docker pull debian@sha256:a4681d89589113e2cbfbc05ccfb7032622af41c1537f6a70d65976828479a4a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47232658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa11411cea2fae419d00912930cff7fd57538d5bea022629ed1d300556daa6a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:23:46 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:55e3f5ce610fe7ba9bf780a46d5edf176de2dbc8f50c4cf70de1d3811a795277`  
		Last Modified: Tue, 20 Oct 2026 23:43:24 GMT  
		Size: 47.2 MB (47232435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c3812e2792f68d976b138a2235e2b3f0ded91a7871f9799c952d9a1a211f04`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8d91f4f936e673aab6ae7cf97e1eab63d1a9ed0b0031ff60979fc02c61bec23d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3171962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cefec632e13d63219fa1ad190151d7867ef1a585f625cf7cb7f23c15279677a`

```dockerfile
```

-	Layers:
	-	`sha256:dfabd85b305c01836754af4ddf4652c041acb9ad4f23e04de8ad6c34df0e41c1`  
		Last Modified: Wed, 21 Oct 2026 00:24:53 GMT  
		Size: 3.2 MB (3166143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5952c82e3bcb498f32aa9beb479972ae76fbbd12206ebe4662cb9274700872f`  
		Last Modified: Wed, 21 Oct 2026 00:24:52 GMT  
		Size: 5.8 KB (5819 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; s390x

```console
$ docker pull debian@sha256:ad6099072561fc07e67a44956f3e6106599ce80e1d01f885e6e5c8aa26e6239c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48910609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c489ebb3019423e9572a5109527a658af6667433c1a7ead8f8fd3ab6df7c791f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1793059200'
# Wed, 28 Oct 2026 01:12:39 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1e3294c4b72b6d8b3f2137f0bcb926ff83246e8a97336b917c095084ae197052`  
		Last Modified: Wed, 28 Oct 2026 00:10:10 GMT  
		Size: 48.9 MB (48910385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fea998407ee2d6feec8131c2d6e441c15a4a3cd5f721608a220c52b28b0016`  
		Last Modified: Wed, 28 Oct 2026 01:12:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:78be33a72fe524041875637bb1867974b971e6ade7830976607faa88fba3c178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa5e450b1a35a8aa298f581c00add79b07b8fd824e130d5092356900d2a6966`

```dockerfile
```

-	Layers:
	-	`sha256:e80ff5ffbbd12d88d51878b0b0c3737c040449a23456d8a97056e618f84e381d`  
		Last Modified: Wed, 28 Oct 2026 01:12:49 GMT  
		Size: 3.2 MB (3177619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d47c4ebcbfc94d534501f6d8b999bc9f225ff681b22388fbbd75e593a084770`  
		Last Modified: Wed, 28 Oct 2026 01:12:49 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
