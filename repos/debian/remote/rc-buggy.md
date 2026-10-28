## `debian:rc-buggy`

```console
$ docker pull debian@sha256:676dcdef9805fc5a3b3d5eaeb84ddbde2f23fe72d31499c86bb51fac2706f214
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
$ docker pull debian@sha256:ad7dc153f5a3a1cab0c14670ad3d4a527248f53ead247caad2074b7eeef69c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49820228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694c23d95e9441801cef2b2a6346304e584d45d606668eed31b65cd80a9f903e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:15:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:b4e6f7f184eb26c2de69e913d8e719cb6612b69b12932727db49fdb6cae72ecb`  
		Last Modified: Tue, 20 Oct 2026 23:30:38 GMT  
		Size: 49.8 MB (49820002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3804eea85325136619b871231d6c3a1b089c4db1710d596720241ee82d859d1`  
		Last Modified: Wed, 21 Oct 2026 00:15:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:0500a4f86ab247f6334125646eb3bacda55f79b97423ee4f2483d8c7a98300d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3180157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac495dc75c0ad6470a14de1930dd6e1f078730373ad0980d570c46a18ab9c79a`

```dockerfile
```

-	Layers:
	-	`sha256:160233815fbc6c7a3d322b7464efde0893930ad0b190338a596feca392089619`  
		Last Modified: Wed, 21 Oct 2026 00:15:21 GMT  
		Size: 3.2 MB (3174101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c86f679e452a14c992e87c66b253f229cee942af2b1cf6bb80ddbb6a9be37c5f`  
		Last Modified: Wed, 21 Oct 2026 00:15:21 GMT  
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
$ docker pull debian@sha256:76dce880ed5deedf8920a5a9bb045c59866eb7e5e0e280bad1ed526a1269d4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49150712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d5b945bcbfce3433bf8d9e68fe5ab8710f392b7a4f931a7fab0c926bd774482`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1792531975'
# Wed, 21 Oct 2026 00:15:07 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:7adaee7df964e959622bd0856d39cef027e2ba7ccb920143be129e58a6de63b2`  
		Last Modified: Tue, 20 Oct 2026 23:30:20 GMT  
		Size: 49.2 MB (49150487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b3376e97e6186b9cd5a313c0fb74e9812dfced43bdd398bf5886cf6dc8fe12`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:a282623effcb0b7028a6314a7c585c5bea88570df406fb45fcfa3c5482687869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f40c2aeba2451bfbc7c727631507819e213c6487507b7bbfbde0f866863a056`

```dockerfile
```

-	Layers:
	-	`sha256:a8c7657540892934188eca26327a1d4858246ad3aa0e420bde08743973c089ec`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 3.2 MB (3177562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997f259db00095007326ae5ae76ad3b41f313fa95960efac5e5b7737409ac482`  
		Last Modified: Wed, 21 Oct 2026 00:15:14 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:cf9b20a90362ed55aa97094e00b87b9205ea0dc49b5b11b6444b13f2545f9b55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50951516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4700b3518bf3315f32e05859df1323c074af16a623bcf7e1c564769be2e42b4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:14:00 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:83748c81ccaf7cd658656e8d5f96a1a047d3eff6e17c90bb48560d33a7b19ca9`  
		Last Modified: Wed, 28 Oct 2026 00:10:41 GMT  
		Size: 51.0 MB (50951289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bc1afed7f84b8d6bd429eeff2681e28f36fe5faf3901eb30cc532c58bacccf`  
		Last Modified: Wed, 28 Oct 2026 01:14:07 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:b304cc9bab0bc5a4163cb71ec50479c6f56a2a130e804d79b17edb433b965646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3178853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0a226eaecb87a412f9d1fcf715ad670a7ed903eb90f7df59c89b3320564df5`

```dockerfile
```

-	Layers:
	-	`sha256:b3f9784c8d7a779f09bd4de1fd1518996c3ac5b1be63fb5b2ea8eddaeac05ff6`  
		Last Modified: Wed, 28 Oct 2026 01:14:07 GMT  
		Size: 3.2 MB (3172819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdca070fea3966c4ff6921a9b99eb615704e6b80cfda39e5a3317eb338e75592`  
		Last Modified: Wed, 28 Oct 2026 01:14:07 GMT  
		Size: 6.0 KB (6034 bytes)  
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
$ docker pull debian@sha256:42135405f7e4fd49fccb087bedcd89ded3d20d421c342900f33b9f4f601ff098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48927089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ebfd91d0dcd7bdd50d1f94b7f7e6ea6921a501faebfe3e9d345181da515844`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:13:22 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ed2e8a0473ac3a9d40de716965fd5725a2e604829974db4e80a8ab39edd09cc0`  
		Last Modified: Wed, 28 Oct 2026 00:09:50 GMT  
		Size: 48.9 MB (48926863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d746fd4d259a3f50029684f9e587b85754b18094d88a7af0809408c68c779969`  
		Last Modified: Wed, 28 Oct 2026 01:13:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:2b3864aa6b8e748513339183ff36a8a115f65e4f4d5f74b263a7be9065f8548d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:077d4a5fdb806bc3c26c918ec0362bc0ef9ae7f98f388ac5381a7f49de6e9cc9`

```dockerfile
```

-	Layers:
	-	`sha256:0c1c7018c9298b73ae4bee113daa1e3b24374ee4bbc898d816cea2be5196a2b7`  
		Last Modified: Wed, 28 Oct 2026 01:13:32 GMT  
		Size: 3.2 MB (3177122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:672ef4d2f7c56a87cc804d3792c66e331315a5289a6584616c92b37d6e6ca1cd`  
		Last Modified: Wed, 28 Oct 2026 01:13:32 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json
