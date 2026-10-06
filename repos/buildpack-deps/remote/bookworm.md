## `buildpack-deps:bookworm`

```console
$ docker pull buildpack-deps@sha256:b22578185ebfdbd9a4050f697638b9c9696b70616d9b01bddfa79145db2b6dfd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `buildpack-deps:bookworm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6664ea6221140b52bddee69d4b3410d0f2f4eda8ed2bbf80dc91ea055cd94a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350823042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4492ce8f780e0e4d3004d9679cfadba8278c04b3ac7f4cd64f7cd03d55215c3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:41:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:34:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4edf9c328e814bd91b20c8e2211065489ebf15a16c7663d68a880660dfc897d`  
		Last Modified: Tue, 06 Oct 2026 01:41:13 GMT  
		Size: 23.9 MB (23872252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c71fff0869aa9bd48cf80d66e30b83adc9a3fe5e77dd9aaf266282c6ec64ff`  
		Last Modified: Tue, 06 Oct 2026 02:34:58 GMT  
		Size: 66.7 MB (66718068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610dc773fbd71198e96c7a8710abfd1661f14d776d7169b4ef525d8eb30e1b03`  
		Last Modified: Tue, 06 Oct 2026 03:16:38 GMT  
		Size: 211.7 MB (211714700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3cc53038b83350356dfcb37cfe557dc7869dae9feb44239fdfeec972c3d35660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15881307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22fa83f0118baa792fccb528f739ec707aea45820b7897fc07900effdae372ee`

```dockerfile
```

-	Layers:
	-	`sha256:92bee414270e16e5c539c8487f2897f13177832ff0488b19732d17f99c612c93`  
		Last Modified: Tue, 06 Oct 2026 03:16:34 GMT  
		Size: 15.9 MB (15871118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dc2581d99b3c971d2894876ef07cbecd2cc796a02afc90d104cc0fdad6b3cd6`  
		Last Modified: Tue, 06 Oct 2026 03:16:33 GMT  
		Size: 10.2 KB (10189 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:36ea3c29278ec3ab28eebd64b0aa3c9a53b9ecaa72cebcb58762ee813207b94d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303365238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c5755d51d5749344e9bbb36ba3a9fb3f81cbadbd6263cc1ad99c7cefb8765b7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:23:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:40:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 04:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:54b36b054c7cd92d990fdbe776041bda41bca67549e7f2f5b71aa81632707ced`  
		Last Modified: Tue, 06 Oct 2026 00:13:12 GMT  
		Size: 44.2 MB (44213912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6b6172c735529bdb9ddec421bbd50381be57cbdde9600e8834517a79e2dbd5`  
		Last Modified: Tue, 06 Oct 2026 02:24:08 GMT  
		Size: 21.8 MB (21774996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b768da400527c8a0e4827a2830eb7d6018a22af7b71ff5838ebe45eea9ecbd83`  
		Last Modified: Tue, 06 Oct 2026 03:40:51 GMT  
		Size: 61.8 MB (61771060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acbf99f8645a68a65fa918a29ce86b16b6ef76aaddcddc546c009ba379544e57`  
		Last Modified: Tue, 06 Oct 2026 04:13:25 GMT  
		Size: 175.6 MB (175605270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:275461cece847e63f5d17937e8f8d0e3f45fc6707094c37780e203abf3feaea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15683831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3e6b8fbd5ea42301687c1e8828b8468e93f65672e4a64c2a7137c99eb45577`

```dockerfile
```

-	Layers:
	-	`sha256:9299e13492fbd8fa4ff011b4010010a8dcb9751584aded2dee43b5d0afb396c3`  
		Last Modified: Tue, 06 Oct 2026 04:13:22 GMT  
		Size: 15.7 MB (15673578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8676f63d4073942e42304a0f0850d2378b1244e492c363f478ea95b0f1efc90f`  
		Last Modified: Tue, 06 Oct 2026 04:13:21 GMT  
		Size: 10.3 KB (10253 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:713468e310395862392894a4dea5996eb8f6f76498c74dcbd37613e0f740096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.9 MB (341860289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce36b9ae1d4e07b38d8066e4b82f21d4065e6bb7090e0ad239079bbeffc23831`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:44:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:25:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:15:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc7363672c63abfefdedaf5e03be8e39cb662841d4f31237c4b7d7e3729f65c`  
		Last Modified: Tue, 06 Oct 2026 01:44:28 GMT  
		Size: 23.4 MB (23442412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99713dbe79ee22ead7509cd8c7c37d309206e5ddd834ba41611459b49e6ddc06`  
		Last Modified: Tue, 06 Oct 2026 02:25:53 GMT  
		Size: 66.8 MB (66769669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4562cb873c99b9446ba4daee7180b2d40bbac13aefcf459f2e516776c1ed0458`  
		Last Modified: Tue, 06 Oct 2026 03:16:35 GMT  
		Size: 203.2 MB (203246653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:86f77c7a1f99ffed9feae3248dc1ec22b9d7f72941c8a8d1e61d9886911b0bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15909889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82fb2414f7496c81a4a046e6c9f02789689abc95550217e953bdef4ef52bf10d`

```dockerfile
```

-	Layers:
	-	`sha256:099f16b65967b9d8228f602d01c7ca83c114eb460c88bf22a7aec5d2e5075726`  
		Last Modified: Tue, 06 Oct 2026 03:16:31 GMT  
		Size: 15.9 MB (15899620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:951259cc59ac25d2a45dff02f0b60200c7878ce809530579a9fc114e035923ee`  
		Last Modified: Tue, 06 Oct 2026 03:16:30 GMT  
		Size: 10.3 KB (10269 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:085770b6083172771374e49f3430a88c84e63dd99ff3135bdd776c9ee39f6c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353527628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07e9e1e5880d3ae0ee198440a00129e69971e17e20ccd83a91b8e871656c3f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:45:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:32:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 03:16:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:70e4ecc0352ac50b173cb5a25f4b7f4f26ea4742d8b6e94d48a7b74d771b75b1`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 49.5 MB (49505330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ed8fc62fd627a37f6ed2ee27586e27cad83b5283812efa97b05e073356a198`  
		Last Modified: Tue, 06 Oct 2026 01:45:52 GMT  
		Size: 24.7 MB (24708328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711f4e886b543dd0de1ec42d806d33e26264ccc6571085235d546d2e40a384e9`  
		Last Modified: Tue, 06 Oct 2026 02:32:29 GMT  
		Size: 68.7 MB (68690210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0522308ae1c45c904e807a2dc58c6b2e321baa53644937cf98f87752a727e915`  
		Last Modified: Tue, 06 Oct 2026 03:16:45 GMT  
		Size: 210.6 MB (210623760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:094cb83cd9a4fe88bed0568fd93edd8e34c00ee20cd150af1baa154296b662c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15859514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a122d89deb997b67e2b61c7f9c34029cb4afcbd8abea8be965a8b34a843887d`

```dockerfile
```

-	Layers:
	-	`sha256:69745faabf1d7fa5df6af21c7f28c267fcf521a719869647a01d2a2a7cae6990`  
		Last Modified: Tue, 06 Oct 2026 03:16:41 GMT  
		Size: 15.8 MB (15849347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f24f2834fa8f96579a5484805129a0542919427a81d261d325e99e38d5276f2`  
		Last Modified: Tue, 06 Oct 2026 03:16:40 GMT  
		Size: 10.2 KB (10167 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:bookworm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:af8731adb06753af169c92aebe148c8b07b3cc0c11e5b8440faf1bb13abfceaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.0 MB (364984320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1cd342d18ffcee85ffff2dd7d5141955f56f211acb6137e8098986126a4504`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 04:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:38:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 14:29:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfced81c6d63d57c61f0cc455733d3e2c3415e1c19808bf1b361b6b77a0db73`  
		Last Modified: Tue, 06 Oct 2026 04:38:35 GMT  
		Size: 25.5 MB (25518268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c264e2b4d19ba4544ecce2e36be7fa5707180176288bd26f8665e49e08103512`  
		Last Modified: Tue, 06 Oct 2026 11:38:50 GMT  
		Size: 72.3 MB (72326849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c760b5932d55730065e0bb91cced007db5f0679ac0721d658f6aea2387786c38`  
		Last Modified: Tue, 06 Oct 2026 14:31:18 GMT  
		Size: 214.8 MB (214776464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:bookworm` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:343ad0cdc22363b50c9dac42de893d580e0f68faca26d0ada69208f119f3771b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15857840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b063cf38c4438a6a3c136bf0a78515807bd1226379ba4eb99a3418582f815132`

```dockerfile
```

-	Layers:
	-	`sha256:59f8a5983299f682f0a7fcab244e4004cb2b1e16d2ad907929adfed889ceb6a9`  
		Last Modified: Tue, 06 Oct 2026 14:31:13 GMT  
		Size: 15.8 MB (15847619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb674a55538bcd124b0532cecaa31267f139a56ad286860ae67760175b3de397`  
		Last Modified: Tue, 06 Oct 2026 14:31:12 GMT  
		Size: 10.2 KB (10221 bytes)  
		MIME: application/vnd.in-toto+json
