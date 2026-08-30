## `buildpack-deps:trixie`

```console
$ docker pull buildpack-deps@sha256:afc188d37d9b071947e61f14f686cd84ff8fc5a2ead19b3b106a35bf493c0518
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `buildpack-deps:trixie` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5538d976c7bd14a8c1c610d6ee80db0b464b9ae6750af3ce67351678ec304a1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.1 MB (379116043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44464ffa6c4a9ec885d986e80ee0c5e61a9cdc7bc9517c4f9f23d55b13e7daa4`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2b3fb4ab3f40bddbd1429ada73f8545f94017c2064d83b4518436f85188332ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17215630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b19c4b189a81c6f3cab97e37c392b53c091ffbbbec6c78d789ed6bb5c4371a`

```dockerfile
```

-	Layers:
	-	`sha256:eb47240adb5d387519c4e2172897cbc27c2c3c84f2125b091f5ab8cc6de6ceb6`  
		Last Modified: Tue, 25 Aug 2026 02:19:44 GMT  
		Size: 17.2 MB (17205168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1464e9489020168cb42daba2a3f2fa9f71dd2818c7e9034c4e52087336e7b2f9`  
		Last Modified: Tue, 25 Aug 2026 02:19:43 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:40484ce8e8b2bb863d283813789b2c4c2b35f1488630f61aea4ed4b04f975ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.3 MB (343294993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eb8147839ee3f99b9f74e014054847e0da8a7da40a4de8e75a4f23a2cb6232d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:46:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:eb6dd3c63a4e348778a39eaaad39d8544405ca793fafad8492987c16b93bf6c4`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 47.5 MB (47513959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508c2e701cac19df9a11b9cf45817e44d4de1bb4cdcee87e5c2924142bedbe7a`  
		Last Modified: Tue, 25 Aug 2026 00:46:57 GMT  
		Size: 24.4 MB (24365366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac0abcf758e9af8b215879f173fb8085cba11467f0c1faadc6199455b7c6880`  
		Last Modified: Tue, 25 Aug 2026 02:17:44 GMT  
		Size: 65.3 MB (65349128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9605cf28c2e148e6923e75bc5e1cb3e70e67e58c79e6bacbc85c522bf068c690`  
		Last Modified: Tue, 25 Aug 2026 03:16:11 GMT  
		Size: 206.1 MB (206066540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ae39d06f799cf07a2fe1f5cfa7368432d04e74ffe9e24e1612202f2addce2422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16977900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036f82d071e16be5e1a3a21bd6e591e488905da5963d22f8891643fa0d6d78d5`

```dockerfile
```

-	Layers:
	-	`sha256:18f0a64e0b65a91194982f9b5a2f69b625369a4f439833bdb2f0162a75c87214`  
		Last Modified: Tue, 25 Aug 2026 03:16:07 GMT  
		Size: 17.0 MB (16967366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d81403a07ca55fb18e186e84c1626269c153e079cb295c807412ee7b4a42ee4a`  
		Last Modified: Tue, 25 Aug 2026 03:16:06 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c459bf7e62a16e3b121977aa6f01b80a784caf1db76bd76b84bb41589f6a5d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325772454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5efea93236e19b9321cc3c98b5e2d7b14ee5d3c7fe685ebb168e1a2ebfd82d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a9aa125d65ed8a10a77bf1f3e0c29bda8bdef53edd318b82e41e521b3653ac05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16983690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df93dc7a0e5094e466e0681c6480a946b6b3ac8864685983a0f8b61fbb7eabfc`

```dockerfile
```

-	Layers:
	-	`sha256:e56d1ee7f582bd80a6b3c393e8817afea2b6fbbd9b9a9e2094830650b3649b76`  
		Last Modified: Tue, 25 Aug 2026 03:16:16 GMT  
		Size: 17.0 MB (16973156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d14c44b5e0f59e4e259b2e07742260a6611e61e5e2a34a8e3689b2e713c0d92b`  
		Last Modified: Tue, 25 Aug 2026 03:16:15 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0e9140c9c9726c1f911bb3e7d3910284519d3aa85dc91b0316ef9c0d27c3b66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.8 MB (368809767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff372ab00e3e25f7bcdea8905e597297a3c0386fb5fe364342bccfaefb1e6d7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f1e5e922a06fd1a49b2d02a09936bc005938113f97e1f4f1959b87d982b95789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17299379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9744845c6de1a5ab1d2deb92e2442b60860bb8bd1a79bd4268ce4dabecef4e`

```dockerfile
```

-	Layers:
	-	`sha256:7b2055f4ac0582392161dce42972f6b46587e27c0e86d6dc751d56e7533bf8b4`  
		Last Modified: Tue, 25 Aug 2026 02:21:51 GMT  
		Size: 17.3 MB (17288825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75caa88530afc0b3d6e458e7f1fd949d828e77a09360a190c04ba5feb8901ed7`  
		Last Modified: Tue, 25 Aug 2026 02:21:50 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1ed137736cb33eacc14a5d6e0589a9cfcad2feab15b8f27cbf0951c35ff0270d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.9 MB (387947356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c11ae861755d390ba8886d5f0edefc64404c4ce40571b4f6e02ef8085dcf54b0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:7aff3bd86163a3362d416e825a2b394d647d729b5c04da008596f93c87e74be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17185206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7e5d459a341095ff382f09a958e43f32589d24c404f180ef4e04b04935c97e`

```dockerfile
```

-	Layers:
	-	`sha256:567b8a7ef81ef4304891e277e0c36afb0601a6838b7ef86500af449652da1d38`  
		Last Modified: Tue, 25 Aug 2026 02:17:54 GMT  
		Size: 17.2 MB (17174771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b05f42f147808da7d6419cb83fe52a9c1b4ebd9d057861877d5b0d3f4c999d0`  
		Last Modified: Tue, 25 Aug 2026 02:17:53 GMT  
		Size: 10.4 KB (10435 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d69e69c048e31767b1c3c39a4216ab2b6aa119d4118df002864eccae506ed251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384743598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5424951815713c68474c35a43a3e27bab7af8dc211eeed39fc2245b3b0ed11c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2775d6a3df7d6590884e8e053ccd6fad7608b8e957762a9167a14bbf2bea2d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17201197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b217c721be1dac6026766321f708e3d8db70fdd22f8626067ca7a46eea15f3`

```dockerfile
```

-	Layers:
	-	`sha256:b1baf18f1778e5e17be012ab6fc979e751b92f210373cef509a8a017bc1b5c5a`  
		Last Modified: Tue, 25 Aug 2026 12:42:41 GMT  
		Size: 17.2 MB (17190697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ee98fec52eef1a89e61779d62ea31f5d027f90d75b1e1101dff1ff39568be55`  
		Last Modified: Tue, 25 Aug 2026 12:42:40 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:b21960abced823be262eb30a94badd2a4ac36c32f8b671ddb12eaccc48c9c1ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.1 MB (466055435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f68402801be91dbee9e5b3aabe840af513b31a235bb4442ca0820003aeed998c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:99f39534839bcefd8ef33f08430dbcad31f35676477c34b184ae452ef6c66549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17271786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88228f01ed39bf01a9d2641b16a51b4664c880104e8ed2e49d31abc072f94e90`

```dockerfile
```

-	Layers:
	-	`sha256:ace2c949acce36126187bb763251f259fecb993275085a77ccbba3fc4a63a52a`  
		Last Modified: Sun, 30 Aug 2026 13:47:48 GMT  
		Size: 17.3 MB (17261286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05f63a381a9bd2a331d5a2790dc4a6fa4d1eea30140df52fd36f9ff8452fa86d`  
		Last Modified: Sun, 30 Aug 2026 13:47:43 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:trixie` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:02dbe191d6a77e87cf1b5741a004fd19101d5c8d49117d8a140fba59f4448f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.7 MB (351719400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d611b2f1bd5e5088a8374f620e705ac265a059530a62d5cf6d6abb51546b9da`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:trixie` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:798584e7519fcf295602dd55cfe0983660b111f08c7a127ed48bd71df3437622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16992863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3987d72e2683d21edac9e3836cb4cc7658b62c6d6fe1f1d45315bd5d0f6390a`

```dockerfile
```

-	Layers:
	-	`sha256:afc7e654330837998278cf01e15ffa0a8930b17032c00d06f9ebd88a85c11c95`  
		Last Modified: Tue, 25 Aug 2026 03:13:56 GMT  
		Size: 17.0 MB (16982401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97056c570a8ab4b04a95d67603966c4f0144f4ed26b383b76f1c43f747d5ec98`  
		Last Modified: Tue, 25 Aug 2026 03:13:56 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json
