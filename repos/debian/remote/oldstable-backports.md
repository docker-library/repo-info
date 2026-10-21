## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:ed72c618b488a2b149f6f8a6dae4491b23c2caee4fcef000f3f455d2905184cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:5c83215b0874ddb84d1ef52cf8c3987049ec7756173e2de5e7d59f56c3769add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48518255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267fb15ae3d074448ce3fe96cff60eb21c789c6850bda72f6de8d2ee8990d686`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:54 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:9af55905d70367ca517c06097292ce32142a394d6d670ec8025053e9526ea76d`  
		Last Modified: Tue, 06 Oct 2026 00:13:44 GMT  
		Size: 48.5 MB (48518029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad71711c32c771407e0a6496d1a0ac7fb26d588e52d8b1227056452c093001a`  
		Last Modified: Tue, 06 Oct 2026 01:15:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:49095be51aa58c8ad23f9bdcea714e850a35a1072ea656cbc8ee3e97c90abc41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad72af3449abf456cf9b5df5903b3f8d797d12fa74d6afd32eeadffe2821dc0b`

```dockerfile
```

-	Layers:
	-	`sha256:dadc41de150d3486849f8458bf6937d265f81de843e2e7c4f7ce1c3bc9ef378c`  
		Last Modified: Tue, 06 Oct 2026 01:15:01 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6130a6be8472debfa80472aa3f323b6ade410facc1a5a4885bb90de23cc117fd`  
		Last Modified: Tue, 06 Oct 2026 01:15:01 GMT  
		Size: 5.8 KB (5810 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:6fcd11fc73b92817553cfe66010823a87373f36097ef9a9c123065c6df338f7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44220025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bbbfc2f0d83e14bd2f8aca89be9a7a16d063878826e86dd3582f317f7976fe0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:71955913e69d01d7b395abafd23fdbe7fd78a46dfbbb3f84d4c79fe9bc81c0ef`  
		Last Modified: Tue, 20 Oct 2026 23:30:25 GMT  
		Size: 44.2 MB (44219800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebddb2f0487f4ab732dc1641b54d1dc811203558bf6e37489eb97cd918ecad59`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:fc1894a6a944504711d530ba0a0da7095d607fe16c10340685ea26367a3ba36b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697918cae6f28fb09c318c974ae3a6d7cc4d4ba56e9d64f90077ff126d7f87f0`

```dockerfile
```

-	Layers:
	-	`sha256:1e205e8458e2231946377a9cfac58bb2d5fdbd819163b44bbb4d7a0c2d01aa3c`  
		Last Modified: Wed, 21 Oct 2026 00:15:20 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f15da6ff0540054dbc670c94567567488226b3dfb53927faf192dd36d6c9f9b`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:47d15c4a299c9c1c6d051ceb4cb242da67a773e22c32b419328db4b93e7877a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48401782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683794867724c1eb2b792faeeb8c9444bd5eb7afed3115d1dfd1220f7ae62f4d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:29 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:d3b37d3787d97bc96244fc0fe475b578553c89b21843fcdb1d9c5fc7c5af519c`  
		Last Modified: Tue, 06 Oct 2026 00:13:02 GMT  
		Size: 48.4 MB (48401556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471b24cf934d4963aa42141a4b046fb5b4f50bd051630dfd96bc075e3d7bdbc1`  
		Last Modified: Tue, 06 Oct 2026 01:14:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:a7461e4182c1c4c12f8fdf177d037ab8877feef94c6d22a44d67c960463de518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b797ba4fc55ddd5977c5726f11f9e02a268c53f4b6f5c1e69ffb51f4d2924234`

```dockerfile
```

-	Layers:
	-	`sha256:1f349a07e1106971c3ee77a746ff043e08e316767dc9d1893d8f5373f8fa265c`  
		Last Modified: Tue, 06 Oct 2026 01:14:36 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed39492ce59c51b60ec9943cd7f8b5d2804d2389799ea5d463684c28fe59d0ef`  
		Last Modified: Tue, 06 Oct 2026 01:14:35 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:65c495d7263537f2c7e872e38d4fa789147f6e3d7ca35f2e0a8a546bd7d1d00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49505561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876dba7ea458ce89d32d2ba8f98ed7860b82f4d96918b15feaf9d7a5437abeaa`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:44 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:eeb29e52126f79959c28a18c6603b46ca8025cf625f930f6c708f4278559407e`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 49.5 MB (49505336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf51679cf64f3fbd2b71b90eaff47ff76cfd6203c15b919d86da06a7186343b`  
		Last Modified: Tue, 06 Oct 2026 01:14:50 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:6062767e7ddcec74c0d716b448e82f7460f54fea705eac43d9bf2c8b7244fba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d68d41bca6a0d5f317272d66e55505eac682b17f447c9be520a4458f9d57eee`

```dockerfile
```

-	Layers:
	-	`sha256:96ba1dde8803ac9b573fa37ad115c19a37feac0775feb1c0b626158004263c71`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 3.7 MB (3731380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90b2bf848b1094ad071212705a09ee0479019e3b4323769de3571a4477e1a23a`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 5.8 KB (5793 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:c2e304c8fb98bcb234bcf6ee12b3fc92afd85fe05fb9478db9ae6a8c3a782f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52364973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4c8a03158a21a85542314cf0a4e2a8533e815de6c68c85bee172bd517be510`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1792531975'
# Wed, 21 Oct 2026 00:15:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:27e7ba76262e0107c87ffa0342d06cc614e16bf1d0f25e66c6beeb269470fc2a`  
		Last Modified: Tue, 20 Oct 2026 23:32:38 GMT  
		Size: 52.4 MB (52364748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebddb2f0487f4ab732dc1641b54d1dc811203558bf6e37489eb97cd918ecad59`  
		Last Modified: Wed, 21 Oct 2026 00:15:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5437239f7367802f232aafc754168043529a93cc3304c1ee6b99b51b9f74fcd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216aa7f4fbceae7d707fd5076388fbf63981d192d01b6bf267323ecf577297c0`

```dockerfile
```

-	Layers:
	-	`sha256:4f1b2f481056ac108912d69f4bd2b252aa45a655308466b87d377108d44f2227`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa96473ec8e015b3d9ec8a78bd58e21e36f0619e9c44d66d349b938c2de3217a`  
		Last Modified: Wed, 21 Oct 2026 00:15:25 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
