## `debian:trixie-backports`

```console
$ docker pull debian@sha256:1f6931ac4cd89380e53fefbec7a70533991aa28e729b3b1c5afbafdd6b9ce516
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
$ docker pull debian@sha256:d8ff82c0a32dcef25913ab8408d639aece55416700198c55cf433fed4db75cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49379921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e72b5aa19c17680c85ea40f5adb778eb89cac7e0a97cc94445855d654f07a0c2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:12:14 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7353e186d0fa68ab7d9a232f483d9031d1eb57a5d7885583e0c84223ebde6e`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b4ab1822cbc35646eb6b000ae94cedbbcb940969765725a2a9a86ee8012e6ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3186660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b613aa00498755f15dc8573d1d205f7fd56de7c8a6ceb2b9af8cfeca5285f3`

```dockerfile
```

-	Layers:
	-	`sha256:95e2334320ccca75331d2f32c58c80fc45e2d92a16b8194a80c3581f0aaa97b2`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 3.2 MB (3180876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f1f119fc2208a622bbd0b26eecc1cd909a7fbfaf4e7f54a0e39e2e09bd1bb06`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v5

```console
$ docker pull debian@sha256:59c119b02e45f9a1814dea89c8f76c7257027d9453fb5dd29e05225bf4a562bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47548191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:408977627049ffdf4f299d0239f6d9a29b00def45d81da2b52b0179c5c90a455`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:15:19 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:7883bba1880261bb735b0ae1907c6217f056d9337e457b5f39f0626bfbd6042f`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 47.5 MB (47547968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919be9511b231b24e86ae77709f16a19259bfd9586608c282690bc43f2f72a2`  
		Last Modified: Sat, 19 Sep 2026 00:15:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:4edb70c0e63c2238dcb905af42b9cba00362fccd9065f7eb0db48cb815e950d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3189653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9797e7e5cfd26f8d551b2215d495fc5bfe785d9b0191d56de6739bbbeb35b099`

```dockerfile
```

-	Layers:
	-	`sha256:6bbb83c5c08031aad9dcab4cdfd1ee36b539bd0bd009e68787cee2588530e7db`  
		Last Modified: Sat, 19 Sep 2026 00:15:26 GMT  
		Size: 3.2 MB (3183813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f3289ce6b58ea37c39edbf70bd08bcdcf3cbb1553c15ee7ca0b20c6aa652759`  
		Last Modified: Sat, 19 Sep 2026 00:15:25 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:650087669080defd9d96d4b35fb0a59f96e982a28d2ecd54811bcc54ec0cf271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45813489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9601e1d9104b4eb57b5aa8b8be404fed9f6c1134c1e3b3b0d167b680fffb7863`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:15:02 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b2e7b40559933644a31714a37346ff1796717d607ea763ad445b388befffd0bb`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 45.8 MB (45813264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212b25bd05bb7e90899e5e19b15c5ee4d7ee3a1cc3d39f9a4ae098e18a6acba5`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:414d9b885524b59fefb70dd78ca635d23e50cbd1613fca6c60f7987ff7373c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223ee8e7ed288afa1d12bf801f445424181f3a0c8c3d9be39c8c9f48f92fcd8b`

```dockerfile
```

-	Layers:
	-	`sha256:d0cc0970abee518210f9870ad877685d333990fc4e9070eab771436264c7bfe1`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20ae9fbc8b3fc3a1735a3c46f518c3e73d5de7453a29dbc6cee553565085869a`  
		Last Modified: Tue, 06 Oct 2026 01:15:08 GMT  
		Size: 5.8 KB (5840 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:0f85fd66593381a1095f6f923935edbf809984bdb25d552fbc8e93ee3f054a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49749059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e833be218c8001f0567f5a96d029a27d5a40c5679894341c0aac0197005d771d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:12:40 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f496cd246a0d50a4c84012bfef2f612586fa6ec38326e5d3bf31d0cec108a705`  
		Last Modified: Sat, 19 Sep 2026 00:12:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:95696852e7979a4d9d5d9331f4160647879cc15c301aefe432839177472a1e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21af69666c4767c8fd0f4e19f8bfc14c972d900ce10b50dafe43ce759e1496c`

```dockerfile
```

-	Layers:
	-	`sha256:ec5286252df34d8f66bc2611feec0862c070f497954503b719b56fa2b310d70d`  
		Last Modified: Sat, 19 Sep 2026 00:12:46 GMT  
		Size: 3.2 MB (3181720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d84566fc120f8b01aa4aa8b362d8e96d2481a22a55febca4a09037137c7e6ec`  
		Last Modified: Sat, 19 Sep 2026 00:12:45 GMT  
		Size: 5.9 KB (5852 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; 386

```console
$ docker pull debian@sha256:f499df90615b6065abfa02648cefb4de2295dbd5bf371372dda53c955c7e3f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50892940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bf5616cbd8102085aadf9feceb02027729c33d109bfa3f5c799a9d5baf416f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:14:21 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f486df00c2f84a390c4534f408af3094508ca26b3d432c9f695e1e3a2d3a82`  
		Last Modified: Sat, 19 Sep 2026 00:14:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:644353a2b5846d68646753607b26365a8e8708c6316a67924a6ca08d99faab5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d355ef0c5233307958848ad3c059b7cc99797c4387524463f1157492b34bbd`

```dockerfile
```

-	Layers:
	-	`sha256:b0b52a9d6fdcd178f6830261b03a810816101071a193690b0689faec91f421a9`  
		Last Modified: Sat, 19 Sep 2026 00:14:27 GMT  
		Size: 3.2 MB (3178079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:626e188037215818f46cc9e4a38cc558eefaed29430a8fe7c3aa909c19a35a80`  
		Last Modified: Sat, 19 Sep 2026 00:14:27 GMT  
		Size: 5.8 KB (5767 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:dd8ea12384a6885d5caf3eb0d1ba7a4b4f1f82fd323f38169f057c52a7882bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53207348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7f7b34527681a6366d5b4525713283309d33267cee9c854056001a4555c15f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:16:25 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de79282884c487c773d39f6f3b7fa8bff87d12437a5d4945469f20e9a36b65a`  
		Last Modified: Tue, 06 Oct 2026 01:16:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:b75807ec463006ca33e6a0d024e061b6c6464d50fb4f12d49f671e6d487a5a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15bd1bc9452f3bfb1dce172adaa351932d38f38e3d6e07f80fa290a96432e4c`

```dockerfile
```

-	Layers:
	-	`sha256:98c936929121a2cfb5389a8ef9671ad082334f562c72e060f1a657643254c82f`  
		Last Modified: Tue, 06 Oct 2026 01:16:47 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b016e79773fb9d47ff55ac725d8043e97e453eaba3b07a64c44d1f456c39ce93`  
		Last Modified: Tue, 06 Oct 2026 01:16:47 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; riscv64

```console
$ docker pull debian@sha256:a0108c0917b4797a1552553d9457e7b41ab4f5a7efe9cf64b6a481a210a4860a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47867218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03dcc98b590d0dea45ad015702641a20aa48788b3c7e168232c4e2e8eb4e8aa`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 04:49:11 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b576f41196ce391ebaeeb058ed0bf8ef716528b15a0986154f91cf04d5b72aea`  
		Last Modified: Sat, 19 Sep 2026 04:07:24 GMT  
		Size: 47.9 MB (47866994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea38c87c932fbcb8e2706aae1739bfa10d05c6b99636efe31b17831c38e71b24`  
		Last Modified: Wed, 23 Sep 2026 04:50:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1806cf5ee556849ed7bf01213ab0d4c8e7939b0bf2415282fe466bbe3dc643ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3179007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d91936908a70b592a04f9257935cfdf1ec1f6233d74d22e9639f3809f8d11e`

```dockerfile
```

-	Layers:
	-	`sha256:396c46d27da88cd39802a4ebf9e31c4e0677229f459c38fcf82d328cd1341e98`  
		Last Modified: Wed, 23 Sep 2026 04:50:09 GMT  
		Size: 3.2 MB (3173199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7c5d47c1324da25fe3c7d90135e281e640754a7d8835d75439434074d649f22`  
		Last Modified: Wed, 23 Sep 2026 04:50:09 GMT  
		Size: 5.8 KB (5808 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:84d2b197d38266c85ca7ba35863d874bf60cb12f6a65ccfd461b57fc5dce59fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49457225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e3d1d0a06dee6feca1722139d11726dc9a772f6dee8c0965c50adac307bb23`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:13:11 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e171de089919cf9725221bfd863a1283919b0c9a94568de0bbce5db73d2ddff0`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 49.5 MB (49457000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31144be22f7c93566d7ab9b3314d2dcf2a7982023cca65bf63ca51492b852c70`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c25989c104b95a482cbfaa39a0be9ee17d159602894192182580e1757d906f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb555c6f878a1e4b54654376ad1c87d415c5acfcfcd1e077c7b6e81af68eae7`

```dockerfile
```

-	Layers:
	-	`sha256:70d71509fec0bc99484a5cccf52380b5f439f28eaeebc0616839054e428a156b`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:012de47fc0e150a6dcd3435609c449944c433fc0f3a61195a845d0c4a1ff5551`  
		Last Modified: Tue, 06 Oct 2026 01:13:21 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
