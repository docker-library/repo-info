## `debian:testing-backports`

```console
$ docker pull debian@sha256:79f57eed6476e9d77ea5c9ed12ae435e0eb62a9b21a7dcd2adf2a881cb729ac8
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
$ docker pull debian@sha256:fa6751148e26dec6aa07b9354724ab85c6af826b87fb1b74ced026a6ef0a402e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cb09d7701acbd6fbbbd7f08016b2da97a27a97bf00d4a2e4e779d28e9d416b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:15:02 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:65fa1856b3fcf0aaf689bf19470dc9b767c643904ac974ee6324bb352a294cad`  
		Last Modified: Tue, 06 Oct 2026 00:13:41 GMT  
		Size: 49.6 MB (49649157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e5515e1bf8d2199d45feb6a5b60aa55a08ef2e045e962a09a28fadee284c58`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:e7df1bcb4392a3ef1c23d3d05f483126dbbd7987792061541ccbd898cfe26774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131991b3e6a3663c26c847f8edfda8bc1838823507f51a3c249447aba600c3b1`

```dockerfile
```

-	Layers:
	-	`sha256:0d0402568fb5bc019a621d84f39623c03d9646b8a70225aa1b0c299536ad699f`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 3.2 MB (3184177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dab0011f7ff15583959678f339ebbe6a326388c7046f41d000acef4af32f1304`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
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
$ docker pull debian@sha256:08c134a65684bf5a3eafb93408b159046ead8ffc80ed10bd8efa5dc4cc8bbee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49048163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8ffa85ffe8cea429ec580a4e8a54c79b85e879d7ad7688d915734839b7970ea`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:14:38 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:12d1d72ad8cd584e48c2758a1a3ecd8200db1230d16c5a9882b9da871cd754e9`  
		Last Modified: Tue, 06 Oct 2026 00:13:52 GMT  
		Size: 49.0 MB (49047939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e423907d1e72674bac5207d949c148ca4ffd52687171292e6d45f25469183a5`  
		Last Modified: Tue, 06 Oct 2026 01:14:45 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:005fb5137d568f7f104663e8639501fe320c05816b3354a0309d484a5fd79956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fded71e185dc16a2688aa1f4bc16f3bf0729f1323fafdbc2025785873600a81`

```dockerfile
```

-	Layers:
	-	`sha256:28deb7e3b2b738d6adb1363fccea78a1e35389f9c1b10b1a0ed08d3d013f3a20`  
		Last Modified: Tue, 06 Oct 2026 01:14:45 GMT  
		Size: 3.2 MB (3187626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a25b2eedd5e61606cba19146a729eab242bf9eef74e9d773f7dbb2866f33fc1a`  
		Last Modified: Tue, 06 Oct 2026 01:14:44 GMT  
		Size: 5.9 KB (5862 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:testing-backports` - linux; 386

```console
$ docker pull debian@sha256:974067d1e3dfe7060ca5a455877afe7770b24806c2a123d016ef2774feb27f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50774075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a525a2911e9e6084379f5eea9c69c029819d263e06ced8c87b20101e6b08e1ac`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:14:56 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1a1d21b3047d1c57d61446f79dc91c9d3cb2541adbf746802fa7e578eeda18b2`  
		Last Modified: Tue, 06 Oct 2026 00:14:14 GMT  
		Size: 50.8 MB (50773854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29895098c63117973f370e05691b01fc4d024550737da3e8e8483becf3db026`  
		Last Modified: Tue, 06 Oct 2026 01:15:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d116abb41b65cecaea3f319ccb5307c52ca7f2744374e1b6c1d4d29207753629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7746f41ddaeb5639d231ac929322457a38b733d6f9084bc023d9b809b4b7df`

```dockerfile
```

-	Layers:
	-	`sha256:88d802d6a8af4dcc5f76b11df26eac76efdf2955b6b8da6cac587d55fdd2ebcd`  
		Last Modified: Tue, 06 Oct 2026 01:15:03 GMT  
		Size: 3.2 MB (3181276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a1112457177b575bf0ef3d79c2922e2067640c64bec1370edbcc675e869a525`  
		Last Modified: Tue, 06 Oct 2026 01:15:03 GMT  
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
$ docker pull debian@sha256:f4d6299dc9b90cfc40a81fd1c19daf9718104851271afd74950347902188aece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48824823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b31eca26ffc494dc7ff778b0637c9105fea925f7b6da8dc8cfcc36c88d7b60d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1791158400'
# Tue, 06 Oct 2026 01:13:12 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:77283ff3eba634cbb92d1cf5e9f32e5c44d706e7e0096a2cb14d3fa15d402059`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 48.8 MB (48824600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ebccd0b6e62d9e79a5485b8a6d87c8c4876698dbd20c1fe4495c93a4981b10`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:73b269040bfdc4ea3b2540fa7b4bba6e4a2112e744c22fdd2e9161d93d488559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816da65dbbf9cb760c8486e9c73a2e900c9e083fc7cb214498d7f883bb6bf499`

```dockerfile
```

-	Layers:
	-	`sha256:4837d97584672a29e028527670403453f989c641b9c36389383bc758bb5a01e2`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 3.2 MB (3185573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17e5e00f527fb94f764fd019cb6d7a7c7df72e05b0a52f11f8029fcc5871793b`  
		Last Modified: Tue, 06 Oct 2026 01:13:23 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
