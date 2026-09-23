## `debian:trixie-backports`

```console
$ docker pull debian@sha256:7f5d340ea26bf5fd53f38a6e3ea383fc6384be2c35ba43f908197aa18c0c4ad7
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
$ docker pull debian@sha256:9692ed9c52ef5843f58a6ce51c7fc6f8645944918d9f464d64de1af7f39f1153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45804491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4c626be61926157f895a9b65fcfda7aacd4aa597293670f8a684501c45d4f6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:13:53 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d2a96b81f7dd856e671dd780163738168310a9b621a2e674fe3f0d153d5d2c28`  
		Last Modified: Sat, 19 Sep 2026 00:03:37 GMT  
		Size: 45.8 MB (45804267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9247a5fdee960204b92a173a99cebbe99283c2f07df4dd1852fe50147c7c5b9c`  
		Last Modified: Sat, 19 Sep 2026 00:13:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:278e504ea11612b525853840d762624f188558c7168c3607bab54f7cb867e692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4451ec900d22b00dcda525f11670a38982ea42b4eeb9d6805f85c0832bbb94d`

```dockerfile
```

-	Layers:
	-	`sha256:7db96c04d6f7c7a3d57fe3df264f52b5a2d53336862b4dd2fd65b908605e505f`  
		Last Modified: Sat, 19 Sep 2026 00:14:00 GMT  
		Size: 3.2 MB (3182250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b26b42c576c49fbda40d51b47123f651c347d2e1333d716c39bca4a1af65c6f`  
		Last Modified: Sat, 19 Sep 2026 00:13:59 GMT  
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
$ docker pull debian@sha256:3c813722dfb1e3a1783ce4c42ef1c348ec85b0653b4a0e9aa7114e6835363fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53195298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b722450a825f6f55ffc75e1089dbcac2036a5f953ee72cddc47739061d02da13`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:13:44 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc64d2af127ce3cc2c1dbaef70c834691d7bee2327e7f9d65e94b263aec4da74`  
		Last Modified: Sat, 19 Sep 2026 00:13:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:00232557714d8b064c6d452059aa39e8cf2ae5bad9348a1d31fa21aa3be51faf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d22041152e33fb47b218f6a336644025e43d1a93ca7a69353c5fcf1f397414`

```dockerfile
```

-	Layers:
	-	`sha256:f122f6c2614b5841b22c873f37c9d0182ff58329ee033634711daa1f452fbf82`  
		Last Modified: Sat, 19 Sep 2026 00:13:57 GMT  
		Size: 3.2 MB (3184387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d4b79b1f11163f005d5f97585991096e07d849aabb50e8b4f2a2091d916b94c`  
		Last Modified: Sat, 19 Sep 2026 00:13:57 GMT  
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
$ docker pull debian@sha256:90f8b573d34a7dc440b6f96e0989ecc33492aa34ec06432cc3bca59870cbe693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49447847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc44befa2521ae8c65ed9cde685e46e48991549e6af48cb12d465b56be20cbe7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:12:25 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32077f73f99a530468b96c6bc3cc1e6343daa8fe4f63f44d36a9dcf9798b5b4`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:86dbd004ae91ff5c2f20746cf8c23ef0256ddf2567d4de211b8c710de61cb5a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3188107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e38e947db8f743a20d62c86618776c53a4b2fbc85845425fcda2d13ceca930f`

```dockerfile
```

-	Layers:
	-	`sha256:1393e4e33675ec460383ecccf1838a12791ec054a6183892f73594c71ed72d0d`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 3.2 MB (3182323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55b2e1527d6546efb91ee512325b8b960daeccab9b32841f11d6744b5567178e`  
		Last Modified: Sat, 19 Sep 2026 00:12:35 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
