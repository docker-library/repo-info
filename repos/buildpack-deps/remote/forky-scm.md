## `buildpack-deps:forky-scm`

```console
$ docker pull buildpack-deps@sha256:5b61c722f22d2165d697ce6a49fb3f479b1247c446488b4eda08406d074dab86
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

### `buildpack-deps:forky-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:242e9c3afb1387f227f05bec1fa729d3036113e906a0dc636260e1a04cb4f56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158183387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb0a3968713a2d2f5936562aabb6ab1e48d46dc3a0d922305e266f91d03ecd5`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:44:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cef6b9e146b59354ff9c67b76eb738a3cbd721da62af9fea96e49a9203bfbc82`  
		Last Modified: Sat, 19 Sep 2026 00:03:30 GMT  
		Size: 50.1 MB (50075078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299213d11485d48d2dc0b0cfa241bfd389b24a5597b89d1d2390ca7f7e3195f6`  
		Last Modified: Sat, 19 Sep 2026 00:44:59 GMT  
		Size: 28.3 MB (28303412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2db1ca298518bf33f4c99ca6a64de84b79047845d9bf8b50121f5096cdf37`  
		Last Modified: Sat, 19 Sep 2026 01:24:18 GMT  
		Size: 79.8 MB (79804897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:45138bdd8c953d57d4d18d4eaee19dd286503d302614b68450fc26af015bf53a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8348094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d4c8fe7a1f42bc542a89de1fe6357710adc81ddd1cd4f13f012972cef9eab1`

```dockerfile
```

-	Layers:
	-	`sha256:4c5431f75d5f0cc0594e3b4fe2fe2660487001e6f731b692de385e2c2d815601`  
		Last Modified: Sat, 19 Sep 2026 01:24:16 GMT  
		Size: 8.3 MB (8340828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1536ce1b0047efd4a4485e2310ccb867c57786e64e8a9fabec4437490ee2752`  
		Last Modified: Sat, 19 Sep 2026 01:24:16 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8fe59f3c4afadecbb223d7ffe031a3689bd11ee3521fd8cc8348deefff944f61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145570373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2448a949d0afaf22a54e7561842e11d2e1d3b4a40fc3e4ed10f70763df282e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 01:28:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:26:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:c0dd4e73154d77853deb35b3302ee7d1c0dad7b51f51b93765769185d7b5842e`  
		Last Modified: Sat, 19 Sep 2026 00:03:00 GMT  
		Size: 46.5 MB (46451843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4788c3ca83a7687582f132989ac6f323df18ccef0b22e71085a93673782ba479`  
		Last Modified: Sat, 19 Sep 2026 01:28:27 GMT  
		Size: 25.5 MB (25543288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9793cbdf073ab4cf4e058006fa7c3eb2e43894cd97025d7266cf342e80a7e657`  
		Last Modified: Sat, 19 Sep 2026 02:27:11 GMT  
		Size: 73.6 MB (73575242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:86bd510557ace287450feb38ec69e83393623b3203f230c527307d78e70d309b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8348240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b929550f1259b186b7a3a83bd49e5ac18f9e260dab9f4a07973ba54580589e`

```dockerfile
```

-	Layers:
	-	`sha256:303e33c65fa55c8733189cef0656009b5a0badc629720a8b5a74abb919c48cce`  
		Last Modified: Sat, 19 Sep 2026 02:27:10 GMT  
		Size: 8.3 MB (8340910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40a15f757068217761afdde4b5a4f2acaade9632bc16c0c567a04ce8e620bae3`  
		Last Modified: Sat, 19 Sep 2026 02:27:09 GMT  
		Size: 7.3 KB (7330 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:6b38fa0ebc43f375170492d8168ad42f4fdcdd08a8bd245bef445f0308ffedcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.4 MB (155388015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2475b63627adf9db026386e6a49663ae6b2c38910787589778cda02e2e46d76d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bc8b68ec4249a062f0351d0b052f82733e554595d28d36e1fb5f71baf24fcc1b`  
		Last Modified: Sat, 19 Sep 2026 00:03:17 GMT  
		Size: 49.6 MB (49556485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbd35190aa3eb3f538f8f5090a5d01dbbca12a0eeeb3ecaf7ad4f8469989642`  
		Last Modified: Sat, 19 Sep 2026 00:47:36 GMT  
		Size: 27.3 MB (27308052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b2cc4193f31749c0a086ffe81b14cb44f8bb234cf63fb05ba116e5b9f0fde4`  
		Last Modified: Sat, 19 Sep 2026 01:31:49 GMT  
		Size: 78.5 MB (78523478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a7ee608f9a785ff06e942ca0fcbb852a14c5b6d94dea01c8dade4ab32cd68488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8357821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2610642ec765e28c2175451e39b125bb2b3c8425fd2e95cbfc552108574064`

```dockerfile
```

-	Layers:
	-	`sha256:fc7cc2a4800540a183b8150e1350c75fb2a554ae33daeeded6913ed62208ca8a`  
		Last Modified: Sat, 19 Sep 2026 01:31:48 GMT  
		Size: 8.4 MB (8350475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24626da3d39bf9f6b2bcc36dbe85ab6df7f31707164e2801fff58a49404dd241`  
		Last Modified: Sat, 19 Sep 2026 01:31:47 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1fbdf3600831e017566517e700517a244720b829c85313a235aa283e3921acc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.5 MB (162484376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96222de7ff7dbb6940c16cf317873e6f40a5346e0a38954ebc55622c40a4f06d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:49:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0eb126bb9a612ea416a905152fba9260f6164878660baff5271d28b45a7d68ac`  
		Last Modified: Sat, 19 Sep 2026 00:03:45 GMT  
		Size: 51.2 MB (51213279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5302722500c1d4e0c8017b6e1222f78d208df1afdc63a149e631ea9bababc5`  
		Last Modified: Sat, 19 Sep 2026 00:49:52 GMT  
		Size: 29.5 MB (29515371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7af518ef419662d426b01b4e1349d0a7a421bf914d2533916cdee72bad1bac`  
		Last Modified: Sat, 19 Sep 2026 01:35:54 GMT  
		Size: 81.8 MB (81755726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ab314fc4c3f91058c1b4571767b9f7a225b544b09b5012e3d08d0d0482796c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8343457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a7d27afc77ae47f6c85ef5a0e48126e2056371eda1018c78959b75316ad106`

```dockerfile
```

-	Layers:
	-	`sha256:a4d698b9687ad99001733058c8d6251efc213f13d93e9f7ebaaad47e6241a797`  
		Last Modified: Sat, 19 Sep 2026 01:35:52 GMT  
		Size: 8.3 MB (8336213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f222863aa780bca4da1d9e1f6b660bc9bdb3b94e3b69b37fa633664c9932af55`  
		Last Modified: Sat, 19 Sep 2026 01:35:52 GMT  
		Size: 7.2 KB (7244 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4ad1f1d8ba9ced263b8618bf5f16ae8ffba9085ff77f94d92cac176463b32005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.3 MB (171280888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3474c53b825989fb4e1042485b18c0d486aecb84d025f5ac0489532af0f1c2a6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 03:16:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 09:06:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cb7fd76ce3e2978f396620d2ce4db34c6e31abd26f0d973e1cace0466a535365`  
		Last Modified: Sat, 19 Sep 2026 00:03:15 GMT  
		Size: 54.8 MB (54839170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbde7b92d1c7ceb8b1b93f8ec99f707204170fe93143733548c9d2c686a85fb`  
		Last Modified: Sat, 19 Sep 2026 03:16:32 GMT  
		Size: 30.4 MB (30382524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2922b9a12c908cea888f8e335ceffe240cd69711d13ba2f018d00a4c3a9bc0d`  
		Last Modified: Sat, 19 Sep 2026 09:06:51 GMT  
		Size: 86.1 MB (86059194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:84e99eda2b00f0507c7f9324a7e31e187818d88d763f610411bda760eea0d582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8355587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0e5e5f866282cf3cf3edca343a415bbfbd1d7f8466e2559788b8f18c0d95c6`

```dockerfile
```

-	Layers:
	-	`sha256:1081a1eb9e2e965725aee5321da3e1d0671ffad7f3bfbf806d0f00a0b80c078e`  
		Last Modified: Sat, 19 Sep 2026 09:06:49 GMT  
		Size: 8.3 MB (8348290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c17bc950b2ecb853c978d3b5e185e3dd448197af7394846b37b5caaf3b8a9fa`  
		Last Modified: Sat, 19 Sep 2026 09:06:48 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:dc6aef3926fe4cd6407b28cb2d728d9f871f983364751bdda512bcf6ddf644c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.2 MB (155161909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b7210f21a01620662da12496ece668a99acd51a29969ad4cda625beb2b0c82`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1787529600'
# Thu, 27 Aug 2026 00:16:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:37:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:317347724f0611ba03877e1eee8b21c4ddf58f85ee0ca414fa59f47dec32c320`  
		Last Modified: Mon, 24 Aug 2026 23:22:21 GMT  
		Size: 47.6 MB (47566939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253230d95d702f8845d5d679ec180622069de8bad3dec9a6982542793adebe41`  
		Last Modified: Thu, 27 Aug 2026 00:18:10 GMT  
		Size: 27.4 MB (27405396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73a5fe07ad3b7d755b0d1bb76e877ff67bd606f6696a6dbc0eba9359aa58d9e`  
		Last Modified: Sat, 29 Aug 2026 04:41:05 GMT  
		Size: 80.2 MB (80189574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:b44b3e630a017080a7029cfd791cff1b73d577cad7684e4326ecb69a93f831c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8337222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6aa83cd1729fa9660a84a65e718c54005f9b0bf80e3ba65f49ac36f116e6ef5`

```dockerfile
```

-	Layers:
	-	`sha256:e354336a20597bd752488d5520d05ff183ec9f272795b68e2b19297ecf549d3a`  
		Last Modified: Sat, 29 Aug 2026 04:40:54 GMT  
		Size: 8.3 MB (8329924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:866aa4687c88c7d5d95964b3dc3fb691a894541de7297f1f2633732f1177eabb`  
		Last Modified: Sat, 29 Aug 2026 04:40:52 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:121908598469cf5a0e6298c6a232aa8dab72a3cd1e075c0f4bcee625b006c1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156895606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8f8fb6362cb7b90ee36f91654e33b39dd550a7216abf54cf6d636c17267f3e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1789689600'
# Sat, 19 Sep 2026 00:58:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:00ec1575105e35cd5f9de7595058425838bb280d5ebcf3a21e441c789789cbb0`  
		Last Modified: Sat, 19 Sep 2026 00:02:10 GMT  
		Size: 49.3 MB (49326582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba1811152ba63201f9e1cf242891f09afd424d2ef3908d7fd84818e3ae9f8f5`  
		Last Modified: Sat, 19 Sep 2026 00:58:16 GMT  
		Size: 27.7 MB (27662346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9ec302172397ae02f03cc112fbbbc6b2b32db208613b2e9d7520361db4bad0`  
		Last Modified: Sat, 19 Sep 2026 01:39:06 GMT  
		Size: 79.9 MB (79906678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:526e85e9c0592c1365125ffa99580b92a92095e0fa032a10458194dc8f42cb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8348134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f7ac70c1b844552e36a612d0829cdef60d520a916d60dc6e2dd7441899a577`

```dockerfile
```

-	Layers:
	-	`sha256:c8e47473ba3a4d45fa9bdf7c28c966fdc21be495c1f44d16fa9844821106c6bc`  
		Last Modified: Sat, 19 Sep 2026 01:39:04 GMT  
		Size: 8.3 MB (8340868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b602009ad0dac43e1005643a1bb1008b5ffaf850a42a42fbb5610f992a76c62`  
		Last Modified: Sat, 19 Sep 2026 01:39:03 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.in-toto+json
