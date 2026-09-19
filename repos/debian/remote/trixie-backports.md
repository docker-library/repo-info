## `debian:trixie-backports`

```console
$ docker pull debian@sha256:19fd2f3e9e95ead6abb647cde79ed93b6ed99ae462b0e177def7b447bac84ae3
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
$ docker pull debian@sha256:7d5b304322b552ea91db31a16f0900a406735e9a0a9640d5224b441860c4cbc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47514182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499aaf8a5ee7c9decf6b5a0de3e8705188c71a093b04ade757e0d1e43b7434a3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:13 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6bfafcb9289851b50666ac57d7853daa6bc6320f298dd257b039091541f476`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:c903d829ec58b795634f8cb438bf92ce8b97268a4b5b7ad015dec3fd0cab235b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3184746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27eee7055fc46dfe68cd0ec0f2b2f7a86dfb2d44214ae2dddeb29c8f2070329`

```dockerfile
```

-	Layers:
	-	`sha256:b41030d32068b3481143916d26066cf28ef387a66a888c2df821d0cba129a790`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
		Size: 3.2 MB (3178906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d04004815e28f0f39134e4d00b30b45a91c0b647b17cf3355a380f2c5bf67db`  
		Last Modified: Tue, 25 Aug 2026 00:15:20 GMT  
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
$ docker pull debian@sha256:f0d6469cac6099a6363db591b341064f41cc27407c91637b64f5e7e2cc1161d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50849806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9667f83aa50a6552118f2f4141661b6814240f63fd3d5c3d25398ab5e80cff6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:15:59 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7634f075be17b505aee9ffb550552e7162573a2a688014310d3025860dc6d826`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:606333534d00dd1c27d11ad0c56d2fbb07dde1a4113d0627eea3fd3b280fc7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14ec0e394f8980d37b6fea509c029ea3df13464c24628c89d8e0f3e619e883b`

```dockerfile
```

-	Layers:
	-	`sha256:e50f03954886e23a6d6fb857dd76ad994aa5a97037a620255fdfaf9333719eb2`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
		Size: 3.2 MB (3173171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:338f56c6204412d8fd54d04963b2afb9d004906dda3724a0b5f84456ca3f2f4e`  
		Last Modified: Tue, 25 Aug 2026 00:16:06 GMT  
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
$ docker pull debian@sha256:c461311d4e88a84bb72cca90f8d0af8b7b86937e7a1e2bf81a69d7556ff2831b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47831104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:717e6b8ff7cca287a74e289abd26c463e250e5539fdc5922971cf31b4d1a531c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:20:39 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1917b91d5b1aab28138dbe26241aa6054ae23018e27d35435fc1deb353db383e`  
		Last Modified: Tue, 25 Aug 2026 00:21:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:bbc8b252fad467234329af1ae7fbdb3d4d3e7258a32d11706002bc88727fdffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3174104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b0495cc3100e959186e7586b41728d2f639b8200e2bbabf00a8b9ae3182803`

```dockerfile
```

-	Layers:
	-	`sha256:f12669dedb9e58c36bd8bf058ebb84a9b359dc7d46db0c6909664d9461e6ca99`  
		Last Modified: Tue, 25 Aug 2026 00:21:33 GMT  
		Size: 3.2 MB (3168294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07e2798dbd6bef98602ff4f509b3fa89378ad42e9a3392e78cddc7b4fd96699e`  
		Last Modified: Tue, 25 Aug 2026 00:21:33 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:trixie-backports` - linux; s390x

```console
$ docker pull debian@sha256:6cdab9efccf49bb7f2cf1745a23c661ede53254b26ea842cf4b06fd3f8c07314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49406920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada80bde3a866bcb0b5ed74cb1074804a2046eab00063d2cab93f21dd981665c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:14:19 GMT
RUN echo 'deb http://deb.debian.org/debian trixie-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bab234bfeeab6eba7a1c014a0aaecad2ebc201c74747239db837bfd44c263aa`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:trixie-backports` - unknown; unknown

```console
$ docker pull debian@sha256:596e6c5a526c7eb5894331b828973485f3d5932e70b58fdecac05387ea29a33b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c0fbbd5fc52735191158856196ccb96c2173b079094a0553abb0d17e4bbe731`

```dockerfile
```

-	Layers:
	-	`sha256:8b5326c662b5db8288f148b6555a7f2191ed079d931963f16893645ecb4eb525`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 3.2 MB (3177416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8678b7384c88b92d6cb7637fe51a60aa3992322188233a2a0ca2e0cad04445b6`  
		Last Modified: Tue, 25 Aug 2026 00:14:33 GMT  
		Size: 5.8 KB (5784 bytes)  
		MIME: application/vnd.in-toto+json
