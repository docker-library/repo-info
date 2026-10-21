## `debian:testing-backports`

```console
$ docker pull debian@sha256:81c8067b997d4163082b8b621f3485c691b5993fe0ce380ee50b182c8a7dd7ac
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
$ docker pull debian@sha256:bad71723eef5495251ca269da2d087d9c6e4bc3344efb80620e96d4b145d62ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50934567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e9abe1b214a1f9f65dbae367f7c00557b223ee9503cc915da448c55f3ef5c7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:15:20 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:0cd367ae8692846b79810fca725005dfa23460d5404991e31c663f3ced53de1d`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 50.9 MB (50934344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc58ef923805ec7f04768adecd0cb9e6d783f10d39b393582806407fffef81d`  
		Last Modified: Wed, 21 Oct 2026 00:15:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a3e07cf254c4dbb2a3c4440a4797f28c82804d0671ed95da5f201235467f3cfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780042f2d9c9edb77a8ec0d08000f43adfd877acd0ab6639b3e73239e6f5c730`

```dockerfile
```

-	Layers:
	-	`sha256:2d55074cb03cd17a3167bc8b8188b0eaab630c03f5ea1968253a5c33046cdb7c`  
		Last Modified: Wed, 21 Oct 2026 00:15:27 GMT  
		Size: 3.2 MB (3171697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e41cb9ce536c80a2225de05042867e97664124ccbb5cd27e387945147a6c174`  
		Last Modified: Wed, 21 Oct 2026 00:15:27 GMT  
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
$ docker pull debian@sha256:cce026d8ba98f33ed258c19e760d5c1b596125e41ca7fd6f1cc75e7a8d0faebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48912272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8b047f6efca42ca64acf48fec3c7838de5e0bb62710d0e00b1088de4d608cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'testing' '@1792531975'
# Wed, 21 Oct 2026 00:14:23 GMT
RUN echo 'deb http://deb.debian.org/debian testing-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1caba6ebfedbf6ec13e624b864c7aa0bf265b5cf2ff503cd1c6b8d87729c54a6`  
		Last Modified: Tue, 20 Oct 2026 23:29:57 GMT  
		Size: 48.9 MB (48912050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f48d966925fb5c0336deb264cc5d84982bdc9bc96e35f2b7b3ca9311b27f9ea`  
		Last Modified: Wed, 21 Oct 2026 00:14:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:testing-backports` - unknown; unknown

```console
$ docker pull debian@sha256:7ba3cca8b51f9e277a24903c69d7952b6b47b074cef72d9ce093746854da8859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21684d6202195c1d0695ff6374031a466d45571e012931ac54362514cbd2fc66`

```dockerfile
```

-	Layers:
	-	`sha256:c2d80b02982fd08efe1f1ad4d8e02fdb33de73fea068b194d7245279fdd418d2`  
		Last Modified: Wed, 21 Oct 2026 00:14:34 GMT  
		Size: 3.2 MB (3175994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f727a54885009a50bac701422e10eab1d498d7c8e4b7863b3c48ce35ce2a310`  
		Last Modified: Wed, 21 Oct 2026 00:14:34 GMT  
		Size: 5.8 KB (5794 bytes)  
		MIME: application/vnd.in-toto+json
