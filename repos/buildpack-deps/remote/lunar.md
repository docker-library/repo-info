## `buildpack-deps:lunar`

```console
$ docker pull buildpack-deps@sha256:b61a84adf7eef076c53dd495b536f5542bf980684586d13ba75cf42b1d78df47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `buildpack-deps:lunar` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:13fb0fb74fe5c38dc5e85ee7aee7a63fc8400696ecf2db160c3205f9568d28f3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260943780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2251e5cb5bc55ffb0bf69c7ae7d4c2907238bb687962192623058cb609add440`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:49:08 GMT
ADD file:454acefef6c46f4d8ea05f6cafa0de83698e9def83069c3dceab15df524ccb8e in / 
# Mon, 02 Jan 2023 18:49:08 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:14:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:14:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:14:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:16:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2627e5235478b0c8c569e6c5ff9e9e4e61fe03be2808f2324531fc5e73496661`  
		Last Modified: Mon, 02 Jan 2023 18:49:58 GMT  
		Size: 27.5 MB (27527968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf51d4062cf6a2b56ccc0a9ce0f01dbf0782460e2ed098412a0b941df503b27d`  
		Last Modified: Mon, 02 Jan 2023 19:18:54 GMT  
		Size: 6.8 MB (6777375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8156315225fcdde6e5cab74299b117df71db465d65e888528abbdffecd29ba7`  
		Last Modified: Mon, 02 Jan 2023 19:18:54 GMT  
		Size: 3.9 MB (3897739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e021d078b2a5e182026e7c26ebb4e685f66fd55cb41d147771621bdd60f0481`  
		Last Modified: Mon, 02 Jan 2023 19:19:09 GMT  
		Size: 40.2 MB (40206741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c885c8229383b62599c3cc89777ec0d18380af63c8e03d1b95cc082971472d2`  
		Last Modified: Mon, 02 Jan 2023 19:19:43 GMT  
		Size: 182.5 MB (182533957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:b4cf3f135ab78b432b4b676945f5e8377d962291cfee6a6228eed8b73f3cb47c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223890015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1f729b0814c45b5c8bd2860992b5375c2fe0c73ab5a3837bd1f405379bad80`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:50 GMT
ADD file:d5b7f8b874ee985d200663cd6bd4fe0dc5622c54f883004e0b84f92a74543601 in / 
# Mon, 02 Jan 2023 18:58:50 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:30:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:31:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:32:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:35:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9538a59414233f23f1325d2dbad0378997afd754348ad4f3e9ebbdb32bc48f9d`  
		Last Modified: Mon, 02 Jan 2023 19:00:37 GMT  
		Size: 26.0 MB (26044672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882c9bba555f96623eaf6d22b60dcbfe1410411923184b87f97cb487b614f675`  
		Last Modified: Mon, 02 Jan 2023 19:40:35 GMT  
		Size: 5.9 MB (5946529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d938a9b51795ad657ae70aa18a75ca9e73f598b071171702ce98e51467776a1`  
		Last Modified: Mon, 02 Jan 2023 19:40:35 GMT  
		Size: 4.1 MB (4059769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b84022dfe649995ccf26883b72ebdff59223400997340def3747777fe54e13`  
		Last Modified: Mon, 02 Jan 2023 19:40:54 GMT  
		Size: 43.1 MB (43061809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9143c6f1af3caf6cd230e24e6df31e901a564cf49a574e34430b54c124c982c0`  
		Last Modified: Mon, 02 Jan 2023 19:41:28 GMT  
		Size: 144.8 MB (144777236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:a72a6e6a5d98c7c85a9815fd6208a00b4650a2f3afaa98f070c6b7605bcddd1a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.0 MB (249022838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7c667d63c631da5f87552bcceab5d9fb9122faf4c0b2019a63f64238037beb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:30 GMT
ADD file:87f1515364340e1c65eb76041a8285f4f511485c46275949dfcff1961d556236 in / 
# Mon, 02 Jan 2023 18:26:31 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:51:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:51:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 18:52:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:56:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:03a7a9a433574ecc00c891140ebadd82c8592d8f29b7d5808b6bb9a0234684b5`  
		Last Modified: Mon, 02 Jan 2023 18:27:21 GMT  
		Size: 26.9 MB (26855540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e6d0788fd51c380a42af1846c598400304ca8803209292d56b2a8630aa89d4`  
		Last Modified: Mon, 02 Jan 2023 18:58:28 GMT  
		Size: 6.6 MB (6607822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bccdee025930916817db2cefd4732712b388478bb27ef225f2967af645d3754`  
		Last Modified: Mon, 02 Jan 2023 18:58:28 GMT  
		Size: 3.9 MB (3857692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd231be0b6fcf816a7cf5925909097faa87172e6b776e9c3f5ab19f1aae8753`  
		Last Modified: Mon, 02 Jan 2023 18:58:41 GMT  
		Size: 40.0 MB (40006634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759503e09dfa83c5624312eb4e0c1172e8caf3f19f5fb21124c7b4ed695124aa`  
		Last Modified: Mon, 02 Jan 2023 18:59:09 GMT  
		Size: 171.7 MB (171695150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5c960ea662e8565153fe917a170bbb03e09c3481c2d4e1d3c2510b86a01f1593
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283666379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6358852d5a3e62a453104ed00b5fb84645dafc47d84dd231f81a40205310e05`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:43 GMT
ADD file:ea9743ea4cbf9deea0e3f8207b93c49151ad75ab037c042a1a4e0ef4f00c4779 in / 
# Mon, 02 Jan 2023 19:01:44 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:55:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:55:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:58:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2f3462978627dacc0661848613bd622e57c1cfabc7c39dc5dacfd0053442bfd6`  
		Last Modified: Mon, 02 Jan 2023 19:03:25 GMT  
		Size: 32.1 MB (32137445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6e44601bc4bc41dd579ecfeb81554aa4c496d9995162e800f118496cd435d4`  
		Last Modified: Mon, 02 Jan 2023 20:03:15 GMT  
		Size: 7.8 MB (7753458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab9cdcb52034e44785fe194336aed75e35a7cc54548741d37f65772a24a2980`  
		Last Modified: Mon, 02 Jan 2023 20:03:14 GMT  
		Size: 4.6 MB (4616681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5436ed3eb78aa18c69aaea5cf78ffc67c5435e1dabb4f41fdd6d978dd6bffcc7`  
		Last Modified: Mon, 02 Jan 2023 20:03:38 GMT  
		Size: 44.7 MB (44694746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b327578c46bd59e1f7cabd9ccf724f525201757f4641afab429b53fedffd8`  
		Last Modified: Mon, 02 Jan 2023 20:04:36 GMT  
		Size: 194.5 MB (194464049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:6c3b21c39d4e6f2ec7e105c78917502bbd1a6b040ab584cf88c164618f5032f8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282244697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89cbd4a5ed48c90e27d22de89f7c2566577b9dd3627540dd7a1b309e344b5d6f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:09:01 GMT
ADD file:512505c2df26db88aeeb5025ff073a2d8e98d995422df61a5cad94d79ef22a42 in / 
# Mon, 02 Jan 2023 18:09:02 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:29:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:30:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 18:32:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:37:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ada5e428c090bd736690979612e7bece7c31ff1f1701ca35de4d1899e835e69a`  
		Last Modified: Mon, 02 Jan 2023 18:09:56 GMT  
		Size: 25.7 MB (25669058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e756f227648e5a559b1f2387229c92d1fd4b83589d63631f0d177d76e2c6e34`  
		Last Modified: Mon, 02 Jan 2023 18:38:32 GMT  
		Size: 5.9 MB (5925890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb3fe222b3eac428f3f8b9fff7621e4aa631ace7d402b5590058b150e5b19b2`  
		Last Modified: Mon, 02 Jan 2023 18:38:28 GMT  
		Size: 4.1 MB (4141220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c4e43f4e9b3918249951c171418c34a155f22ed75ce4f308406d3e0f1de10e`  
		Last Modified: Mon, 02 Jan 2023 18:39:36 GMT  
		Size: 43.3 MB (43340643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15defd6491858a0dca14046882b6bbef04e328afb4cfc055b5e35a2642fe9d81`  
		Last Modified: Mon, 02 Jan 2023 18:44:48 GMT  
		Size: 203.2 MB (203167886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:lunar` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:ebd1cc760490892047837a32c3629634bc5c2df7d5f42a3215455d117fe2d64d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.6 MB (230620106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:366d74473b26a57b56354be3b21853c845d27debc11175265ffe9245112eb448`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:44:10 GMT
ADD file:00e905457e813e8aae003e51281910821c1d21806ac2f91869f665b31dc42d25 in / 
# Mon, 02 Jan 2023 18:44:13 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:10:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:10:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jan 2023 19:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:15:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:45f3c7fc242d16c16595c5060c9b387bf176629597ffecfa997c8eb4491aa9cf`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 26.1 MB (26058061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e963abce5c8bf811bc4f78cbda07a8ccdd8da80ea8c1d8a858534d936f5a075`  
		Last Modified: Mon, 02 Jan 2023 19:19:57 GMT  
		Size: 6.5 MB (6460161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2a5da7c47e0f0e5374338816d746962335eda7c521571820150dc251d86c2c`  
		Last Modified: Mon, 02 Jan 2023 19:19:57 GMT  
		Size: 3.9 MB (3882551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcab5d27ae3ec1e901d4367f7f55dd541fd103b892e942bd7988bb67ad111763`  
		Last Modified: Mon, 02 Jan 2023 19:20:11 GMT  
		Size: 40.0 MB (40016312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc771ac0b4ab3577d94a57d4749bb96eba8004e9e5671c8fdfb2f2ede42884e`  
		Last Modified: Mon, 02 Jan 2023 19:20:37 GMT  
		Size: 154.2 MB (154203021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
