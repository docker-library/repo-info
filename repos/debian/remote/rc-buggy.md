## `debian:rc-buggy`

```console
$ docker pull debian@sha256:7ae7d32c10aa21ab10d100d764a0c71b84979b5872ed68550d5344c410c8bc7a
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
$ docker pull debian@sha256:1edfcbf42d85aad630ae09110af137c33af4732c2dc37d39973e0ae30811b83f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49649686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa1e574bd08d5d5b88df1ce6a05595708c5c5bb1bcb163188e19f582899cac8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:12:28 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ecfbe17c055a074746222b53d6a4cc623096f30aca0c1aa736abe6bfe5867df7`  
		Last Modified: Sat, 19 Sep 2026 00:04:27 GMT  
		Size: 49.6 MB (49649461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b43f8109ee6868b4da5eaaef5f982f7567515dafb2148c28f0781d3d297cea4`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:0dd59ba5045febf2ceef3996f7bc970efa4c97044f199bf021bc973a99bb27d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3190551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d567bfd368201d033b345ac9ffce1c8fde64a1b43ed84920e702ddf33cb710`

```dockerfile
```

-	Layers:
	-	`sha256:36d2804cba70287434c86da013ca00701bbd3346ed144c27dcc4274541d26f6c`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 3.2 MB (3184495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55828a424f8c30fef53c6e26611e1e9ebd6e2f7483edf98f8fb3b938bf62354e`  
		Last Modified: Sat, 19 Sep 2026 00:12:34 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm variant v7

```console
$ docker pull debian@sha256:efc668f3f37ece99d0b125dacbf921293d289fd99372255cb193126bd4965318
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45923219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f782a6ff8b7774bba60105aafa2b2f32760766247d73a88c6d81f5d7169e758f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:15:03 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:62aebbfb3371202dadee4b4550328ad7d4941f4c7e0a83244a23e6a9d591f3e3`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a50e815ee25a7dbc1f03022b68072f148828249f2bb933c0b126257912d3643`  
		Last Modified: Sat, 19 Sep 2026 00:15:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:d9c6c321b46432aaf12a191671ee68c7274d8d2d276acba5de03c695a27e7d4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a32e89e6e0f5a5a2361e7032d6945c9108352ef44977a6f3d98c353dded4d7`

```dockerfile
```

-	Layers:
	-	`sha256:055ab97071ec8a41cdcb18b2fa42cc0d45674d3b9e70780919b820571a2da7d3`  
		Last Modified: Sat, 19 Sep 2026 00:15:09 GMT  
		Size: 3.2 MB (3186030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:394049d30906130cd5a0cbaa89cf2164e0ee6667b952057d681b65866897468f`  
		Last Modified: Sat, 19 Sep 2026 00:15:09 GMT  
		Size: 6.1 KB (6120 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:a7a985e7dfb184fe476679aeb83b2d749b0880d2c9d97555c60b3262d0317755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930757af46a1a9e94c1c3d82c950862c7b28cb0feed62ac18d29e238c8459a44`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:13:06 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1a943e7c654e981d89df45cfeb4d6d86b2c53e4b1f55a1e666485e0dbbcf8ce9`  
		Last Modified: Sat, 19 Sep 2026 00:04:16 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f5e0393a58d1388bb0116ef5a7d9449717cfe9386ec69ae503f97f5ca90f6f`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:b700c1b994d91380741a15dff85fdc5afe740d091db66e9041feed29f46a3897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88f9de99a4665f57a6c314ffad3bd015ab7bf07986995713383331dad57fb27`

```dockerfile
```

-	Layers:
	-	`sha256:a9d7be9662000adb6fa02bf2e47a4b0f59c6c1ce126eb37251f0b818706ab24d`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 3.2 MB (3187956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4623d25e88f4d2ade2a6c204e30f17408d1f931e3b8324e670367a2893bdd27c`  
		Last Modified: Sat, 19 Sep 2026 00:13:12 GMT  
		Size: 6.1 KB (6136 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; 386

```console
$ docker pull debian@sha256:c8d6feb98b299e3cbee0ecf55c6f8d1c90a1b7a7d06645ca13d5c912533d89f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50753035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e603cdae223e5fa3162f348998c825c74e886a356eea3d0475aab136d30d27e8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:14:52 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:f9de436b1f619aa98917cd8cb05423eb8634c4c4dc9dee9eefb091f960cfd77a`  
		Last Modified: Sat, 19 Sep 2026 00:04:19 GMT  
		Size: 50.8 MB (50752810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bd5724770bbdaa71b742f800d2122b7147b2b32e878d3d32538cabd3fab7e3`  
		Last Modified: Sat, 19 Sep 2026 00:14:58 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:f80e49f96513a2672c60bab7881d7f1e87749ba3134cedfabb6bc1094f2ede87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3187623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8180ce156de2086174466f09ad4d37addf66772cef6f8cf638fd997cf7c7c5d4`

```dockerfile
```

-	Layers:
	-	`sha256:10895992fedef0f2c2b842834b3ca598904cb5cff3c357b1759135a7ca399cb7`  
		Last Modified: Sat, 19 Sep 2026 00:14:58 GMT  
		Size: 3.2 MB (3181589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1bbd1378e162cce820bee79973972bedc01d5c2eba5f63fedef544cac03209`  
		Last Modified: Sat, 19 Sep 2026 00:14:58 GMT  
		Size: 6.0 KB (6034 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; ppc64le

```console
$ docker pull debian@sha256:87bca96c9dd1f63f9f3082d901237e6183f6509b0190f65bb658e1e62c3b8b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54325219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435d6bb1a1a571b73244a4444b8272e6de9d2357554c26c041582ed759ac3a3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:14:10 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:1bee8b4a482e38c21d63246011ee76bdcda1a12e221d085c28b3dd02bd64c5e2`  
		Last Modified: Sat, 19 Sep 2026 00:04:25 GMT  
		Size: 54.3 MB (54324993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68e082f811e415d0d91638ee8e5ca545c4a7897c886a9ebee35f357be19c51b`  
		Last Modified: Sat, 19 Sep 2026 00:14:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:8f3d89b9193de7c9a0cd5b72a1f89d28f48d80f7f835a9935ecf76176bc68144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6aea7faaf1e1037565f96a2004be74c34f5a3912969b0f12f13a7aa69b937a`

```dockerfile
```

-	Layers:
	-	`sha256:c89dcba013b2cb7bcdede56efe3fe742d3389518d9398f5676d5170b2d2afcc1`  
		Last Modified: Sat, 19 Sep 2026 00:14:23 GMT  
		Size: 3.2 MB (3188263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:000c738f8e432fb5962ac3ed6e12cec9ab4b3d722b289772592a67b882cfcc95`  
		Last Modified: Sat, 19 Sep 2026 00:14:23 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; riscv64

```console
$ docker pull debian@sha256:9bc238fb56a6ee0e254b0c16d30c9eb90b880d1764253cc9898c589e1cccb708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47562510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21710b729979b020580ea1e4924f0e7c735733eda52d477a58b590eaf815b6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1787529600'
# Tue, 25 Aug 2026 00:24:14 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:ebdd89b00a8705e3b3704b27b947bea95cfc83734a6eb81fe4941099c26f3f12`  
		Last Modified: Mon, 24 Aug 2026 23:25:54 GMT  
		Size: 47.6 MB (47562284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77869c8cad23af638d89e1792cf2a6097208925d65fd90508e05d6e0f57c6ed`  
		Last Modified: Tue, 25 Aug 2026 00:25:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:7e6097af9fa2c75475bbe8b9733d083c243516c2ddb1bbf5c91bce9e1dd4bcbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3193477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf840626487ad9e373d0b07852f8ba0c8c63f5a11b98ed3b3e9f570318437d7`

```dockerfile
```

-	Layers:
	-	`sha256:61f6e197b938466f9c8700bb699fc310eb43ac1915ed49ec148ef9bd2a3e5600`  
		Last Modified: Tue, 25 Aug 2026 00:25:07 GMT  
		Size: 3.2 MB (3187389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81d96792d429262b3cedf494dcdd8472e7619a16e93f98fee46ecb6d6218f595`  
		Last Modified: Tue, 25 Aug 2026 00:25:07 GMT  
		Size: 6.1 KB (6088 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:rc-buggy` - linux; s390x

```console
$ docker pull debian@sha256:d274bf8f2ae37d82d7f0afb2eb6c2e39e3741b75b55ec3149d9e3255e67caf7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48825605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82f4a5fe7075485225248ef5fc744e451226aef9ab4600d80327b50c79351d7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1789689600'
# Sat, 19 Sep 2026 00:12:54 GMT
RUN echo 'deb http://deb.debian.org/debian rc-buggy main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:80deac694b4a50e1f04d0dc0d56fbc2ab7ad1c454b1bc48f20e9c8af1d7189ef`  
		Last Modified: Sat, 19 Sep 2026 00:02:11 GMT  
		Size: 48.8 MB (48825379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d13d1f726144b5b0f8e60e88ce200d38cf82685599a077672d4686a4270efa`  
		Last Modified: Sat, 19 Sep 2026 00:13:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:rc-buggy` - unknown; unknown

```console
$ docker pull debian@sha256:5ff5ad511b872ec9e27603003ba8080540889e746ed4113cc24bff2d23e61a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3191947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dce2d8628249a9d868024c24f2cacea459edbabe9ea3ad62b89a0ae9216b019`

```dockerfile
```

-	Layers:
	-	`sha256:c9e46eb635b26536697546768c678985f7a5a8d869670feedaa8f452c6211a06`  
		Last Modified: Sat, 19 Sep 2026 00:13:04 GMT  
		Size: 3.2 MB (3185891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d4d9de9452547c5d5a9aba55860e02ce8c12a33a89252cb0275a5a84ac65c6`  
		Last Modified: Sat, 19 Sep 2026 00:13:04 GMT  
		Size: 6.1 KB (6056 bytes)  
		MIME: application/vnd.in-toto+json
