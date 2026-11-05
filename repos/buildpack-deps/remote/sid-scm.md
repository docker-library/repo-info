## `buildpack-deps:sid-scm`

```console
$ docker pull buildpack-deps@sha256:cae06ed0b75e107e87b52c0f22c113925c90d62613ac80e5eda04b4aa4c8fe57
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

### `buildpack-deps:sid-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:f25785ee9c9dec3d07fb1f2219586db5336a6a472391fba8fca9cc73ddd83959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160487062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67733ec8229bbb6cd2e76a0d2190fe1ff076788831626a60b3ddeacccf80aece`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:38:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:364a50d6a5e94f8e563c587da9a864a302a7410667b951807f503088e796a553`  
		Last Modified: Thu, 05 Nov 2026 06:16:27 GMT  
		Size: 50.7 MB (50726759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4273df8690da95456a1a9afee73682592f8aec24169da4f16e634c55be6fc3a`  
		Last Modified: Thu, 05 Nov 2026 07:38:30 GMT  
		Size: 28.5 MB (28484938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db8361de0af8cd5896057a31444db94278ae0ea1181c6b7c56584d5c0405734`  
		Last Modified: Thu, 05 Nov 2026 08:32:08 GMT  
		Size: 81.3 MB (81275365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:45fdba99c8fe26b293d40a723158b21dd8b369ffef0514848a82880139f6b8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8316267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec63b95ad336ae358ca8f8ab93191871a2d88ae4ac058ccbacf8d3119e80c4b`

```dockerfile
```

-	Layers:
	-	`sha256:5b990d557e0859f3353cc0adb0419368453ca794a6a9cfb0286e66a48f57eaf3`  
		Last Modified: Thu, 05 Nov 2026 08:32:06 GMT  
		Size: 8.3 MB (8309013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2ad7d770617e32173b160789d6173e95cba32ef109f163b48f20dbbf3b1d318`  
		Last Modified: Thu, 05 Nov 2026 08:32:05 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:73d94da52688bc89581ef793d1017abc37084156569dc835a7645416bd981899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146243191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e311803026be217cae599a40322e40c7fb7124728e08cb0d074e569db923b3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4f8c8c9832ba5ab44b1cb736fe733a2663fb538ecc67b64e0a78250794d28137`  
		Last Modified: Wed, 28 Oct 2026 00:10:52 GMT  
		Size: 46.0 MB (46006728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbdac6a50e441fddec66db56e671f3bd4b0bd332067e055f6b30571ca7534ae`  
		Last Modified: Wed, 28 Oct 2026 02:21:36 GMT  
		Size: 25.6 MB (25631085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3807fcb52ced060599928200bf3683ffee06ef8c781e0f98ca59102f36dbec00`  
		Last Modified: Wed, 28 Oct 2026 03:47:41 GMT  
		Size: 74.6 MB (74605378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a14049aa39639dacaed3cb1db3caea752959da722de41a37d9aa755f28121479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8310164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dacad3b0adb5f8dea1f27e7880085711d5369cf998207f49ead5f62909b5739a`

```dockerfile
```

-	Layers:
	-	`sha256:d8e664e9cd411f5547ff77dee95c72acf511aea3a21826dff6cfd9c70d045cdb`  
		Last Modified: Wed, 28 Oct 2026 03:47:39 GMT  
		Size: 8.3 MB (8302846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ef5d545916150d58febb6afd77e568dff069c94fb8f93b58f44d70a2dba615`  
		Last Modified: Wed, 28 Oct 2026 03:47:39 GMT  
		Size: 7.3 KB (7318 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:191e21d696065573d5f3ab39ec3a2cb16af28f80f8ef21fc1809fcd82269dcfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156809430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6c17928092c4a88bb0077e8e021a0257b26d42aeadfdecf6772388bb1dd2ef`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fb8b17c0bf04fb49bc9a301a09b2e58f4e152091dd403accfc343be9dd86ff27`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.9 MB (49866463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d97bf474429e52e6150d13d3b5e082a8df5e1ab3276ef938597c5478ad75e6b`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27387460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f31c402eef4e66431bb0f37d2f146833316e8b196fa8cc9faf3471893109c60`  
		Last Modified: Thu, 05 Nov 2026 08:29:36 GMT  
		Size: 79.6 MB (79555507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:59c4e1e34d48435d6f3da06884c20995c612435366825afd28539f3678e76d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8325995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bea149684dbb5632b5df5bbb6a3d8fd2b65b268d61f5a4a8c0e74700fdc079d`

```dockerfile
```

-	Layers:
	-	`sha256:98330d22028c6568c5210dfb86498954dec93f780922ada2f4e6da1205398ecb`  
		Last Modified: Thu, 05 Nov 2026 08:29:34 GMT  
		Size: 8.3 MB (8318662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:404141f3dafd62b542da156ccce7c235b62f5481687424132d1c576d8745ec7b`  
		Last Modified: Thu, 05 Nov 2026 08:29:33 GMT  
		Size: 7.3 KB (7333 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6d9aa14e5e932fdc60cd1061ebdbe47103d75cf49434439a00e84cdad1697c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164504608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2c718f4b3c8d4ff1f3f6c84b435829e56dee0e4401e1cac22cd80dfdd7f96e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:45e2758067de47b0fde63f406a2c1562b117e9e5101bf52b9171bee647043f8b`  
		Last Modified: Thu, 05 Nov 2026 06:16:28 GMT  
		Size: 51.8 MB (51788329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32022506408b6385b68a95a3d7ccc48745ae3095167986e3061e179ec815c332`  
		Last Modified: Thu, 05 Nov 2026 07:41:32 GMT  
		Size: 29.6 MB (29633135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbf3d94faa2719fcf4f0f05b909c6ae9229db895c4177874447113a2d92927`  
		Last Modified: Thu, 05 Nov 2026 08:24:50 GMT  
		Size: 83.1 MB (83083144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:bbf991195b98264639b6cb594713e42a9ae2ec38662d1396c969cc44e5172213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8311630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824a0c7e5d9dfd1fd20f8d31bc1b8f2de138c23c41fa4e6c457c681027040cfe`

```dockerfile
```

-	Layers:
	-	`sha256:749296d9ed8860bf9d08d836769db26a5b502d7b97e863ece352791fcb486c60`  
		Last Modified: Thu, 05 Nov 2026 08:24:48 GMT  
		Size: 8.3 MB (8304398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ada1e03f7cca034129d78e751d24ad02240c10abd1e90288f482d23fe9be88df`  
		Last Modified: Thu, 05 Nov 2026 08:24:47 GMT  
		Size: 7.2 KB (7232 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5414ff262848d50ef8b1a1d2bf6aead9956a1e22b1a7dc4175f181bb074bfc9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172237854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e17d68c5f2765a5a59687f4639aca7e4cbb6c3ef36707eb9bb18019375cfba`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'sid' '@1793059200'
# Wed, 28 Oct 2026 04:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:56:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8e851d2604e88e5c6735eb86dfbb8fcb0e9aeacbdb9899452d64a5249204f79a`  
		Last Modified: Wed, 28 Oct 2026 00:22:29 GMT  
		Size: 54.5 MB (54510378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718051fc13a59ccb94708b59f2848851167c5d68f0214c82f820a7624cbc1ec0`  
		Last Modified: Wed, 28 Oct 2026 04:20:10 GMT  
		Size: 30.5 MB (30517348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ade1c546c014cc82ef16fd52bfa9c7c5f1ccd4808bc920406bd89ab8b9b170`  
		Last Modified: Wed, 28 Oct 2026 11:57:27 GMT  
		Size: 87.2 MB (87210128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:709c775c76eda94931f0c0cd79d20588c55d4f16e7368298f3904eafbe4d20c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8317498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fb776b558511967cffd30e1c16c1eb11dbf57caa2ce436b2ca1f354fb79c05`

```dockerfile
```

-	Layers:
	-	`sha256:52cf107be1db06c90475b3bd217943aa8a80feb3f8d8cba3bce69b030f053575`  
		Last Modified: Wed, 28 Oct 2026 11:57:25 GMT  
		Size: 8.3 MB (8310212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af018e593a3b617c39556b0904db2fd7eaecf697099c654642c076e67186cc75`  
		Last Modified: Wed, 28 Oct 2026 11:57:24 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:922fd2dc5e021086b2005476c28c0dfb1733583c3029f520bb48d2c553884a64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.4 MB (153400907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c27b05d51252af26fc11c396ea2c939e32a1505f952f23afc7eb7a0d7763a9c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'sid' '@1793059200'
# Sun, 01 Nov 2026 11:18:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 07:37:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:87eacb97def82a2d6fda0c59baaa7e20f9b437d682e32d16d1da3f4c076fc672`  
		Last Modified: Wed, 28 Oct 2026 18:25:23 GMT  
		Size: 47.3 MB (47253173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccde0825030b10a0ef2507b430836b91c953ff3b552a30a5e10f46e110dd377`  
		Last Modified: Sun, 01 Nov 2026 11:19:57 GMT  
		Size: 27.5 MB (27501817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6072c8a0e4141a352bfddd48efd07f1a2fae1ae7a4aa758667e737755aecd4a`  
		Last Modified: Tue, 03 Nov 2026 07:41:22 GMT  
		Size: 78.6 MB (78645917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d95d8c742c0a95cb73642e7121abd9dc508969de4ba07c6128abaed4b3c96400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8299142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260fffdd2532932ed7e4115939d9b26f950f62e622a7b384d98ebfd702347246`

```dockerfile
```

-	Layers:
	-	`sha256:58049172afd3c0385af57b3287e206ffc23217713f55b63134fb5ea24f988181`  
		Last Modified: Tue, 03 Nov 2026 07:41:12 GMT  
		Size: 8.3 MB (8291856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68f523b7504f4b9d11aa40d1772d2d3f129b458b1a4e35111341c1aa9c464d53`  
		Last Modified: Tue, 03 Nov 2026 07:41:09 GMT  
		Size: 7.3 KB (7286 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:sid-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ea19d749888d7382fc60355cf1d74fd7c087e606eb070d1a2798e1b3d3b83810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158562461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e05bbd7eac3f3d8c127f5e90df9d331eedc27bec7de2de4759c622c672d1bb7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'sid' '@1793827419'
# Thu, 05 Nov 2026 07:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fab4dd3bb1bfe9c82bed80a75831816c076eda870f6bc87ec816275770723c7b`  
		Last Modified: Thu, 05 Nov 2026 06:14:57 GMT  
		Size: 49.7 MB (49744159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab1241173c07fe656a4c10a3409d581ee67ce12f0b7a5dc712ad0cacafaeefa`  
		Last Modified: Thu, 05 Nov 2026 07:57:26 GMT  
		Size: 27.8 MB (27762158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b44d3ac68e56433e1c289400be12fd06235936fe3fe25e51301695cf2e6387f`  
		Last Modified: Thu, 05 Nov 2026 08:49:15 GMT  
		Size: 81.1 MB (81056144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:sid-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3a884ab6cc64a47fb0e86f5e9758eee580792db8026813dfeba06c942c00415f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8316305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89c36038ecfd65d6525eee377af680a6c29bd2fc34a41c69abda0f878700d66`

```dockerfile
```

-	Layers:
	-	`sha256:b1e8196505a9d00a1547c861ea4801207cea87e821d2fe69b6ef404f12b32b04`  
		Last Modified: Thu, 05 Nov 2026 08:49:14 GMT  
		Size: 8.3 MB (8309051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f00ddd99bcf5da2eba29a32e75c25796d5ff176b854970d6cd522d73fd9cdf`  
		Last Modified: Thu, 05 Nov 2026 08:49:14 GMT  
		Size: 7.3 KB (7254 bytes)  
		MIME: application/vnd.in-toto+json
