## `haxe:latest`

```console
$ docker pull haxe@sha256:fe371a94c49d878cb6f44f4e84de9d1f4c289f72bb8e1581dcbb82ff41c89052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `haxe:latest` - linux; amd64

```console
$ docker pull haxe@sha256:c1b9ec7774caa0274754e4ca1dfd4558a510699fe077d5ea07c62c75454131aa
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140007511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9364ada3d073c11468d14a4f3354315b1c7ade8f493228f0c91a319c91c5f9b3`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:29 GMT
ADD file:917750a82b29f8f7f88a121017bd9dfeb0fbcc8f0697a009f08b6b58246eff4b in / 
# Wed, 11 Jan 2023 02:34:30 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:04:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:04:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:55:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 17:55:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre3 		libmariadb3 		libsqlite3-0 		libmbedcrypto3 		libmbedtls12 		libmbedx509-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:55:31 GMT
ENV NEKO_VERSION=2.3.0
# Wed, 11 Jan 2023 17:56:59 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-3-0/neko-2.3.0.tar.gz" 	&& echo "850e7e317bdaf24ed652efeff89c1cb21380ca19f20e68a296c84f6bad4ee995 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 11 Jan 2023 17:56:59 GMT
ENV HAXE_VERSION=4.2.5
# Wed, 11 Jan 2023 17:56:59 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Wed, 11 Jan 2023 17:59:49 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml-nox 		ocaml-native-compilers 		camlp4 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 		libmbedtls-dev 		libxml-light-ocaml-dev 				opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 			' 	&& git clone --recursive --depth 1 --branch 4.2.5 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 			&& opam init --disable-sandboxing 	&& eval `opam env` 		&& ( [ -f /usr/src/haxe/opam ] && opam install /usr/src/haxe --deps-only --yes || make opam_install ) 		&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 			&& eval `opam env --revert` 	&& rm -rf ~/.opam 		&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 11 Jan 2023 17:59:49 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:bbeef03cda1f5d6c9e20c310c1c91382a6b0a1a2501c3436b28152f13896f082`  
		Last Modified: Wed, 11 Jan 2023 02:38:42 GMT  
		Size: 55.0 MB (55025206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f049f75f014ee8fec2d4728b203c9cbee0502ce142aec030f874aa28359e25f1`  
		Last Modified: Wed, 11 Jan 2023 03:12:03 GMT  
		Size: 5.2 MB (5163370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56261d0e6b05ece42650b14830960db5b42a9f23479d868256f91d96869ac0c2`  
		Last Modified: Wed, 11 Jan 2023 03:12:04 GMT  
		Size: 10.9 MB (10876737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd150679dbdb02d9d4df4457d54211d6ee719ca7bc77747a7be4cd99ae03988`  
		Last Modified: Wed, 11 Jan 2023 03:12:22 GMT  
		Size: 54.6 MB (54583611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d4fe3e52c01b9ecb42f3bf03d89a4b89cc87417472cc2f12eb6af892b45616`  
		Last Modified: Wed, 11 Jan 2023 18:24:41 GMT  
		Size: 1.4 MB (1369734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6ccb208ba51b5ff2a3651446e20ca7faee77b0d2f968e3910575efb831f2d3`  
		Last Modified: Wed, 11 Jan 2023 18:24:41 GMT  
		Size: 1.4 MB (1447345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b69386b7a2141cc75c76150e5e9073cc9d3ac59744ac1308d7d290955d70c91`  
		Last Modified: Wed, 11 Jan 2023 18:24:43 GMT  
		Size: 11.5 MB (11541508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - linux; arm variant v7

```console
$ docker pull haxe@sha256:8792d8b929fe9d349bd8034e152300f507831daf096dcdec68762fd366411390
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129462569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538ced79de80f17072ff4de0c27ca1e4799a9c53c7413176009b62f783e31838`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 11 Jan 2023 04:00:17 GMT
ADD file:48f6407691a382c3ad731f05f78d4210efd40f1a00abfd6c043d8401c6ca1811 in / 
# Wed, 11 Jan 2023 04:00:18 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 04:33:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 04:33:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 04:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 21:07:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 21:07:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre3 		libmariadb3 		libsqlite3-0 		libmbedcrypto3 		libmbedtls12 		libmbedx509-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 21:07:14 GMT
ENV NEKO_VERSION=2.3.0
# Wed, 11 Jan 2023 21:08:27 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-3-0/neko-2.3.0.tar.gz" 	&& echo "850e7e317bdaf24ed652efeff89c1cb21380ca19f20e68a296c84f6bad4ee995 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 11 Jan 2023 21:08:27 GMT
ENV HAXE_VERSION=4.2.5
# Wed, 11 Jan 2023 21:08:27 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Wed, 11 Jan 2023 21:12:11 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml-nox 		ocaml-native-compilers 		camlp4 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 		libmbedtls-dev 		libxml-light-ocaml-dev 				opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 			' 	&& git clone --recursive --depth 1 --branch 4.2.5 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 			&& opam init --disable-sandboxing 	&& eval `opam env` 		&& ( [ -f /usr/src/haxe/opam ] && opam install /usr/src/haxe --deps-only --yes || make opam_install ) 		&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 			&& eval `opam env --revert` 	&& rm -rf ~/.opam 		&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 11 Jan 2023 21:12:12 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:d705c97ea3a2300e9dda9a18ff662a98c2811b41147a15d4f4791f475ce8be47`  
		Last Modified: Wed, 11 Jan 2023 04:07:17 GMT  
		Size: 50.2 MB (50190808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40c8c22d251f4b5db1459714e722a41f58f37155eb88da1b4155fd032f90153`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 4.9 MB (4931090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97570844854b4122edbc4c60110b4f0690133f761a66c1d6b732b80d4e1b26be`  
		Last Modified: Wed, 11 Jan 2023 04:43:56 GMT  
		Size: 10.2 MB (10217786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a51a81f69b9de7a348ea8adb056e02781fc7587fffc6c2ca9d30983b6fa866`  
		Last Modified: Wed, 11 Jan 2023 04:44:20 GMT  
		Size: 50.3 MB (50343979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5dc26aeb0a59fdb86e4cbdc44f4457596e0652f5af03c6ac54551ae4e06b72d`  
		Last Modified: Wed, 11 Jan 2023 21:40:33 GMT  
		Size: 1.3 MB (1282710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1750a68863beef43932c02f638b64c418b9dee5776115adec080758b4e9e69`  
		Last Modified: Wed, 11 Jan 2023 21:40:33 GMT  
		Size: 1.4 MB (1386874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa286f299a88f2459271d725266ba2c6d6aa46d8df82855d60839677638c845d`  
		Last Modified: Wed, 11 Jan 2023 21:40:35 GMT  
		Size: 11.1 MB (11109322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - linux; arm64 variant v8

```console
$ docker pull haxe@sha256:c478fef80441eba174f7bc88e7941bd8586f5f9898994a5a62dd6d855fe06790
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140370499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da243bd89bc573ded744096c7c2bd1805a128c702ba9f236ada814ca29015b6`
-	Default Command: `["haxe"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:24 GMT
ADD file:9e185c2d9ca8a231a39ee2b1761fcdff75065252d25a65a207acb7a319c1cf23 in / 
# Wed, 11 Jan 2023 02:57:25 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 03:24:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 03:24:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Jan 2023 03:24:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:39:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 17:39:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libgc1 		zlib1g 		libpcre3 		libmariadb3 		libsqlite3-0 		libmbedcrypto3 		libmbedtls12 		libmbedx509-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 17:39:33 GMT
ENV NEKO_VERSION=2.3.0
# Wed, 11 Jan 2023 17:40:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		make 		cmake 		libgc-dev 		libssl-dev 		libpcre3-dev 		zlib1g-dev 		apache2-dev 		libmariadb-client-lgpl-dev-compat 		libsqlite3-dev 		libmbedtls-dev 		libgtk2.0-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O neko.tar.gz "https://github.com/HaxeFoundation/neko/archive/v2-3-0/neko-2.3.0.tar.gz" 	&& echo "850e7e317bdaf24ed652efeff89c1cb21380ca19f20e68a296c84f6bad4ee995 *neko.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/neko 	&& tar -xC /usr/src/neko --strip-components=1 -f neko.tar.gz 	&& rm neko.tar.gz 	&& cd /usr/src/neko 	&& cmake -DRELOCATABLE=OFF . 	&& make 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/neko ~/.cache
# Wed, 11 Jan 2023 17:40:47 GMT
ENV HAXE_VERSION=4.2.5
# Wed, 11 Jan 2023 17:40:47 GMT
ENV HAXE_STD_PATH=/usr/local/share/haxe/std
# Wed, 11 Jan 2023 17:42:58 GMT
RUN set -ex 	&& buildDeps=' 		make 		ocaml-nox 		ocaml-native-compilers 		camlp4 		ocaml-findlib 		zlib1g-dev 		libpcre3-dev 		libmbedtls-dev 		libxml-light-ocaml-dev 				opam 		mccs 		m4 		unzip 		pkg-config 		libstring-shellquote-perl 		libipc-system-simple-perl 			' 	&& git clone --recursive --depth 1 --branch 4.2.5 "https://github.com/HaxeFoundation/haxe.git" /usr/src/haxe 	&& cd /usr/src/haxe 	&& mkdir -p $HAXE_STD_PATH 	&& cp -r std/* $HAXE_STD_PATH 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 			&& opam init --disable-sandboxing 	&& eval `opam env` 		&& ( [ -f /usr/src/haxe/opam ] && opam install /usr/src/haxe --deps-only --yes || make opam_install ) 		&& make all tools 	&& mkdir -p /usr/local/bin 	&& cp haxe haxelib /usr/local/bin 	&& mkdir -p /haxelib 	&& cd / && haxelib setup /haxelib 			&& eval `opam env --revert` 	&& rm -rf ~/.opam 		&& rm -rf /var/lib/apt/lists/* 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/haxe ~/.cache
# Wed, 11 Jan 2023 17:42:59 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:c345c9e441f5f49235768af74b8ab37743652d38958afaa000edd56d7b2f0540`  
		Last Modified: Wed, 11 Jan 2023 03:00:56 GMT  
		Size: 53.7 MB (53681859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b716680367d1dac0e54c48f75506323e0bb03628542a0fd6db39efeeee9adf5`  
		Last Modified: Wed, 11 Jan 2023 03:31:34 GMT  
		Size: 5.1 MB (5149712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0855378f8903bde22cfbcee08cd239678716cf01f24a3fca9478ef4121a84d91`  
		Last Modified: Wed, 11 Jan 2023 03:31:35 GMT  
		Size: 10.9 MB (10873659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb8dc93d4197860c2bff47f2c2f280c2dd8ed699e7b3241aa325ecee53c7d7`  
		Last Modified: Wed, 11 Jan 2023 03:31:51 GMT  
		Size: 54.7 MB (54682717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4585ae423bcbdf7421afc0884f62dc572fb61e86846e3166c01eed97cae2f285`  
		Last Modified: Wed, 11 Jan 2023 18:02:28 GMT  
		Size: 1.4 MB (1360021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75055da91e2eb5376fdb23c0a53827b5e16d2cf3e342a36ddbd2096060e18636`  
		Last Modified: Wed, 11 Jan 2023 18:02:28 GMT  
		Size: 1.4 MB (1438065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1c298959158d618f68a60492db6e71ca1a2f78b6b38df0f98f06e3a9ed1a6b`  
		Last Modified: Wed, 11 Jan 2023 18:02:29 GMT  
		Size: 13.2 MB (13184466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - windows version 10.0.20348.1487; amd64

```console
$ docker pull haxe@sha256:29bed918656d7b76fee2547593e746279f0fbdc6266d6757e5cb3f2550b299b6
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1414169643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edfa068d59ca84be693924814c95437832b7d99762d8e32473daa4d46d6d1567`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 04:01:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 05:44:17 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 12 Jan 2023 05:44:18 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 12 Jan 2023 05:44:19 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 12 Jan 2023 05:44:20 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 12 Jan 2023 05:44:21 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 12 Jan 2023 05:44:44 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 05:46:06 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 05:46:29 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 12 Jan 2023 05:46:30 GMT
ENV NEKO_VERSION=2.3.0
# Thu, 12 Jan 2023 05:47:10 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/neko-2.3.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (d09fdf362cd2e3274f6c8528be7211663260c3a5323ce893b7637c2818995f0b) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'd09fdf362cd2e3274f6c8528be7211663260c3a5323ce893b7637c2818995f0b') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 05:47:11 GMT
ENV HAXE_VERSION=4.2.5
# Thu, 12 Jan 2023 05:51:44 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.2.5/haxe-4.2.5-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (9e7913999eb3693d540926219b45107b3dc249feb44204c0378fcdc6a74a9132) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '9e7913999eb3693d540926219b45107b3dc249feb44204c0378fcdc6a74a9132') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 05:52:13 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 12 Jan 2023 05:52:14 GMT
ENV HOMEDRIVE=C:
# Thu, 12 Jan 2023 05:52:35 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 05:52:58 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Thu, 12 Jan 2023 05:52:59 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c906622aa010adfaf1dd8c570ad750108a9b1a91ee1eb148e409e3e4fe68f`  
		Last Modified: Thu, 12 Jan 2023 04:37:06 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cbaf5fba15e6c593a48fd6c18e5a848a9633647d24cbc93d35fa460835b561`  
		Last Modified: Thu, 12 Jan 2023 07:08:42 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12cf36e6894612da4a01d9dbfe0e70b7ed05a2b672e2c1d0ccf4de4cf078edd`  
		Last Modified: Thu, 12 Jan 2023 07:08:42 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45441fc5b5f471fa99b539af034736c29e48e0c20813d63a7a279dc85c916dab`  
		Last Modified: Thu, 12 Jan 2023 07:08:41 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139caf496456aae868e8c1a9ae988ffa7d67ac418c620bced3edfa2b1fa561a`  
		Last Modified: Thu, 12 Jan 2023 07:08:40 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e01e0dafe5b6b277920d23073ef62bac1ab822512a36f1f3215e44ca14da054`  
		Last Modified: Thu, 12 Jan 2023 07:08:40 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc28d7fbfffa8d4b9418f21d5eb77c0711bfed24e1fc1d063df8899f98f30d`  
		Last Modified: Thu, 12 Jan 2023 07:08:39 GMT  
		Size: 612.0 KB (612043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350b1aefb0bf68f502cef448822439342aac63aac3cfadc7c5819b047b103ed7`  
		Last Modified: Thu, 12 Jan 2023 07:08:41 GMT  
		Size: 13.1 MB (13139159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c67509434068dc76cf390bd4349fbd8daf2a6df5f936e09e9e18bd4cf0f0771`  
		Last Modified: Thu, 12 Jan 2023 07:08:37 GMT  
		Size: 560.9 KB (560883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7290e481ee7afd57f2618c02a941d8a22b7294c456f766c82292614b853c69`  
		Last Modified: Thu, 12 Jan 2023 07:08:36 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cde23b0f0b8a9d4b2ad2d52f32a5fcc635a12e2e00171ae9677b1973328321`  
		Last Modified: Thu, 12 Jan 2023 07:08:38 GMT  
		Size: 2.4 MB (2403770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1065245e84e100b0e0ea28d9d27f35a0f123b73990040d1194133c7d9079fc2`  
		Last Modified: Thu, 12 Jan 2023 07:08:36 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6e61c056c6f7379d31380eb763e4cbbc1a410ab761ac6a6e15caff25805fea`  
		Last Modified: Thu, 12 Jan 2023 07:08:43 GMT  
		Size: 9.6 MB (9553362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f007f2380cdec9d1d772f0d08b0c09ed4f587c6238b67b5dd39d5311bc49c22a`  
		Last Modified: Thu, 12 Jan 2023 07:08:34 GMT  
		Size: 609.7 KB (609717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d092ec6cab6dc5e27a71529fdcb240231c7280c75f13c6f7e0249f17c48ba052`  
		Last Modified: Thu, 12 Jan 2023 07:08:34 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ec77852e063a954b97b858096430b88f255b73b74d270644b9ce8507146884`  
		Last Modified: Thu, 12 Jan 2023 07:08:34 GMT  
		Size: 616.9 KB (616934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c1eea239036cd9ae1f20f4310617448dc97592ad70595e11b5f8b5207a2a1b`  
		Last Modified: Thu, 12 Jan 2023 07:08:34 GMT  
		Size: 630.8 KB (630815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f91aa7332ec6a709146744f884005ab644899910ef9390d88531ed5b10526b`  
		Last Modified: Thu, 12 Jan 2023 07:08:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haxe:latest` - windows version 10.0.17763.3887; amd64

```console
$ docker pull haxe@sha256:eb027f45a1e1324015b8fc6c987fcf79f752616b2de457fe83c4a3d701668153
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1738507317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9771ee2334e26f16f02939439a62cc421efb85f7b5022dc2d96288d4c6b4d93`
-	Default Command: `["haxe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 04:04:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 12 Jan 2023 05:53:05 GMT
ENV HAXETOOLKIT_PATH=C:\HaxeToolkit
# Thu, 12 Jan 2023 05:53:06 GMT
ENV NEKOPATH=C:\HaxeToolkit\neko
# Thu, 12 Jan 2023 05:53:08 GMT
ENV HAXEPATH=C:\HaxeToolkit\haxe
# Thu, 12 Jan 2023 05:53:09 GMT
ENV HAXE_STD_PATH=C:\HaxeToolkit\haxe\std
# Thu, 12 Jan 2023 05:53:10 GMT
ENV HAXELIB_PATH=C:\HaxeToolkit\haxe\lib
# Thu, 12 Jan 2023 05:53:35 GMT
RUN $newPath = ('{0};{1};{2}' -f $env:HAXEPATH, $env:NEKOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 05:54:57 GMT
RUN $url = 'https://download.microsoft.com/download/0/5/6/056dcda9-d667-4e27-8001-8a0c6971d6b1/vcredist_x86.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'vcredist_x86.exe'; 		Write-Host 'Verifying sha256 (89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17) ...'; 	if ((Get-FileHash vcredist_x86.exe -Algorithm sha256).Hash -ne '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -FilePath "vcredist_x86.exe" -ArgumentList "/Q" -Wait; 		Write-Host 'Removing installer...'; 	Remove-Item .\vcredist_x86.exe; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 05:55:27 GMT
RUN New-Item -ItemType directory -Path $env:HAXETOOLKIT_PATH;
# Thu, 12 Jan 2023 05:55:28 GMT
ENV NEKO_VERSION=2.3.0
# Thu, 12 Jan 2023 05:56:13 GMT
RUN $url = 'https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/neko-2.3.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'neko.zip'; 		Write-Host 'Verifying sha256 (d09fdf362cd2e3274f6c8528be7211663260c3a5323ce893b7637c2818995f0b) ...'; 	if ((Get-FileHash neko.zip -Algorithm sha256).Hash -ne 'd09fdf362cd2e3274f6c8528be7211663260c3a5323ce893b7637c2818995f0b') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path neko.zip -DestinationPath tmp; 	if (Test-Path tmp\neko.exe) { Move-Item tmp $env:NEKOPATH } 	else { Move-Item (Resolve-Path tmp\neko* | Select -ExpandProperty Path) $env:NEKOPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path neko.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  neko -version'; neko -version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 05:56:14 GMT
ENV HAXE_VERSION=4.2.5
# Thu, 12 Jan 2023 06:00:52 GMT
RUN $url = 'https://github.com/HaxeFoundation/haxe/releases/download/4.2.5/haxe-4.2.5-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile haxe.zip; 		Write-Host 'Verifying sha256 (9e7913999eb3693d540926219b45107b3dc249feb44204c0378fcdc6a74a9132) ...'; 	if ((Get-FileHash haxe.zip -Algorithm sha256).Hash -ne '9e7913999eb3693d540926219b45107b3dc249feb44204c0378fcdc6a74a9132') { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType directory -Path tmp; 	Expand-Archive -Path haxe.zip -DestinationPath tmp; 	if (Test-Path tmp\haxe.exe) { Move-Item tmp $env:HAXEPATH } 	else { Move-Item (Resolve-Path tmp\haxe* | Select -ExpandProperty Path) $env:HAXEPATH }; 		Write-Host 'Removing ...'; 	Remove-Item -Path haxe.zip, tmp -Force -Recurse -ErrorAction Ignore; 		Write-Host 'Verifying install ...'; 	Write-Host '  haxe -version'; haxe -version; 	Write-Host '  haxelib version'; haxelib version; 		Write-Host 'Complete.';
# Thu, 12 Jan 2023 06:01:24 GMT
RUN New-Item -ItemType directory -Path $env:HAXELIB_PATH;
# Thu, 12 Jan 2023 06:01:25 GMT
ENV HOMEDRIVE=C:
# Thu, 12 Jan 2023 06:01:51 GMT
RUN $newPath = ('{0}\Users\{1}' -f $env:HOMEDRIVE, $env:USERNAME); 	Write-Host ('Updating HOMEPATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('HOMEPATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 12 Jan 2023 06:02:21 GMT
RUN (New-Object System.Net.WebClient).DownloadString('https://lib.haxe.org/p/hxcpp/4.2.1/download/') >$null
# Thu, 12 Jan 2023 06:02:22 GMT
CMD ["haxe"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99eee4cf5f23d13a762e719b10916801f19f9df4bd7ff9b4c5cf57133b3dc04`  
		Last Modified: Thu, 12 Jan 2023 04:39:02 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c2d75cdee0543186cf4b7f911336be2a76e8d62d4e1c0acbdcaf9b5488f416`  
		Last Modified: Thu, 12 Jan 2023 07:08:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c12fe145d16a5418ea35422b3f63b25dc6291f5cde5b13d478a2425c555bca`  
		Last Modified: Thu, 12 Jan 2023 07:08:58 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913767c362d7457d4e6a7ef858cdf1faf7ab9711d47dab38874f09cfabc5cf51`  
		Last Modified: Thu, 12 Jan 2023 07:08:58 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f804895b8825971e6c3881f6e737cecd327af9d0fd8a0acbc573b95e757ed95b`  
		Last Modified: Thu, 12 Jan 2023 07:08:57 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5d85f36723b131fe9e80379f1411cdff8ca30781c06074dce33a8d4be2228a`  
		Last Modified: Thu, 12 Jan 2023 07:08:56 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12093de43c404a2920de718cddbee5f82625ff2b11781131b6f485df1ce59bd`  
		Last Modified: Thu, 12 Jan 2023 07:08:56 GMT  
		Size: 364.8 KB (364777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb1fde781e1e326f713095f89c61491a9d3ba50dcf1746f095806d8dc028f9a`  
		Last Modified: Thu, 12 Jan 2023 07:08:58 GMT  
		Size: 12.9 MB (12935734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005415f2c93a95bf33e8b521404091c52b38c48bbd958bea4bf0050fd27d283f`  
		Last Modified: Thu, 12 Jan 2023 07:08:54 GMT  
		Size: 328.3 KB (328311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d7f8dfb9ed863c1bc3803b94a7cb582cdeacae3c79b5be5fba1b70ff46ad33`  
		Last Modified: Thu, 12 Jan 2023 07:08:54 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c28677e93fb8bf7b617c5cc22249ef6fad5e1f9813b69efb667dc9933da3d8`  
		Last Modified: Thu, 12 Jan 2023 07:08:55 GMT  
		Size: 2.2 MB (2160647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84aee9adbf53fa4209941bbc320e9fe23be8733d97aa83b063e696d5df877f8d`  
		Last Modified: Thu, 12 Jan 2023 07:08:53 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae59958234f32618ac39857eaf38a4da8e2fe315a23defd7eaa692fbc4af7e52`  
		Last Modified: Thu, 12 Jan 2023 07:09:01 GMT  
		Size: 13.6 MB (13627818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fa901d655aa907311afe5c71e9623b9bcd747ee63b22cfcc1d3bac6a1fdf84`  
		Last Modified: Thu, 12 Jan 2023 07:08:52 GMT  
		Size: 364.0 KB (363962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88b8525ba1c98e5040337f3dd3ed3b45a34027b5311c3e51ff2b9d568818025`  
		Last Modified: Thu, 12 Jan 2023 07:08:51 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0df10183f356f23e2d0042027a3ad4ef99154cbddffce3c534cbbe9914aff6`  
		Last Modified: Thu, 12 Jan 2023 07:08:52 GMT  
		Size: 372.3 KB (372327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afd4d49e76ffb1e2fddee43a08663f12d94d0dc3c0adf3258f14acd5c3518bf`  
		Last Modified: Thu, 12 Jan 2023 07:08:52 GMT  
		Size: 396.1 KB (396115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957d8f54ba7d6f88a4ecfd350b2294f40f9556f7d38620fe9bfbb6bc23b72f55`  
		Last Modified: Thu, 12 Jan 2023 07:08:51 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
