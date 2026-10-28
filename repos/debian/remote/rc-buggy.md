## `debian:rc-buggy`

```console
$ docker pull debian@sha256:b4c3727d3670540c25573868c648effbbded2bb6fbfdbfcd7c8934030f4d0820
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
$ docker pull debian@sha256:fdb7fc0742462680ae3892f4c05eb36d2514dba48bd556a5b8006789ef1378de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49823176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52f534ad061acae8c9700f2ebc623075a3a316cacd7168e29b4c368ed9c8418`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:13:49 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:df4a8180013f4392a5d26bea9c5caf5a9c846f52d1993024ed7d3fcf30197dd0`  
		Last Modified: Wed, 28 Oct 2026 00:10:39 GMT  
		Size: 49.8 MB (49822949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f730185d5aa96cbdf76396a744e07c1ac0a6fadbf7de64ec99f7f112358751`  
		Last Modified: Wed, 28 Oct 2026 01:13:55 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:9788d3809f090ea5a84641156bd521ce00e068a3729bfb7ac17a620663ec071d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3181781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c449ec6f298ff8ed95635b309e00620af343dea874bd961da56463de8006bcc9`

```dockerfile
```

-	Layers:
	-	`sha256:23aebd7728dbe5f5a73089e8c5b57b903165b88ef3040de9c949f4d36bcba27d`  
		Last Modified: Wed, 28 Oct 2026 01:13:55 GMT  
		Size: 3.2 MB (3175726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad1623d0f0160e7a3d7728bee5c979547950c9f1c9e567623bf65a055701a702`  
		Last Modified: Wed, 28 Oct 2026 01:13:55 GMT  
		Size: 6.1 KB (6055 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:b4861a6464e68880d4d7b7ef3d42b039cad101054fa1a226ded1707c758e7775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46006954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b2903e149dfcf19124d1077fb882f4bbfc02efac139cf985d8f38fda6fc3b6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:13:36 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:4f8c8c9832ba5ab44b1cb736fe733a2663fb538ecc67b64e0a78250794d28137`  
		Last Modified: Wed, 28 Oct 2026 00:10:52 GMT  
		Size: 46.0 MB (46006728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b48ef1c60d1f0ad0b30ec6880db111eb8ce73c40792082bf5a689f7a6147a5`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:1d73d5a7d2d38dc9c1aecf207cfa31fa5470c4ebda12840e99f47895265dbe90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3183381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5cc363e589d6d6fd4d9482508801569d8cc00bfdeedcc0add36457e5a4129d`

```dockerfile
```

-	Layers:
	-	`sha256:5e1b0462f5df9eddce62b23a8fb172f818616d4772d8d06772fa2c9465bec72d`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 3.2 MB (3177261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c930ef68607c9cbd8e6e0b775b69ac2233c57d179eac6502cc2a39ab6cb03875`  
		Last Modified: Wed, 28 Oct 2026 01:13:42 GMT  
		Size: 6.1 KB (6120 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:b2e03bda3159380d24a92ed5fc6f99af3f2dfb66a881b299a3eb834fe41dc585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49169441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f874d0eb2c123cd49cd25fcc19dae8b5538b84c8d353f8423dc4f2355debb57`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:13:04 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:b6223b14465d7778f5e40cb45b59714bcc7b096c1b54d3d2fb6eadbe13191106`  
		Last Modified: Wed, 28 Oct 2026 00:10:28 GMT  
		Size: 49.2 MB (49169215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b287fd8b18a67747522259150a2e9a9314330976d583390757f65623489ff05`  
		Last Modified: Wed, 28 Oct 2026 01:13:10 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:ceae9d1f37ace26c6de7017ffca62e80b4516d1390cf2e4a26200d4aabcf8813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a26106fae5f5ed0d792bab66fb6b353c6fa0e97d6b6c371d68ed6477e48bf06`

```dockerfile
```

-	Layers:
	-	`sha256:f159890f0f69871ba14180976d15871091806c01f358365b3f9e66c2716563ae`  
		Last Modified: Wed, 28 Oct 2026 01:13:10 GMT  
		Size: 3.2 MB (3179187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98c557270008a38927b0e2002936d4ed1e7dc423e7956f6d62cbb93b6800140a`  
		Last Modified: Wed, 28 Oct 2026 01:13:10 GMT  
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
$ docker pull debian@sha256:e45827567261ec1f0d50c410e8f9182ed8c0bb3a32536e354dff851a2a4ab1fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54510604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ae39539197b5515d045ff985c0c8d4b24010c41538bfa56e57dc68cff0cc7e4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 01:27:36 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8e851d2604e88e5c6735eb86dfbb8fcb0e9aeacbdb9899452d64a5249204f79a`  
		Last Modified: Wed, 28 Oct 2026 00:22:29 GMT  
		Size: 54.5 MB (54510378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e1d4a382a3f05817297a5ccd9a4f28bc3d785bed94bd681768afa0ae28c2dd`  
		Last Modified: Wed, 28 Oct 2026 01:27:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:e0c23459954e1e9b2af11e8167499417ef9904cf4faee498497bc78769c52852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3185584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bca69e002d33f2a4155e91ebd007a619bb0ac74c8e88b320e495604a99c990a`

```dockerfile
```

-	Layers:
	-	`sha256:0ef7c89f79c01c6c837a729226a0a55491a6c293eb053576cd9245c83db8c811`  
		Last Modified: Wed, 28 Oct 2026 01:27:53 GMT  
		Size: 3.2 MB (3179496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56a53591c7afeb8b59b356f2075fc469f119e615b6de02c257188f9ffa7937f6`  
		Last Modified: Wed, 28 Oct 2026 01:27:53 GMT  
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
