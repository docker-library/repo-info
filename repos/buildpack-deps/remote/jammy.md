## `buildpack-deps:jammy`

```console
$ docker pull buildpack-deps@sha256:0136afc9d17ba5b82425eea15b49f99cde1cea050e4ca26e9462d1f9271b068e
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

### `buildpack-deps:jammy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:97d2909fdc9d46ae7f9d3bd081749549c1078899585e37abb60fd5f4cd593484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257446323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7091cfe581576b1cc2370c832164d9e7309e46a0e0345ce31a2ff570076e6ba6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:15:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:16:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020cda4105c56fa4959c90da18d747e55dfe394ebe92b4abcc576965ae4afe62`  
		Last Modified: Wed, 09 Sep 2026 02:12:41 GMT  
		Size: 7.1 MB (7065284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01f147b039ca3d9deb3290009f996015194eed6a0b47c5b0f5be91cb0d7f013`  
		Last Modified: Wed, 09 Sep 2026 03:16:07 GMT  
		Size: 41.8 MB (41814684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2175f593e8f5a7383634ea9e14595129ca52787e7d64f21318f6ae1f25f54381`  
		Last Modified: Wed, 09 Sep 2026 04:16:56 GMT  
		Size: 178.8 MB (178816104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2341f3d4aa6d52928b3f2d4d5eaa683a9c96e9b0c323591c0c5c03007e03cf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11835724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30efb350addaa9661f7962e85db4eff6786108ca8b3b92d435491933a84b29ab`

```dockerfile
```

-	Layers:
	-	`sha256:75587a02e59dc5a413a2e816273ba5618d05f32ac2c87f07c0d60b4be721e4b2`  
		Last Modified: Wed, 09 Sep 2026 04:16:53 GMT  
		Size: 11.8 MB (11825564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d5010997ac3285472af519fe31380c11de70fa8e0a1699ef8d3c18d8961aeee`  
		Last Modified: Wed, 09 Sep 2026 04:16:53 GMT  
		Size: 10.2 KB (10160 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:71f285725ec1761bf2064756301627bdf5fa03ca956dbaf3451a9299da06b14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223523688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af68a8c1f604f92ac879f04797461cea52c000c57e0cd964703d71d70d63496d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:44 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:44 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:48 GMT
ADD file:3964c8b3085bc8973d824f786b55dfc8739922f8c0ba7540b52cc99dc2a74672 in / 
# Thu, 03 Sep 2026 12:14:48 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:16:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:bfca8bdd141e37c0d0eb6a1ccbc63661539547c75fa38334423103a13cc1b0eb`  
		Last Modified: Thu, 03 Sep 2026 17:08:34 GMT  
		Size: 26.9 MB (26854708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff4fa30935ed39b8b11ec50809c1cf140bcc5ffc79b841a9e49e270fde9fd37`  
		Last Modified: Wed, 09 Sep 2026 01:15:33 GMT  
		Size: 7.0 MB (6966495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62b9b82c890d6324ab8ccc72cd8c1d4c8aae952f748e5de4319184f190efaa7`  
		Last Modified: Wed, 09 Sep 2026 02:12:21 GMT  
		Size: 44.4 MB (44359871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5032df77af32068cd7e53dbdafe6af3bcb6c829125aa27a794ee0618b6670b9`  
		Last Modified: Wed, 09 Sep 2026 03:16:42 GMT  
		Size: 145.3 MB (145342614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2c0e2eeff3d89500492db551eee04715ed1a2f3898e8d1c8ef05e15221c08373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11624997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4699ab061fcefc0e6a1efa94afdfc13d4844831bd60e4adbfe05ad020b3829a`

```dockerfile
```

-	Layers:
	-	`sha256:0a8b9b3838e5b25eaa4d595c3eb6e58689349887b8f432a7636b582ea95be875`  
		Last Modified: Wed, 09 Sep 2026 03:16:39 GMT  
		Size: 11.6 MB (11614773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3171cbaaafd2347d274044707add1176bf9f1fbf89d06cf9b66fd7a28add433`  
		Last Modified: Wed, 09 Sep 2026 03:16:39 GMT  
		Size: 10.2 KB (10224 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:704a361dfd777155d7acba63e57cd68cecedc9b3514430349d29f64cef598e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247791165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e1e8113dc510d751800cb176ad1e6f84b2478cd3a6edf1470a39bf3f2dfacd9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:15:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:26:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec09e12728ebe9beff9631cf3cea8fc831710686d9ad6c5ff616c1b41b720b`  
		Last Modified: Wed, 09 Sep 2026 01:15:18 GMT  
		Size: 7.0 MB (7019701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5127e66642f6fd3c7222657a113f4b5989c00ad2269e10ec4e17513bfdfb7c`  
		Last Modified: Wed, 09 Sep 2026 02:12:28 GMT  
		Size: 41.7 MB (41691021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fea0d2407c22172a619de013a5b06bd4c03223567fc6db072fe8429b2946b7d`  
		Last Modified: Wed, 09 Sep 2026 03:27:24 GMT  
		Size: 171.4 MB (171397696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:26c4332f4d94efe6eaa8e8e717d403f80c78d17e3c4bbe3eacab11be0c390854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11831471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f83abbc68ef5a8d9c72362aeed39b201d12fec9d4fc41421d4f09ffa03c92b`

```dockerfile
```

-	Layers:
	-	`sha256:a7e3234f2faa4751248724b75b14cabc7dcbecc57794a697c7d745920233f1f3`  
		Last Modified: Wed, 09 Sep 2026 03:27:21 GMT  
		Size: 11.8 MB (11821231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e2b0d08a3e39334a49ebb79f965b861f18dbfbc7f18a0a318d1ddba14ea4afa`  
		Last Modified: Wed, 09 Sep 2026 03:27:20 GMT  
		Size: 10.2 KB (10240 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:451f164ba6b0a82eaa2f7dce844e1d9baa338e6a71927dd9f6e509567cd22cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279185877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f9a09368efe8ba9be690bcc66bd35e54928a7e79638029bd984524dcae30788`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:21:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:53:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:47:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7192fd2ec6aeab42844efa7a3c3464380bbe0390589a83523f21dba5980eeb9e`  
		Last Modified: Wed, 09 Sep 2026 01:22:26 GMT  
		Size: 8.1 MB (8145338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb7d27ac27ab5731673489858f6a98d1bb94c6741964df32bdb6f49766c561e`  
		Last Modified: Wed, 09 Sep 2026 04:55:04 GMT  
		Size: 46.3 MB (46258404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d66c68a0abafbb5f0eb877df4348e0bf1d81ec0c9fcc2fbb20dace70eafdbe1`  
		Last Modified: Wed, 09 Sep 2026 08:48:45 GMT  
		Size: 190.1 MB (190079456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:aeac476b4f497e6e442e9beb215fe4f754776c1e41c79a434b57135a928cc25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11795121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da72fc2dadbf84f97c20b480dc46e64d4f04e156cb5a7c63510aadea5d8f62db`

```dockerfile
```

-	Layers:
	-	`sha256:44378d5d53e647007fbf9e711c72abb1d97a8da28fcbbc8a43205c88eec3c25f`  
		Last Modified: Wed, 09 Sep 2026 08:48:41 GMT  
		Size: 11.8 MB (11784929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c634bfaa03fcf8d16ed984dce98233860e1ad2ec4a8d6e09ee8d414ed34cdef`  
		Last Modified: Wed, 09 Sep 2026 08:48:41 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:a178cf4a357b4c8ef8cad69dc6c39eb7b5314308933ebc26b52d8e6725f52f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281374870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ce08e82ebba9e103004da6d2990182faa755e60d257a9e7db466fab0c8d893`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 13:13:37 GMT
ARG RELEASE
# Thu, 03 Sep 2026 13:13:38 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 13:13:38 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 13:14:31 GMT
ADD file:e7ebfcc9293c77772284fe8db01e32767f4bd638e50d0ab6c253090570c3f1b5 in / 
# Thu, 03 Sep 2026 13:14:35 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:47:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 09:36:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:77b79c0283744d00298c0eb4b8b5295466b2a44d4a6328498f8a886e68257a40`  
		Last Modified: Thu, 03 Sep 2026 17:08:48 GMT  
		Size: 27.3 MB (27301076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49db17c8594077f04ae6db72664b25d79dcd990046462f07154eb62b123c6cdb`  
		Last Modified: Wed, 09 Sep 2026 02:13:39 GMT  
		Size: 7.1 MB (7075881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a353119c86ef25e05b3623f7f2641092e55da67e384ccc87acb41c44dcf979`  
		Last Modified: Wed, 09 Sep 2026 04:49:32 GMT  
		Size: 44.4 MB (44422031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188a93a2539356e95f9d534077e51600a72d8007d21718c80fd11f22dab743a0`  
		Last Modified: Wed, 09 Sep 2026 09:45:48 GMT  
		Size: 202.6 MB (202575882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1da2a817a76efbee465d2b7d3b5533fcac7d7cd0d11261ae4270db3cd805dbf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11777477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3731c83ae14e415f5077e1b0d5d391802e602cf679236ab7b2b4bf9edd09642`

```dockerfile
```

-	Layers:
	-	`sha256:ec8882cecd66ea1625597fb6b4554edcb0854ccf1470862b75cfa6ece23ac6d0`  
		Last Modified: Wed, 09 Sep 2026 09:45:20 GMT  
		Size: 11.8 MB (11767285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cde7a3e080f0ef6177593ea4f021aa1e8bbe5a487ad037024d51ae383355789d`  
		Last Modified: Wed, 09 Sep 2026 09:45:17 GMT  
		Size: 10.2 KB (10192 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:jammy` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:64643bcb2e28046932fc7ca3dd246dc9653ec45511926d030470f296daa965ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223472866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27250546518ddec627e402d82e81ee19f501c6c4eec4ea2aad8fe03bb0b972aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:07:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:09:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:12:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5e1d4fc4d05b2b731bd30501593986ca8bed1115300d026890bedad4a714a0`  
		Last Modified: Tue, 18 Aug 2026 00:07:43 GMT  
		Size: 7.0 MB (6974512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d2c4ab93052b27679d9605bd40dfa5336afff3eab7f596ff4280fa713adffd`  
		Last Modified: Tue, 18 Aug 2026 01:09:46 GMT  
		Size: 39.4 MB (39437751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372993457b9f1c5e98eee916652feb5857111430c77bb17548d6624750ec7280`  
		Last Modified: Tue, 18 Aug 2026 02:12:42 GMT  
		Size: 148.8 MB (148849700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:jammy` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:65db56ddb0a9ef7eac06e63a7fe5eebffc69b879527a599cec2e97ac4228cee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.6 MB (11648246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d89948affbfc84f88456eb3b55b15eb41d48bf00415110ea349f92d687e8350`

```dockerfile
```

-	Layers:
	-	`sha256:e995685c7401cfc7811233c0f78a6ded36d87e844c3dac631251277f494cdf18`  
		Last Modified: Tue, 18 Aug 2026 02:12:39 GMT  
		Size: 11.6 MB (11638087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cafbc20b7eeccf42ba7403b3ebf9a3fac6f6b35fff6f95cac88a9873ff83dca`  
		Last Modified: Tue, 18 Aug 2026 02:12:39 GMT  
		Size: 10.2 KB (10159 bytes)  
		MIME: application/vnd.in-toto+json
