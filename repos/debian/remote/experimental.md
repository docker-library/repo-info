## `debian:experimental`

```console
$ docker pull debian@sha256:95a78f96633aa4169f40ef343287326be9f16b7caeab33b017dc29ec00a2f561
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

### `debian:experimental` - linux; amd64

```console
$ docker pull debian@sha256:c494ec42817b24a5891b7b4df833d6891403e4944979175a2a1879fa8957aa8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9cf5558fc9c32ac27b4647b8805873b5aba5c4eb4f491129227f4a0d9cc064`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 01:21:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:7c244ef1ebeeda98aabeb7b48fbb8c1a516f983afff38f93cc144c23a09f7c42`  
		Last Modified: Sat, 19 Sep 2026 00:06:21 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b428b43de6589d95bae4653214ed9e1debb5331210f30fca27f890b8057efa`  
		Last Modified: Sat, 19 Sep 2026 01:21:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:72444c3d14b1019d181935c30138090af656fb26173857c26ac920ecaf8c3e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcbe07a5be4cabee0604dcb823a6cffc6b0ebdf0a7ccc6fc215b373f4a2dcb8`

```dockerfile
```

-	Layers:
	-	`sha256:cf234a89975581ba3710e71ed0dab7a100567a1e942a008d1e963505eb9a9468`  
		Last Modified: Sat, 19 Sep 2026 01:21:38 GMT  
		Size: 3.2 MB (3184511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:846114d053e787f12a00123bd3bb90492958b067b1a2918e0ed7d0f0f47ef0e7`  
		Last Modified: Sat, 19 Sep 2026 01:21:38 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm variant v7

```console
$ docker pull debian@sha256:3787ced271cbc3ec92889aa79f5f925578c635824f44fef8a3a6df9d23d0c1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45923215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f10486a84f41bae66fa0410014d1075de60b685615d34756a26fca20244301d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:14:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a114cfa6211004930f94d41831ae48cec12f306932ec251a20d8540051ce231a`  
		Last Modified: Sat, 19 Sep 2026 00:03:41 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfdad9909692c21873296333a4b29b999c7ecb32a047eb6efdaa52d21b98c0a`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:b1c82446c445c90c3788a9121176adcd80eb5f42088f1bb839c1053950aedb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258ba958d423ece47789d22cda12d0d0647c5436453a88a99eb29d58d16124b9`

```dockerfile
```

-	Layers:
	-	`sha256:b6ca1d1b4c99c8313a15fb0b50a77c7feefc8044b12ff3cc0ab526d1618f4baf`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 3.2 MB (3186046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b49a441f755c4f0b3410c490dd9623be837971fb3265544c1c63699da700ae`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:c105a8621d6020b2f74b1ce1e837fcf0b6d75c216e1784328797a30d7730c602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb1b469213ed532ab176219a6a814fc4349a673622230a2b8ad6e995e7e258e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8ab480d513e9497dd82fd65da41cc20e2640460efb9426fe28853ac55893bc64`  
		Last Modified: Sat, 19 Sep 2026 00:06:14 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582a0d1b411727b5b29c77c3335c4e96f58fe91093cabd4a189ce0912d8cd843`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:7164e061b1720e7d419ef4eb4da6b67f4edc727cad433d083d8ab8e0801e9af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3acae42baf73daca82666528f2479e68f9863998f343f8cfcc0ec4cb999eb2d`

```dockerfile
```

-	Layers:
	-	`sha256:553062b10f85a9536abe1fe5c1cd8444c87a1207cb9a1163e68e441211bc6a9e`  
		Last Modified: Sat, 19 Sep 2026 00:12:59 GMT  
		Size: 3.2 MB (3187972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c12ba09a75374d73b0c6479602e66c53f2e1f39ef413add60bdd9540294cd347`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; 386

```console
$ docker pull debian@sha256:619b8af54ec73df2a6c3367b9b99c035b77c2402cf06744da476187d7992de5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50753031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02e663d09c7e385d7b4c5af1880dffb2d5e34f5872320555b1ccd1b77eda755`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:14:37 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:4ed2bac868f1ccf9eed729a8fc1f14ee6c3f2ec4897d008b184ba3934bfbcf91`  
		Last Modified: Sat, 19 Sep 2026 00:04:07 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87f354d94e80d17e5080a7501064c0ef1dbe13b018f6a803f49331400c79ae5`  
		Last Modified: Sat, 19 Sep 2026 00:14:43 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:7eef882b2d2ad4b288a8fda12720fa1b356e2498e3ddf212d50ef1b93a7ec8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e009cb0864a556e8de1fcec1d57ecdfa6dd02c175abb139f3c9901a0c0ea0a`

```dockerfile
```

-	Layers:
	-	`sha256:4d6967aecf32634ed21460ef345ce1b9dd5879d885287ec70c7fa4b95be52e3b`  
		Last Modified: Sat, 19 Sep 2026 00:14:43 GMT  
		Size: 3.2 MB (3181605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1589596293e7d41fc1b8a76bc411264d4d075db31bfa6aff99efd98e764f3d4e`  
		Last Modified: Sat, 19 Sep 2026 00:14:43 GMT  
		Size: 6.1 KB (6079 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; ppc64le

```console
$ docker pull debian@sha256:88844f59d1b25256555583856c03e1f33bcdc2457f73e6e800451378c4ff3708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54779416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9829fda6a0fc3e49216559ac5bf4076866328db54fa8ba05deb0627072f8f2f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:15:42 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:151c0da3cb2bc85199441b941ab74147249a0d38e9f4b67a96345487930a9fde`  
		Last Modified: Mon, 24 Aug 2026 23:22:45 GMT  
		Size: 54.8 MB (54779194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239f8862151976c3478a7ff712750dc54e461eb5ed4d202e8032f6503327629c`  
		Last Modified: Tue, 25 Aug 2026 00:15:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:bc2781c36c3d9ac75a24c96565d288eddf26e7fe2471d474e74d61a6b164760e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3204940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0239cc601513eec4010168777f9238e391e7d21975aa38b24e7d9d972649eef6`

```dockerfile
```

-	Layers:
	-	`sha256:b15fd3185e55df86ae59ab69cc0c7569d7077dd7862a795eebeeb8da57e15de3`  
		Last Modified: Tue, 25 Aug 2026 00:15:53 GMT  
		Size: 3.2 MB (3198807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:873cec516fee71edafb36cacd4ab5123ee47d8470a65f86dc8c7c75c659d0526`  
		Last Modified: Tue, 25 Aug 2026 00:15:53 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; riscv64

```console
$ docker pull debian@sha256:1ba11faecc58a4262cb7db2757b7f143699ad5abe2fa0e01e18ed92bcbf86421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cafa0aea860dd71c644c92dec3b0c11b355b99bb2401e6bbeb5cd7a8b91c3ba8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'unstable' '@1787529600'
# Tue, 25 Aug 2026 00:22:27 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9a062a9ce513a0a6955103fe96cea4bb5819555372d2091ea37e8832038cf143`  
		Last Modified: Mon, 24 Aug 2026 23:40:03 GMT  
		Size: 47.6 MB (47562289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b48da336040aa981780c8992a3f68ca1ed381c8787c41b8e46c12666a9f8f70`  
		Last Modified: Tue, 25 Aug 2026 00:23:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:f32fcfb4fc3d7f197ffec34c5672f8b54ab969da76b46d019fbd1dafdc77c48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b559b6cbf1dc61fb82112e0b5e6e73afcc5e63c37f3a40f67ca5949642d66`

```dockerfile
```

-	Layers:
	-	`sha256:c3831c66b10ba92177346781ee40c8d34b116314b1ae885e1e119cf8af8a1d00`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 3.2 MB (3187405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c57a4567b42926eca108c22c75a2ede5c32cae6d8ec0335aeabcd7e47057a16e`  
		Last Modified: Tue, 25 Aug 2026 00:23:20 GMT  
		Size: 6.1 KB (6133 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental` - linux; s390x

```console
$ docker pull debian@sha256:8201c48d5c4b0232b41ec9538901cf2a251b708f0b691ee5a5ef4d39f500c9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48825599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4b6f5a749cfab07385ffee293da7cf85a58bab2b0ca15de3d7b306b2a3ed6e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:11e4cc7e982b0552e6f85ab21480f40d8a08b360f0ca21df47bddaad76ca1e0c`  
		Last Modified: Sat, 19 Sep 2026 00:03:10 GMT  
		Size: 48.8 MB (48825379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582a0d1b411727b5b29c77c3335c4e96f58fe91093cabd4a189ce0912d8cd843`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental` - unknown; unknown

```console
$ docker pull debian@sha256:5a8a7ad14d16381074f05373814a175e47221a62bd11ccc9d1e107bcf6f40e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5946148adaf7798e1440b8943c8d94a6b4ed15beea59454933bc5512f008f7`

```dockerfile
```

-	Layers:
	-	`sha256:31de1f405412b9be52e92eb5e2a9ca06664719075468e515e57cdd216cd16418`  
		Last Modified: Sat, 19 Sep 2026 00:13:02 GMT  
		Size: 3.2 MB (3185907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29cfac39949f389f832cf7937cb719cd1a3ab5fbbbb61068b643151cc789b955`  
		Last Modified: Sat, 19 Sep 2026 00:13:02 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.in-toto+json
