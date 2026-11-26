## `debian:forky-backports`

```console
$ docker pull debian@sha256:0e40e1d10cecc85e9949aabfeeb2d33b2d2541d29fba08f08dd69a9fc41c6bb6
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
$ docker pull debian@sha256:21d13eba1ad365ac0ed6b33df8eb525ba96e65e5c5669209a5353d9099ecec0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50824702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e51bfa5904fec44aeb6d5b7bf647c278e63faadcf31e9910dc72832aea23bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:13:13 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9974867d315c9f283d941189d8c153bbc4b9071609f585502bcc1b8ad33a7c`  
		Last Modified: Tue, 24 Nov 2026 04:13:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:f9f4a1a223b69a0765abd7fbc8c6a69a22ba0b712feb89d0dca77f7bf66e3637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3198523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aea3b5068a717b254ef91134b5e9e96b2b728dad4df8d293045119554ba6eb0`

```dockerfile
```

-	Layers:
	-	`sha256:fb086f93d55e5936ca151a02e6a2dec5acb1d8e547e153ea2a22d358acb0230d`  
		Last Modified: Tue, 24 Nov 2026 04:13:20 GMT  
		Size: 3.2 MB (3192745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a47b12eec8a9c77c8ef0f277227f8197207a0d4ba03d79efbbd15847893ac53`  
		Last Modified: Tue, 24 Nov 2026 04:13:19 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:b05a3139342a5c8a18aaa6714c1c00d2a80a8fe4ef302176eb63b68d25995705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46761516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7765d510f3d66fe9324f5833dcfd4c3bbf4bcb1787b03407cb160d60d64a2df0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:13:22 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ad15e1ccf6667f0b5d63e5965cca3e5ec1c04c4e3f2c41af33d31b007d744dcd`  
		Last Modified: Tue, 24 Nov 2026 03:39:59 GMT  
		Size: 46.8 MB (46761292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659348a3b7959342ed32618b6af1fe169601ead16c54fefd3734504d221c3d0a`  
		Last Modified: Tue, 24 Nov 2026 04:13:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:0a3383c861cb5bd6d756139f6241dd825520c940ce9e62232592bcc65b4b4b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3200151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff95e211d53b0e44398e43c4e89b3471f34466a595dd386e5799f088392e4e4c`

```dockerfile
```

-	Layers:
	-	`sha256:5eadb0f6b61b94fd96405a2e726e28ebfa8959d1b8a80d6b4ab1d4dd08ae75a5`  
		Last Modified: Tue, 24 Nov 2026 04:13:29 GMT  
		Size: 3.2 MB (3194317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83f85aab50d563da9e7a865181e71046b79c20b1a0664e9a7bd5cd2eee23f979`  
		Last Modified: Tue, 24 Nov 2026 04:13:28 GMT  
		Size: 5.8 KB (5834 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:5a37ab9332a0eaa7cccee10729dba1a95d5b14cd5ba1cd589845ecf0a0c09c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49959759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc2a10a95bcc6d8665e28aae199e190712d9b1013b13d14c4cec1befb951434`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:13:00 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b5a00b381330498e3ac71b6154cfca0399f4a96b671ecef74344648c950d2e`  
		Last Modified: Tue, 24 Nov 2026 04:13:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:761da8dd7129c6cd47e1f9fef105979e80380d826baed912f2473208a0ac59d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac637a6c8bdd54c76caf72f2607f0318f6cfeec371ed3258b6884fb760edd4e`

```dockerfile
```

-	Layers:
	-	`sha256:9711ed68229a2735f62bb36415c7b2927a3869c2464ac7c930c05cb01c88a3e3`  
		Last Modified: Tue, 24 Nov 2026 04:13:06 GMT  
		Size: 3.2 MB (3196209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0202dc380692fe1f439858df1c0a435a4675491f870565f97be4ec96b3eff6c5`  
		Last Modified: Tue, 24 Nov 2026 04:13:06 GMT  
		Size: 5.8 KB (5846 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; 386

```console
$ docker pull debian@sha256:15977231c4071681546d1fd6a2f3dd4a82ce748900586fb96f7d1734bcdbfd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.9 MB (51898723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9c357dc64c36c676e0f45913baf8ecc778078e5f00e29bb409430f49b3c005`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:13:03 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a56516bc66e38a6dbf83cc0d14d340f6c0258ced35adaca29a90b2ab66dc57`  
		Last Modified: Tue, 24 Nov 2026 04:13:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:becf05d98f5768c57effaf7674ae09823566165a38bff6ecb333f89cf14d4eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3195572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74f1915c2c3a0d307ddc1c1cbfc66a1458fca0e5b8850d5bc1bb20955e6e78a`

```dockerfile
```

-	Layers:
	-	`sha256:1eb780db524d273cfd573b9747a6ffdc58f2ef6f32f957f0210d0384783aca1a`  
		Last Modified: Tue, 24 Nov 2026 04:13:09 GMT  
		Size: 3.2 MB (3189811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee8ef4ab124086c806bc2a8152b51c353cbaffc51ce9fd66e8166cd13767cab`  
		Last Modified: Tue, 24 Nov 2026 04:13:09 GMT  
		Size: 5.8 KB (5761 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:161a32a8da45aef8aa5fa222024cc54590e157dd7a1db8b9276620d2c67a766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55430962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47376341a5c60776230529a3132fe6dbdd36f3b6d4696d0c0c0383da82227f6a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:11:53 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:8c9c871a59639f586eab4e27a4e6dde32d5de918c3c725dcf429285aa24641a4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 55.4 MB (55430740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e0d203370dd5f11cc4975fe5797952edd87cb3fa90e272bb403b85f3410edb`  
		Last Modified: Tue, 24 Nov 2026 04:12:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6fb94a623cf32ba17208f51d1d45f897b027d2e012f64de412aff6cdb2536800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3202396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:019e18d558b919b15fd7be3a819d25f3d1943d8b05c83d672d8a295fa0159d3a`

```dockerfile
```

-	Layers:
	-	`sha256:ff1c5c5ed8c380f598027322d4cf51900d72d7baaf3cbaf9edbcbb91fe6c7a05`  
		Last Modified: Tue, 24 Nov 2026 04:12:09 GMT  
		Size: 3.2 MB (3196592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e4d666804372be7ed1bb2cfb676c3f806d5af15d7e691e6c55585f6335ed857`  
		Last Modified: Tue, 24 Nov 2026 04:12:09 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; riscv64

```console
$ docker pull debian@sha256:0463ddb97c51d5503bc5ca045e42f50ea38e1d70dbb4655b3c660f43aa8e7750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48100770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae17500e4a7bd4fa7ff0a5334fee24cf78672fb8b2fa23a39627e1a1785fe348`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1795392000'
# Wed, 25 Nov 2026 17:22:02 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9ae642270aa4f1e1f8d23fee33eeb561a6e80628179606cfd2f855c39e24bc7d`  
		Last Modified: Tue, 24 Nov 2026 03:41:07 GMT  
		Size: 48.1 MB (48100548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab39ac77e329970bc8042d456afb8b534893b3b63bd630ac93976d731166e5ed`  
		Last Modified: Wed, 25 Nov 2026 17:23:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:8c23c3232a5356b3aac2d918d81c4d4351fbfc4a1d1a7b8d73d9808b9342c8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ca01c1b3dda4d6be9431de39ccd06e1539c6abbea12822d9dccef04fb607d6`

```dockerfile
```

-	Layers:
	-	`sha256:a09ba2fe6e06be1c655d7072e942052c92cf18a6b68c1f41f5c9160530a71fb3`  
		Last Modified: Wed, 25 Nov 2026 17:23:15 GMT  
		Size: 3.2 MB (3184315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fc245f8c0ff94d13e30420d4f44a6e6de24deae2a53d695d019506033081f99`  
		Last Modified: Wed, 25 Nov 2026 17:23:14 GMT  
		Size: 5.8 KB (5804 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:forky-backports` - linux; s390x

```console
$ docker pull debian@sha256:48244c2532aaf00e324cd9250f4118adec1a4e8e5e70a72bf81e8147bc9263fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49863495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f49b230e2c03cd1dbdde413413c9fe1294a2923da6d7fff79c714b20c42e7d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:11:49 GMT
RUN echo 'deb http://deb.debian.org/debian forky-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:a1c5eacac2275bcace23e821f0eb1d47f962bdcf22d863bf28709cb8b3953b7e`  
		Last Modified: Tue, 24 Nov 2026 03:39:06 GMT  
		Size: 49.9 MB (49863272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61329dbf09e4d88ff08f11f7896126846f11a17d4f3dc3f29cd80a6f1b140d0c`  
		Last Modified: Tue, 24 Nov 2026 04:12:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:forky-backports` - unknown; unknown

```console
$ docker pull debian@sha256:74535edcc3ab17a5ee223bc99a9ec2daa47638fa76076c7dc910e0ada57a9823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3199904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d98b94d383ac21e70802f8e3c653c624514c1f51ab3e9c31ac4bc8217bed51`

```dockerfile
```

-	Layers:
	-	`sha256:1892d3c73a846d1833bd8232d21f54d85a3a81bb7d130e0fcc0205075decba5e`  
		Last Modified: Tue, 24 Nov 2026 04:12:00 GMT  
		Size: 3.2 MB (3194126 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dddda7369c6d2846b346df3e32cd4a92e9aa143a410fbd924e9b252aa5f70ffb`  
		Last Modified: Tue, 24 Nov 2026 04:12:00 GMT  
		Size: 5.8 KB (5778 bytes)  
		MIME: application/vnd.in-toto+json
