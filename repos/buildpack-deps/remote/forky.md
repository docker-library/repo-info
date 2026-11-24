## `buildpack-deps:forky`

```console
$ docker pull buildpack-deps@sha256:6e40e2b82485958c359a3dfecaf8cd9f46ae723463ce9abc6aeec35d59be5f4a
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

### `buildpack-deps:forky` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6f0f91fe4f44d0e95979699802d9db7ac0a7fd3bed7eb69e9def52c080cc3171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.6 MB (370550563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dae0aaa3886bfe12cb7def205d9dea1ba46af8b6731b6c5aae1610dadcd219`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:39:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:21:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e0532024bbbbe838be5cdb81657e837efca9a68f1a5e2c55bc6bd02a30fae548`  
		Last Modified: Tue, 24 Nov 2026 03:40:04 GMT  
		Size: 50.8 MB (50824479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88679e6561358812a7e8ee3a27635a14d2a615b8fe0bedacfea7315727a46bdd`  
		Last Modified: Tue, 24 Nov 2026 04:39:29 GMT  
		Size: 28.5 MB (28492186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88212a19b9a5ce95004aed9a150e83fcff30fe37e47bcd6c5236065310f32831`  
		Last Modified: Tue, 24 Nov 2026 05:21:20 GMT  
		Size: 80.7 MB (80656278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bd5cebd5cbbb3dacfa9b9d29b1e8613657e373601bd3aa45fe6c4f67a923fe`  
		Last Modified: Tue, 24 Nov 2026 06:16:09 GMT  
		Size: 210.6 MB (210577620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:beeb5f833257d1c2cfd24a80d934bf5bee9b895954ffda7835f2af34b5d8307d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16932434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605403f47d4253060c5ea6765ce7ace56150390092286e30881a7f18bc96d13c`

```dockerfile
```

-	Layers:
	-	`sha256:1ff61ca3002196d4154660a73a998fcc86cd9dc45500c08a1b34c9cf7b88513a`  
		Last Modified: Tue, 24 Nov 2026 06:16:05 GMT  
		Size: 16.9 MB (16922290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0080fcd0ced18db4608c5f5e4869aa785105f0623fdedd0ae5d50d97082163`  
		Last Modified: Tue, 24 Nov 2026 06:16:04 GMT  
		Size: 10.1 KB (10144 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:e7fb529e561faea8570b615e7992640a7b0ceaa3b75cb00e3038eeb417fe3c26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.1 MB (308058839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dab22125181c901505738f0c59f24b8fe51a2f4e4c958feb7fdb2ce1a8d430b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 05:16:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:42:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:13:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad15e1ccf6667f0b5d63e5965cca3e5ec1c04c4e3f2c41af33d31b007d744dcd`  
		Last Modified: Tue, 24 Nov 2026 03:39:59 GMT  
		Size: 46.8 MB (46761292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1143882d9322f3f9a5e283934cdafa1116ddb376b1373be2859f35ccd6fc0594`  
		Last Modified: Tue, 24 Nov 2026 05:16:16 GMT  
		Size: 25.7 MB (25652342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa902717ac1e6162cfdd88e0a136bf97966259da8488a4ea77f525fe4f13e4b1`  
		Last Modified: Tue, 24 Nov 2026 06:42:26 GMT  
		Size: 74.1 MB (74067196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e708c8cf5f0cd18ff0bf9357a9a2546e564c6ac842b006f851e879666cff1d3c`  
		Last Modified: Tue, 24 Nov 2026 07:14:09 GMT  
		Size: 161.6 MB (161578009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:4335e407e9c6aa24af6ac5f5d63377de15781aad8b42499c4ecf6de109c2d923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16717660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2706158c069a73a5ddb1276808f5491a51da82e506304ebe01a1803356400a0d`

```dockerfile
```

-	Layers:
	-	`sha256:1027d4b917d49677782267710d3654cb9fe9a7c3cf5ac029d4a6b07a43f017b3`  
		Last Modified: Tue, 24 Nov 2026 07:14:06 GMT  
		Size: 16.7 MB (16707452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93496ae87dac3d34063acd9c749e5cf15c462eb6f9acaea6179c76a7110171c7`  
		Last Modified: Tue, 24 Nov 2026 07:14:05 GMT  
		Size: 10.2 KB (10208 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b2e0b5ade532639813077effb2162768f53e11a6e05c8321ce135f11b510ab98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.9 MB (354902103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53705e3251234ddf1b3c976be23f7c2bf147f43ba133b1dfca67ac4476e0257b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:43:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:32:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:13:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f2d0466274a27fafe53b0ab31eac3d74e9c4c21ed2c12e050bfaffdc8a143a68`  
		Last Modified: Tue, 24 Nov 2026 03:40:15 GMT  
		Size: 50.0 MB (49959536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1fe612f86f020e2e30e6954733495ebb32e497ad47e90706869e4c2fca69ae2`  
		Last Modified: Tue, 24 Nov 2026 04:43:39 GMT  
		Size: 27.4 MB (27385671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7267a19dce8d5e2a5891a284403197ddab43fddf8e15612d2ebfb8c652cffbb`  
		Last Modified: Tue, 24 Nov 2026 05:33:11 GMT  
		Size: 79.0 MB (79011936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a630181683c0c2f08cb6f81f26ca911f8b46f1ac63de725c31834dd56e6782ea`  
		Last Modified: Tue, 24 Nov 2026 06:14:39 GMT  
		Size: 198.5 MB (198544960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:fe812b868e941c61f08c38236b53a4674bb92e0b007aeed9a8b88dfe5198fd07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17038849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2351272c9fe1e206e393ac7fb8f1ef02916612047701a5550c26ac0d656e34`

```dockerfile
```

-	Layers:
	-	`sha256:0ac6f45ca788e5dfc217b432b614b1fd0cc91332bf32d8919b0364fd7c2bec5a`  
		Last Modified: Tue, 24 Nov 2026 06:14:36 GMT  
		Size: 17.0 MB (17028624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2edb7ab3bd338e7410371b55cd2a0d5d2ea73836bbabd9c1ceafc8c4eb0c2244`  
		Last Modified: Tue, 24 Nov 2026 06:14:34 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; 386

```console
$ docker pull buildpack-deps@sha256:70f66a8d00160030fd71edfd3105de9aead27667248c520e27ff2d23328fc3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.3 MB (376293254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755dce2433c1d45a125c33632294bb357a22902b53fd672077c158a2aa2b49dc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:41:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:24:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:ad24eb7477cf6ec6782c9a4f3e0669cb79bb950b4d715dd6243dfd2cc7f5069c`  
		Last Modified: Tue, 24 Nov 2026 03:40:12 GMT  
		Size: 51.9 MB (51898500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781446897aa3758123b6f39af00768eaca22b2b0844b2ee8e80b24cfa21f2438`  
		Last Modified: Tue, 24 Nov 2026 04:41:17 GMT  
		Size: 29.6 MB (29647169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a00a4214059e685e5ab3e79dc3abda6cfd318cf7565117e841bdf688500423`  
		Last Modified: Tue, 24 Nov 2026 05:24:58 GMT  
		Size: 82.5 MB (82450479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3d44183e24fcb8b4d68fbd93956777fe4d92867b8a7106b5ad4097129ee522`  
		Last Modified: Tue, 24 Nov 2026 06:16:16 GMT  
		Size: 212.3 MB (212297106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e6adf12ae4ce363eba468ebf7da4537762fab06ef4555202cefcb6d31419a1be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16901416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ace295c24aa566a30d0896c18356a692193d4231f62fdf50f09062b8342231`

```dockerfile
```

-	Layers:
	-	`sha256:3334a8a65567ed02fb4b5c1129d188ff63aaedd4191b10165d3de40c910f44b0`  
		Last Modified: Tue, 24 Nov 2026 06:16:11 GMT  
		Size: 16.9 MB (16891293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b513efc1396192bad81472d6a00aa7a378bb036dfcd6f49dd41688274917a55`  
		Last Modified: Tue, 24 Nov 2026 06:16:11 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ab30266e229c97a6de5488f6f558d0727a5321319496fe2e05d7c8deb43e6f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374520010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dd99b7c448a9df3b33596be8b6ca2f7612646c6fa2aa6db6e99605ab324ba1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 06:51:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 14:03:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 16:56:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:8c9c871a59639f586eab4e27a4e6dde32d5de918c3c725dcf429285aa24641a4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 55.4 MB (55430740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e972f99456c6523626c70628380eebc3727e7c065093bd8b6cf7ac8785b35726`  
		Last Modified: Tue, 24 Nov 2026 06:52:08 GMT  
		Size: 30.5 MB (30539861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366145ec0cb581e04446f24449afbf9beca020bf59560e88131f87aec1f321ad`  
		Last Modified: Tue, 24 Nov 2026 14:04:12 GMT  
		Size: 86.5 MB (86499386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d64487d2d299824114f744a21298fbfbf5f0dfe29b4a8093bca003f8fd72561`  
		Last Modified: Tue, 24 Nov 2026 16:58:09 GMT  
		Size: 202.1 MB (202050023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:1bef53eba40dab72c5a54ae829b1476f47f73903238f6371fc1f9e0c7d875535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16934907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9da372bc6d29df698bce831579a77d3a0217069eff4ab216d5afdca6f511ac`

```dockerfile
```

-	Layers:
	-	`sha256:fa23202de3a397ba3824c8537eebd83e9203681b54641b9ecb2cfcceba65b45b`  
		Last Modified: Tue, 24 Nov 2026 16:58:05 GMT  
		Size: 16.9 MB (16924730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9890e5d6e08287ca2bdf74c6baf221fd0af3b603a815053b5a760b01f5a90d0c`  
		Last Modified: Tue, 24 Nov 2026 16:58:04 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:c5570f48d5c030aa7478d857ec324b5df11e1a16520debfebca7dd5ed35416d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.0 MB (511957852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1950ee6065fe08364f0a3a08abcea5bae4e8b727b061b529bef259ca93dbe55`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1793827419'
# Sat, 07 Nov 2026 04:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sun, 08 Nov 2026 18:41:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 11 Nov 2026 22:46:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:af6814c9b170f0ad2c29fb9a95b0e4fbd5b006cf40779c5aad8ca65ea06385ca`  
		Last Modified: Thu, 05 Nov 2026 07:20:48 GMT  
		Size: 47.3 MB (47262981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804f345d2c293931117d186b7ea9940c8b2f0071589026ba4be5a6074242cf37`  
		Last Modified: Sat, 07 Nov 2026 04:14:37 GMT  
		Size: 27.5 MB (27488278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1408c8cedab483c3b8c87a3a903d2bf05c152d52f874985da2d6ca93867e6dba`  
		Last Modified: Sun, 08 Nov 2026 18:45:30 GMT  
		Size: 77.9 MB (77876334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15859fc30870f551ebfbb74ce1b96124a72a1e6c0a77ec0252bacbc7b8d371da`  
		Last Modified: Wed, 11 Nov 2026 23:05:05 GMT  
		Size: 359.3 MB (359330259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6759bda0218b20b883d4db4b7ffcf3c9dc2590dd126887ef5d2f497c98ea6a63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16963654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34147f854de02c33636ca4e80d3415ba71d5572ad41f74801277afe7d7ab4310`

```dockerfile
```

-	Layers:
	-	`sha256:92518365eaed18be79cb5042a0f0ca8c9cb99f669f3b98100c0fbab78d5e5e7a`  
		Last Modified: Wed, 11 Nov 2026 23:04:12 GMT  
		Size: 17.0 MB (16953477 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bd38fb530fe42b93c19f5804ecefa115f8bf1adf200d5e0747c2cab9f279624`  
		Last Modified: Wed, 11 Nov 2026 23:04:07 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:fe75951b303dc614d7cd0985422be053a8efa63fa02c47015d6c75c32ccbba52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339221112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103cf3e40550853b213168dc6f2fab177f797097cf94579fb53ed8a42aedda0d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1795392000'
# Tue, 24 Nov 2026 04:52:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:41:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:14:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a1c5eacac2275bcace23e821f0eb1d47f962bdcf22d863bf28709cb8b3953b7e`  
		Last Modified: Tue, 24 Nov 2026 03:39:06 GMT  
		Size: 49.9 MB (49863272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4df43e56d4aaaa7b350b094f3202a2410c8a7766c010d1e11839c68a7bf90eb`  
		Last Modified: Tue, 24 Nov 2026 04:53:11 GMT  
		Size: 27.8 MB (27775262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6689293e6ab97848a0f78f496f0429d7bb6b6532a1149a16738727f98aa1e8ba`  
		Last Modified: Tue, 24 Nov 2026 05:42:24 GMT  
		Size: 80.5 MB (80470982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd60df2ecc85658688ef2f992aa82c538f9eac044d10e11b447bf88e5692759`  
		Last Modified: Tue, 24 Nov 2026 06:14:58 GMT  
		Size: 181.1 MB (181111596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5107d7dba01e8828c6e3cd864815c4290460f1e1ef1613d2a207d621453413ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16737671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47685f33c0aefef05eeb12b54f8b3f68a93975fd749b3c83d699c72f03f202c5`

```dockerfile
```

-	Layers:
	-	`sha256:10a0489f2142be0464093af3d5044b074270677bc407fa5d3f227983e9524a7d`  
		Last Modified: Tue, 24 Nov 2026 06:14:55 GMT  
		Size: 16.7 MB (16727526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70217456896c216b5d1837cda4bfb06f7945989b10dfa500c76f0a23df2da5d0`  
		Last Modified: Tue, 24 Nov 2026 06:14:55 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
