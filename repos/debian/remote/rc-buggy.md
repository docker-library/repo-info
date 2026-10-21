## `debian:rc-buggy`

```console
$ docker pull debian@sha256:87708b3a46f8231f4df8913940e0b4b98ecc267bf0b9f5884f6e96cdff18b066
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

### `debian:rc-buggy` - linux; amd64

```console
$ docker pull debian@sha256:cbfd81a9ff1d777bc2406605e80fe813cceaffa70934eaf5b75554ef33702e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49811108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b5ed1471eb0d844ec4413b9f43841eba5bce7226addb25eb861af0e0a84ed94`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:15:18 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ab2033ad8cb0b43749503cab4583da73f596c307f88d12356e5364054a51048e`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 49.8 MB (49810882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6132220a61db35fc66010db5b2c19b792940193f1ba6738aae11c01050942a28`  
		Last Modified: Tue, 06 Oct 2026 01:15:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:d71cbbcb9d92bac40ee1fc7839554f7c6ed7ff1952e7fc11707742b99e90a28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1e36dcd8172b146b8c68994ed95969027a5d1a86ec0bb1c6e25a77d65ffb1d`

```dockerfile
```

-	Layers:
	-	`sha256:f0518957e618ded5138ceb3248fd80e90127f4629348362a60a341f5bbd57d9b`  
		Last Modified: Tue, 06 Oct 2026 01:15:24 GMT  
		Size: 3.2 MB (3174089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:547c751129bcb52595e1defd7f4df542c61c06908e44437f4edc5538e97b5e18`  
		Last Modified: Tue, 06 Oct 2026 01:15:24 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:a70056af9cd921f364c3a9b1b7bc7302edea36d5bf5043445f286fb4748afe5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46007729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090153b30fff53c207f5b38bfdf62e205fb463b864810f752f1de4d1da938751`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:15:45 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f598064988d3c8094600909e9ff8509760664a380fe3432f8f5981c4adda80d0`  
		Last Modified: Tue, 20 Oct 2026 23:30:18 GMT  
		Size: 46.0 MB (46007503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6522eccb8200d30f12d177ba331d82614ba76fe62e00d34e2f8706209f2c57f`  
		Last Modified: Wed, 21 Oct 2026 00:15:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:0f1241a71d004d77ba9f8aa6433d06882f17ed32b41d4f28b72856e4382ed779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a312882c64801aaff8c7da4827040466a24f1aff86394de6a2575e0397c82c`

```dockerfile
```

-	Layers:
	-	`sha256:28dedd7744930f3125965190dc3d66f47efe5b596eef297f84fdbcb262728f71`  
		Last Modified: Wed, 21 Oct 2026 00:15:51 GMT  
		Size: 3.2 MB (3175636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bba34967ed298d94b0dc371da64a2a9007f406a43f421199cf56a4f5d8b77c0b`  
		Last Modified: Wed, 21 Oct 2026 00:15:51 GMT  
		Size: 6.1 KB (6120 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:c13b08555d342690810c33f345f860dcec8fe6938c5c786696ca618f88a50ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49137447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a41fe7a4736c95a7fe1b8965710a737483df7caeef0bc85b9e43485af162fb2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:14:44 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:d7a8bd199db3cdecd4fbba67b4222426a79183b07610eeae664329cc97e17682`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.1 MB (49137221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7a6e43ae1bf6ce975e60f11f974bb1d88f9b389704607adb3c2c4ff513c6b6`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:8aa2bfd89cab5f0d36d7b50514ad8a46372956cfcb58991025680e00146a3105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9658ca3c0dbea75e2683b5e9fae1568279c83842987a845ceee91f1a855bc516`

```dockerfile
```

-	Layers:
	-	`sha256:169612050ff1be2163c78fe6257baa66fbdf0b40f2600c32662dd0c3363c6c1a`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 3.2 MB (3177550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ba48bf3ab1877ab154d67a686fc77ba320693f1287907c3a33952bbf1be77fc`  
		Last Modified: Tue, 06 Oct 2026 01:14:51 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:192a39aeb7ad33b1fde090f2656cf8bc98d6c4092771a5b7ea8aae6d0a43839c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50930654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de7e5a074894a4c21e5fe30326060d8236a33c7f85a4a6881f3fdbbd1647445`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:15:34 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:9110db07e46e0ee00d66b51c152e37c62b0703707db22c577c69116c284fd877`  
		Last Modified: Tue, 06 Oct 2026 00:13:59 GMT  
		Size: 50.9 MB (50930428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c6013ea3086ba99bb105268d010c0738d36631fdef3cf4dade9ce1f3852e3d`  
		Last Modified: Tue, 06 Oct 2026 01:15:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:86424667ac5aa37b83f042565b4f781e0842a1e9ac9f17205293741861fa2404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3177217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0ba1b6c816fbb904dc1ec4c7f08da614822f41ad5b07ce39399a40e7ebcf62`

```dockerfile
```

-	Layers:
	-	`sha256:d1592745f14172ea3157a8b9bd7e216d04257a4d74672156d946d9202d5842f1`  
		Last Modified: Tue, 06 Oct 2026 01:15:41 GMT  
		Size: 3.2 MB (3171184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0adc330b1b1c82ce6caf76e8711293a85964ab3e9c42242d1d697358275598`  
		Last Modified: Tue, 06 Oct 2026 01:15:41 GMT  
		Size: 6.0 KB (6033 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:e30d6708e11990c810faad5c62c283ac3f3b701c52445e7fecb7ecbfd23b15dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54506353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5154a8a75fe9db64ac78e5e1205adaec88c78fba85dd0eeb5b46c52ff03cc56f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:17:17 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:63e5bd9ae187ceef4c544fc1a71e296691faaf7ab4bf6b751fe40b99fefa582e`  
		Last Modified: Tue, 20 Oct 2026 23:33:19 GMT  
		Size: 54.5 MB (54506128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b369b52f8bed9d44e58c86e101ed9faa8c1e0085d8eec4bf3c453222fcd5431`  
		Last Modified: Wed, 21 Oct 2026 00:17:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:947682752af796286ebe68e49db2d3997628b6c1fd673c1879c1eb8a4eb16fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddab23a583dd8e80724fd02e7a6726bae48d6b16a24dc2aa256528b4c21ff17e`

```dockerfile
```

-	Layers:
	-	`sha256:36ba8a71edf5fc1d494d7fdf3833c9cc474d4da258236e415b909dc8cd7c3a13`  
		Last Modified: Wed, 21 Oct 2026 00:17:43 GMT  
		Size: 3.2 MB (3177867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:765d32c33fa63ec82b388227c1e73b72f7990e43710088841edebc39a7e5590b`  
		Last Modified: Wed, 21 Oct 2026 00:17:43 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; riscv64

```console
$ docker pull debian@sha256:f7771f2bcade3301be19b6d954409e242d9f23ff2dd5494f914b3efcf1cfa7d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47229975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe2fa95c2b45eefd6b23adf916711ff8abeb1cc347eb023bedba54b9b7c6746`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:34:58 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:29af863f47901f0573d3798e2d1e207aa2429f06d14b2d1c48747fc578d89be6`  
		Last Modified: Tue, 20 Oct 2026 23:35:20 GMT  
		Size: 47.2 MB (47229749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e6479be01b3a1169adafbe03d0ce29b13d92d7ba1312124766532eb622f913`  
		Last Modified: Wed, 21 Oct 2026 00:36:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:cd1a96d5bcd321172a4f3093b2ab2950ced38ac1a0b3aeffd15a07d2cde49c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3171738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf5b48f1c4523f95a2c72c1c3b0cc79af1906569c55e9784da4941ebe953251`

```dockerfile
```

-	Layers:
	-	`sha256:d3a3b272d2877ab52e0d5075132039cd56272554db6896fe1af8c5db804fec5f`  
		Last Modified: Wed, 21 Oct 2026 00:36:05 GMT  
		Size: 3.2 MB (3165650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:376235136e61c07488a6ecccf66a514025aa3b9882e4e1a2385d9b0dee24a963`  
		Last Modified: Wed, 21 Oct 2026 00:36:05 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:3e2436ac75b784100a0e45c6dfd16ae9f0e4febb84bfc6264e7c15d0f0adafb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48908514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f973aea8f3eaa9e0a2cee78fd2c865df5573c3a72b00ac5f85486166fbd44ee`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1791158400'
# Tue, 06 Oct 2026 01:13:41 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:3b2f5d15526d3e07e793acb96f627120833f3e67b1bf7484f7825bab71b4631b`  
		Last Modified: Tue, 06 Oct 2026 00:12:25 GMT  
		Size: 48.9 MB (48908288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2663fae283070fca3440cdfe23202bab807591c20c0bf246084f7d11cdab6380`  
		Last Modified: Tue, 06 Oct 2026 01:13:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:421173a97fe499d19253670ed02bcabe2031168d202a35f5902d57c6c2b37c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4215bb81f617c6ac1622fd904394b55d759b6b1b6f2b27ef39265016491a18ba`

```dockerfile
```

-	Layers:
	-	`sha256:7f05c7623cb5d3c43f2f281da6af906ebe95a2879826f1de83c4d88243fcb413`  
		Last Modified: Tue, 06 Oct 2026 01:13:51 GMT  
		Size: 3.2 MB (3175485 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38519e13be6c9710732ab43540a9ba31b27ad9976fa8864a1f43e48dc30f47b`  
		Last Modified: Tue, 06 Oct 2026 01:13:51 GMT  
		Size: 6.1 KB (6055 bytes)  
		MIME: application/vnd.in-toto+json
