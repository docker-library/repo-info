## `buildpack-deps:jammy-curl`

```console
$ docker pull buildpack-deps@sha256:5f5c35b4539db7ed55ef3e9ac9ee963f3b37f51459396860e558b9940bd53aad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `buildpack-deps:jammy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c589046b5778f4830a5e0353e43def1d319691376ca043aa5ce3c488a1fc0009
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37777756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdfafb72aa92c775391f8e6366afb10eaf8f3a35ce7316c64c4c2f0c6ee4e2d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:59:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c825b7c3eae2da575dfc0111b7abc127cac7fcabaad79f8ca7857c9ad282bda`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.8 MB (3787753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a67ff2d29bee7f9b37c848edd6de7d644c3af0844afa2acaa3f8a4964957db`  
		Last Modified: Fri, 09 Dec 2022 04:09:36 GMT  
		Size: 3.6 MB (3561295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jammy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d4fce1aab3eb2f9342998a026a0b332233be823bf5827b82fe99dce06622e192
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34277638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86d9dd4bdee2fe3f974852dc4bafcd8a95f2b32aef722285f12b289e59c80586`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:30 GMT
ADD file:ca82b3c78a23b75345429f192c4b1f88b4e49e12808c85fccc2db04823c17d4e in / 
# Fri, 09 Dec 2022 01:36:30 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:40:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:c38006c9acc492149d706593acba951110798e57a7ad05103ae7a2d5969c14b6`  
		Last Modified: Thu, 08 Dec 2022 18:49:27 GMT  
		Size: 27.0 MB (27023448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c10a3af68d572cfa46f93f18e1ae45b9c14001d8952baabe00b16c96c50f24c`  
		Last Modified: Fri, 09 Dec 2022 02:56:00 GMT  
		Size: 3.5 MB (3539781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5290b39d085bf3b29b6133644151ccf0819d73e5f13e6d6da4f60f71a03b663f`  
		Last Modified: Fri, 09 Dec 2022 02:55:59 GMT  
		Size: 3.7 MB (3714409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jammy-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:223c3a48f3df6a1710257402d04554bc61a7e0e687f56f8f2ca72163ce4ff40e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35682475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73270dafb28d0d95d41ee08734db8ff69cf748b35815a222b7cfaf3b31aa60d6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 04:31:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 04:31:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736070d442832c424ec277741fa07348bb6d393fc18cd0035a007f239b2052f6`  
		Last Modified: Fri, 09 Dec 2022 04:42:26 GMT  
		Size: 3.8 MB (3760792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ccf4e81d4bcba80b626706c512629e42393763d6c73b8b17ea547eb4c854af`  
		Last Modified: Fri, 09 Dec 2022 04:42:25 GMT  
		Size: 3.5 MB (3537208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jammy-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:71b20a6b5bab840c6cbb6e495ed7874158e96e28ef573edb39006c1c5198067d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44203796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dc6fe5cbae2d53707264deaadb779fca8a146c2d53d80ee9f5233ad4b641c6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:53 GMT
ADD file:1a2557b357a1dca8521ee846ec16c9b2bd8a53839b9d4fda21a28f9ceeecb4b7 in / 
# Fri, 09 Dec 2022 01:27:55 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:33:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:34:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:ce75b47e476cd75b30dca46558ac79b39923aa94d7e4b0cc025e521404cdbab0`  
		Last Modified: Fri, 09 Dec 2022 01:30:32 GMT  
		Size: 35.7 MB (35708154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b75e9fc93855a94829495b0d895e1c0aaf499888fd8baedfdd787ff06269c8`  
		Last Modified: Fri, 09 Dec 2022 03:53:17 GMT  
		Size: 4.3 MB (4261133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc56e569786e37c15efb4b7fe9087c13d856c12cce54efeba7a37d416759aa7`  
		Last Modified: Fri, 09 Dec 2022 03:53:17 GMT  
		Size: 4.2 MB (4234509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jammy-curl` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:d3093ff092954e3a16d01f961f2e1600db90768efd20689f52ad08cbd2502d36
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35110971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac65ca13f259310812ea150a369fafa9da1cd6a5e2cf73cf744310f97e4ab12`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:12:29 GMT
ADD file:f46f460af5409f8fff839ed52d7332dff314cffbb59ee3f40e898ecb6bfa21f9 in / 
# Fri, 09 Dec 2022 01:12:30 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:13:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 02:13:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7548465e3aa5fee0518ca5aefe07a54411b419ec670a320e18c9b8892b0afc0f`  
		Last Modified: Fri, 09 Dec 2022 01:34:47 GMT  
		Size: 27.7 MB (27749556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8927aeeaaa8d5ffc5dab8012c7f15a3a566366abe9b6fbdfc891f78b44fb79`  
		Last Modified: Fri, 09 Dec 2022 02:54:56 GMT  
		Size: 3.6 MB (3582497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de721ca155ae5d45bbcf76f0384fdd2f108d0399f00fd1f25fdc7b8a1b2c826`  
		Last Modified: Fri, 09 Dec 2022 02:54:55 GMT  
		Size: 3.8 MB (3778918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:jammy-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:0e79e6440015ad3f11ac5fd2ed90caccada9c6d1878351764016a5fa05d9041c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35907270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b845c94f0d14afcbc69407af14e71ad52268c7c8eb4cc88d7fcda036d7743a61`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:57 GMT
ADD file:aa22431536efed6cf05ad353979a4d4d5557c975e4333985e7b89b125f013ade in / 
# Fri, 09 Dec 2022 01:53:00 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:43:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2022 03:43:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5125256a405e8f68b6edcff30c8e2e9761127daf8628a48134c73f8f45ce631f`  
		Last Modified: Fri, 09 Dec 2022 01:55:10 GMT  
		Size: 28.6 MB (28642146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1a96a3774451f0f12a316dcbe03c64ff38a0e355d39a156d453ca9d8cb6728`  
		Last Modified: Fri, 09 Dec 2022 03:55:45 GMT  
		Size: 3.8 MB (3792255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989b2288ea7b925350b87cdf1ee27a860a3a9edfde695ca4f038b9dd819d91e`  
		Last Modified: Fri, 09 Dec 2022 03:55:45 GMT  
		Size: 3.5 MB (3472869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
