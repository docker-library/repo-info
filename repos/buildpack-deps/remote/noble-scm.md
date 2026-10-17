## `buildpack-deps:noble-scm`

```console
$ docker pull buildpack-deps@sha256:eb8df607e9320578f1dcd163e74932cf45c88293bfa6af04940fdddaa8a7ff7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `buildpack-deps:noble-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:733b84d5bd0846e3a461fe6a39127443681c6ff34f152dfe7494130f30f45e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88757767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9ac5b169347f28ed0b7b389f0a658c50ff3eb7959f162a0fd8e8b44a096d34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:17:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a26ed5c50085191e934a3af3bdec8361492a36a904904f1355347415e919e8`  
		Last Modified: Sat, 17 Oct 2026 00:12:04 GMT  
		Size: 13.6 MB (13589340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad770b932858945b5344ca54e3985a035e71c88dcae9532799973669f4d7d90`  
		Last Modified: Sat, 17 Oct 2026 01:18:02 GMT  
		Size: 45.4 MB (45402669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:706cafc32598a623a2c62b79e71789a9ed9cf13ae50d7348bbd69bd910f1919d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b546ef0ef199e6cad466101b47c0ae8be7d31c408ebc860a8f05193fc56a7f7f`

```dockerfile
```

-	Layers:
	-	`sha256:e68e27a8ec9dce02f8917b821551910234a00cd39bb0e69a7d5ff3cf65723fdf`  
		Last Modified: Sat, 17 Oct 2026 01:18:01 GMT  
		Size: 5.3 MB (5258460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6f585e0b20de176fd3046470622bd765740af9a21bcc738d7dc6d14df3ae9eb`  
		Last Modified: Sat, 17 Oct 2026 01:18:01 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1f29678f0380607f221f506df320a53295a91a44c0087923802b4cfdbc69f319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88586233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33728afbe84a1638074dba1690ba1a13740b851e20d837ca9de28b2343340b6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:24 GMT
ADD file:23a54ed1daab980a150295ab5c21e769c0a6ede1385ebb69249df9e6461c3a52 in / 
# Fri, 02 Oct 2026 08:03:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cfda03319c73b24fb02c0806fdf981abb07b3d5025d2e7c9710f93347cee3d4d`  
		Last Modified: Fri, 02 Oct 2026 08:36:29 GMT  
		Size: 26.9 MB (26896728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d0f1fa2016ba4f86515095f960794ed4ea33b7f4c8821ca919e56bffc3afc4`  
		Last Modified: Sat, 17 Oct 2026 00:12:28 GMT  
		Size: 12.7 MB (12744105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295c7ee872fc4ffd73e4338a0778eb662618cdf7ed7cf2e23ee28588593babd6`  
		Last Modified: Sat, 17 Oct 2026 01:18:11 GMT  
		Size: 48.9 MB (48945400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4908da0eb19bffd0d7841993ccf0867563800783c9a8c63f875ccbe0d648351e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aca7a699595b7f360513ef3f7ba7cbe82b5cb6dcf243580737b27a8dc30715c`

```dockerfile
```

-	Layers:
	-	`sha256:03e08686b10f255ee59fb7c04d1ee754cadb6b97d22b22309addc1c4c96e3d70`  
		Last Modified: Sat, 17 Oct 2026 01:18:10 GMT  
		Size: 5.3 MB (5259758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:295fcf7d426acd34d654885e7b7621e671c05f5c0321dbbad9b73561d12b2e44`  
		Last Modified: Sat, 17 Oct 2026 01:18:10 GMT  
		Size: 7.3 KB (7326 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:386d2f2a5eeb4a6f62837fcf27e012b1c34a75cd15918851110781a153e15dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87728141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d197902b7ccd0b93b480edd0be25664f015ccc298565a7e58039a7a7f1c6c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:17:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb9e33f85c1fdd1f02fad18caf003f89f5011ad69e295a5250ea23ca4e22f4d`  
		Last Modified: Sat, 17 Oct 2026 00:12:08 GMT  
		Size: 13.4 MB (13432877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9cde910eed2961f4eabf803f715a1a1ad7248873f59832d22ac49c8ce43e4d`  
		Last Modified: Sat, 17 Oct 2026 01:17:47 GMT  
		Size: 45.4 MB (45355503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fefc3938219e5ecf99e5b5368cb0a9398cf22b660ce02d07fa1cd50f04cfc93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5272994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b729e405e4d11ae211ad8bf1acb2196ecad181b52f9665c50990712792e1d1a3`

```dockerfile
```

-	Layers:
	-	`sha256:662e4302f4acf15d27e1c755c35d8875aa800df5835cc63be835ca7dea212815`  
		Last Modified: Sat, 17 Oct 2026 01:17:46 GMT  
		Size: 5.3 MB (5265652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05f5048e02345c087ea85fd7370fdab66fbaad48fc30f7996284a25a7906a19`  
		Last Modified: Sat, 17 Oct 2026 01:17:46 GMT  
		Size: 7.3 KB (7342 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:20fec34099ac330c4d5eb08c807e0eb7a1101a562d820a99bf19150726431164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100717357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359165dacf879cd677085056d076d06dcfa8f081698fd411e1827a775686f495`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:13:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 03:00:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc6fe5f42708d68a91c8079a369eda83842f43ebf55ad50a52d811f8865b040`  
		Last Modified: Sat, 17 Oct 2026 00:14:03 GMT  
		Size: 15.9 MB (15916863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41422e8c0156bc81acb1ceebc01ae7d70175202b901f326371b63a840d4acf5f`  
		Last Modified: Sat, 17 Oct 2026 03:01:42 GMT  
		Size: 50.4 MB (50422504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:8ca87c8215406a0f2346c7c5a092d59e1cc05c24d6a74c7f437a06a6f43c05e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e5a5cc37c800ff7ed3c04bda1406ce78cbed07c10a3c9d711c027f1819e7fa`

```dockerfile
```

-	Layers:
	-	`sha256:201251a2a6ed8b4dfa1cc988bf23592a8c26170412e5edaad769a16c0152afa7`  
		Last Modified: Sat, 17 Oct 2026 03:01:41 GMT  
		Size: 5.3 MB (5266314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ed10e4d06c8134151437f18462c19ab77c1a750f5e88794d592a6ad4026da69`  
		Last Modified: Sat, 17 Oct 2026 03:01:41 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:ead51704bbac36ce58faa5b43e76793711f2d6541a7cda30345d8260d6721d55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101335433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809cbcce0e4650b197dd731a4ae8ac1fa95bc1571352750d6d3dde74ab332de7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 18 Sep 2026 22:20:53 GMT
ARG RELEASE
# Fri, 18 Sep 2026 22:20:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 22:20:54 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 22:21:41 GMT
ADD file:3a1916ce71708268db17b5ce7c5482fc86a6dce4c032062460878125231681f1 in / 
# Fri, 18 Sep 2026 22:21:45 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:41:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 05 Oct 2026 03:45:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f744af9afcd9f5fe3c98a1581df8785f8f3920cb60a4a7ba86497465ccf35413`  
		Last Modified: Fri, 18 Sep 2026 22:30:18 GMT  
		Size: 31.0 MB (31049980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb35850526da01bc65f0adc2581a6148eb028798013159608be0e37deca406e2`  
		Last Modified: Sun, 04 Oct 2026 20:42:52 GMT  
		Size: 16.5 MB (16461874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c699a4c372e48a779b5165a2a4e053625ba3845d63b748dfe435490a75baa32`  
		Last Modified: Mon, 05 Oct 2026 03:48:23 GMT  
		Size: 53.8 MB (53823579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0be12ff4c95da461bb282df18d95d6289006c1c00f8b71e3b5f66d4904b958ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5256144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725a735dfbc75afbde65f3892b88005d8bb8677a2a28db578fe55a8ee970a4a9`

```dockerfile
```

-	Layers:
	-	`sha256:afd144384d4d3b2e202f557995b5d1f595ea4b0683a32bf44839104218ad778f`  
		Last Modified: Mon, 05 Oct 2026 03:48:15 GMT  
		Size: 5.2 MB (5248850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbf79dc11e59cd238a2787837cd7f8f81d88b0f61ed5ae1fc340bcab159dc60`  
		Last Modified: Mon, 05 Oct 2026 03:48:14 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:noble-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5eb115efc1741995399883ab9938ca3500749d9ae6e93c453e92311f0e31c964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91683638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081295e0d024ec486497c515164c294f24c5fc157e47765b30cfe30e9ce16f18`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:03 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:04 GMT
ADD file:82fcbc85b577996d551267407ad62089cd19d90c5b58692649763a56286be003 in / 
# Fri, 02 Oct 2026 08:10:04 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:10:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 17 Oct 2026 01:16:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:065d1f6c380ca54736c8a4f70bc4b730e9eb82685c699b9c66d38d0136763b43`  
		Last Modified: Fri, 02 Oct 2026 08:36:52 GMT  
		Size: 29.9 MB (29946330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63e029cfbb1ee87331e06a2eaa3f9948b9e8e0c748dcc55d790f86160270b3a`  
		Last Modified: Sat, 17 Oct 2026 00:11:06 GMT  
		Size: 14.9 MB (14897686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c26f2cad875822cd6aa13d2c6d960d77712fb7952580b28e02c5ebc915aba37`  
		Last Modified: Sat, 17 Oct 2026 01:17:21 GMT  
		Size: 46.8 MB (46839622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:noble-scm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fd9f42aedfd0788f7ea7cfdc4aab524a4981fd481130176efacb53b52b497c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975ce8e88196f5202fd562dcddca20529b9a06215b436331fb99c5bdcde708a4`

```dockerfile
```

-	Layers:
	-	`sha256:1027d5727cf4df0585c1915aa00a6b5f305f6207bcbe25a216e09622afcf8371`  
		Last Modified: Sat, 17 Oct 2026 01:17:20 GMT  
		Size: 5.3 MB (5260792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8715078ef7e0ca0a68c84b23bfbe19da463c7b31caae1be05e77550b94588520`  
		Last Modified: Sat, 17 Oct 2026 01:17:19 GMT  
		Size: 7.3 KB (7262 bytes)  
		MIME: application/vnd.in-toto+json
