## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:1340b2ff28faf7cba89073e5382d52076f0e5a8f806d62af36140b713e028127
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

### `buildpack-deps:testing` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9be05438599f3ebd394b0f7f4e332af8e4d4e1da15a593a09ab31de883e82105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.3 MB (371334464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2360b34a5a7cf2f736fcd23a25943486462ab5bfdfe0c73e6e170e7e6429e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:41:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:34:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:7469b51a5634026d0ec3b005b5a4726cfcf2e658e06e0d7f08c5489d9b1760fb`  
		Last Modified: Tue, 06 Oct 2026 00:13:38 GMT  
		Size: 49.6 MB (49649159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a85e526e84284c855198b53bf2f71798ccd059fd4c122c98deddaf0f1cce0d1`  
		Last Modified: Tue, 06 Oct 2026 01:41:17 GMT  
		Size: 28.5 MB (28503245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed6683dad7a3ebefba503a74637941b8cb54ba6947d7c3dcce16dd1930be09d`  
		Last Modified: Tue, 06 Oct 2026 02:35:01 GMT  
		Size: 80.3 MB (80335900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e695e731e7112a72c9e5661548e4965ed45b9e6eb24cf38c4105a0dac8facb34`  
		Last Modified: Tue, 06 Oct 2026 03:16:45 GMT  
		Size: 212.8 MB (212846160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6ebd58f762100db2a5f16e3db74afd4554e5375bdda0ec8a660b841c32052fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16908312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6928a101058f2a2a6f7aeb03bad2a003db7e13eb6d21c73747d562b521bf4b2e`

```dockerfile
```

-	Layers:
	-	`sha256:bd1968858340b6c0dcde4e7032bedb86824165bb943d6e63dd152a71c8c27778`  
		Last Modified: Tue, 06 Oct 2026 03:16:41 GMT  
		Size: 16.9 MB (16898168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48bf045fb3c82696b76f958508fba6026750805b8d9c4bb6f0d69f7dc08afb34`  
		Last Modified: Tue, 06 Oct 2026 03:16:40 GMT  
		Size: 10.1 KB (10144 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:29278a5e64d026253913b41d6ef8ed57c7865bc18c652da40b613f20a9f53187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.1 MB (309071264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b2bbe9345883b3b6293ac887b8517f75678947734f46cb929919a7af7c6931`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 02:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:40:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 04:14:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:3a78d12b86d9577977254cd29839c594a5572094c28e6dc8b2362fc3315645d5`  
		Last Modified: Tue, 06 Oct 2026 00:13:43 GMT  
		Size: 45.9 MB (45924917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba18b4a4892fe76aa89199328866e1197da6cc17a716a635647c4857e40c6c9`  
		Last Modified: Tue, 06 Oct 2026 02:24:38 GMT  
		Size: 25.6 MB (25586311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655afb07ec1187e710354e78c48338f2445b422398b590254b57df355b12011d`  
		Last Modified: Tue, 06 Oct 2026 03:41:01 GMT  
		Size: 73.8 MB (73827981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0f5e9c92a7b9453d496d061d9e2b87ad7ca071cb0162be1e44cbc5b8368515`  
		Last Modified: Tue, 06 Oct 2026 04:15:29 GMT  
		Size: 163.7 MB (163732055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:397449b34d87dcb0d8174a4acda35f76fa7cb74e17f89b2a75feec834bb2f6c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16693521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe6f446650f192ee54170e463c273636255ce20b4b6b481a8c27ddce07e4f07`

```dockerfile
```

-	Layers:
	-	`sha256:e07b0fbc205950db7ec547780438345d0678176986b339116394856058729621`  
		Last Modified: Tue, 06 Oct 2026 04:15:27 GMT  
		Size: 16.7 MB (16683312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56c2a6bb97a2e394135bff27e159ddca806397c790cd0c892ecbcb5f4bac6f43`  
		Last Modified: Tue, 06 Oct 2026 04:15:26 GMT  
		Size: 10.2 KB (10209 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:41385ae8b2d5d92f4fe3dd7338af55bbf700849eee39e200b91b2dbab5f6d520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.6 MB (356551200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:817a93228dcac4240035154a0fbed28c8144d30c1745f530aee1da1d41542213`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:44:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:25:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e248a7d56738c8f8ba4b2a2297d1668d1b8e939c7f77503cdecaa73940dfdb15`  
		Last Modified: Tue, 06 Oct 2026 00:13:14 GMT  
		Size: 49.0 MB (49047941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761c309d51cd9500b36765110fe143be394c30a989201f6596a04a7025c10442`  
		Last Modified: Tue, 06 Oct 2026 01:44:40 GMT  
		Size: 27.4 MB (27419864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d5963b94ab4e6bf921eaeb2b8012011d7549f8e187727819d3bb25f58ad8b`  
		Last Modified: Tue, 06 Oct 2026 02:25:57 GMT  
		Size: 78.7 MB (78719921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38565666c9314405ec341a1fc1f77757e27a4d6b714beeee60c9f9f05edc188f`  
		Last Modified: Tue, 06 Oct 2026 03:16:46 GMT  
		Size: 201.4 MB (201363474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2ab03b87250cd82e5267203fd44b4ddcf7dd1669b40151015a5fe05444b07788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17015351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023f215f14773e8b7a4324de423ceb5f3ec1ea95b0b85616cf80813ef31d34f7`

```dockerfile
```

-	Layers:
	-	`sha256:7d08ba22e719281ada7b31bbb053cf98ba8cbba90b6ec4a116713c46363a542a`  
		Last Modified: Tue, 06 Oct 2026 03:16:43 GMT  
		Size: 17.0 MB (17005127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:072ab1e0856fd470b9318d5549add549f42260c4daf1d10ffb5ab6678c536c0f`  
		Last Modified: Tue, 06 Oct 2026 03:16:42 GMT  
		Size: 10.2 KB (10224 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:aad10a7371880b9d50ceac78e090813510a44318edd088bdf2831bd853bc3c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.4 MB (377438301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5cff484a5758bb4abb87f5cec1c9bb4bf5845df6fe34e6a80ed1c91b5e101`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:45:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:32:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:16:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:fbda3f7c32e707d7ecc3e8261c4b9b2b897138641aa26be42e13abbe6cc98387`  
		Last Modified: Tue, 06 Oct 2026 00:13:36 GMT  
		Size: 50.8 MB (50773856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422550af6c534194583569d524526f137a8ee76c087a3303e2a6668986e0b42a`  
		Last Modified: Tue, 06 Oct 2026 01:46:01 GMT  
		Size: 29.6 MB (29635115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dc3ec2421c121b5c971f498b9c9068c45d133ec82933587f4db1e017365155`  
		Last Modified: Tue, 06 Oct 2026 02:32:34 GMT  
		Size: 82.2 MB (82152287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3ef3fef8a666bd8f2dc5b3b97b0543349c56f1268e010d4db6992762795fc1`  
		Last Modified: Tue, 06 Oct 2026 03:16:54 GMT  
		Size: 214.9 MB (214877043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:08ece6797f779da5269cd1eae9cbd1ae3ac5e81ca94740ac5c414abe781df3fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16877327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85541cd61276722e63460ada64f559fadb1d7568aa82bddb46d65da7fa7a48c`

```dockerfile
```

-	Layers:
	-	`sha256:87b9f2468a0b10f6014bd682ca2f92ded63508ecc1b8d84bcecaba2a19fae215`  
		Last Modified: Tue, 06 Oct 2026 03:16:50 GMT  
		Size: 16.9 MB (16867204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1f648f7c646a3abb55dd44e1d6e69681c64760da0bc9a0be41ddb2dc4a986c`  
		Last Modified: Tue, 06 Oct 2026 03:16:49 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:30315dde331ac561ada11ce38f64520166bbaafe4f6f1c12243758e72c352080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377295402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069a40fd555263235d39d763c9b39183bae064e7c94de395687e34e16bb767e2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 04:39:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 11:38:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 14:30:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:24e970ec93a434808c1ff38e4aa6d0236d311b8d999043bdbef87e821423afbf`  
		Last Modified: Tue, 06 Oct 2026 00:12:48 GMT  
		Size: 54.3 MB (54325018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd17dcdcdfa31ee971c352c9eeda807e545d68ec178d69d9e6d18503f5cfa05`  
		Last Modified: Tue, 06 Oct 2026 04:40:24 GMT  
		Size: 30.5 MB (30504830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f1d7ed80421f96899ea58b7ea8a32b3455b7977fc8f9db587ebbc120a584bfa`  
		Last Modified: Tue, 06 Oct 2026 11:39:32 GMT  
		Size: 86.2 MB (86191881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cbc3e938bc097ab135732d78b758a0b41bcc4d08f8e4321101bb62ecc6794f`  
		Last Modified: Tue, 06 Oct 2026 14:32:06 GMT  
		Size: 206.3 MB (206273673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:cf09361294fb9c58696c8fa9e8ef6691542d913c7b9dbc7ac70f2929bd13fd16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16910725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2931e6b4bcb397fdd0c790f5a7c7955723547a9eb34566242c32666feaa918`

```dockerfile
```

-	Layers:
	-	`sha256:51ebab5737df7bd359c74d63fc01729d60dede4d368ee00e367c593d603823dc`  
		Last Modified: Tue, 06 Oct 2026 14:32:01 GMT  
		Size: 16.9 MB (16900548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6e5af55954cbe5ad86c47cc58135d22f66d6e4e3af68a572f758948be970b5c`  
		Last Modified: Tue, 06 Oct 2026 14:32:01 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:470033d342a8f4f3802b8431b6f6e57d796cd9d055920d53bb46110f805f3261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.8 MB (518795934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48fa72dbe895b92778ff3220f92778ae337d1c8038ca35c3f40a6e4436f67bb2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'forky' '@1789689600'
# Thu, 24 Sep 2026 23:35:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 29 Sep 2026 00:09:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 30 Sep 2026 02:32:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cf3253bbe95a1084c47d384bd326e2e3ea3a863f4a42281ad8260ddc95d7b83e`  
		Last Modified: Sat, 19 Sep 2026 03:52:30 GMT  
		Size: 47.6 MB (47644100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac10860ca9f6ee9ff6d460a6f6932521f283b32c9b77cd3475d4d427e5658cf4`  
		Last Modified: Thu, 24 Sep 2026 23:36:57 GMT  
		Size: 27.5 MB (27464051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52708233344dc3c47f7e9e73c553d8f9936b5c6c221a474fe445dc7aa1c07e2b`  
		Last Modified: Tue, 29 Sep 2026 00:13:37 GMT  
		Size: 78.5 MB (78535451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64196d62b52fd78ee7db2ffc8e5985887e6c05c0a4edecc59e337132700b6e98`  
		Last Modified: Wed, 30 Sep 2026 02:49:48 GMT  
		Size: 365.2 MB (365152332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:5fd566457823aa0ce5bd284fd16e497e9c2fdf591e524d8ce665a941e7aa29d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16980502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df108a837559002394cb6817a37e0da9a6ee26c253c8126f81d0f064e370521a`

```dockerfile
```

-	Layers:
	-	`sha256:818a9bb62a562b3443e5bd717512de8f010854225fc46406bb83fbb8dc85bc10`  
		Last Modified: Wed, 30 Sep 2026 02:48:56 GMT  
		Size: 17.0 MB (16970325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d723666b252abbeaf162de01f8aecf6bcdecd10e3b5e742700b8f2fc85db939c`  
		Last Modified: Wed, 30 Sep 2026 02:48:51 GMT  
		Size: 10.2 KB (10177 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b52b6fa609971144716800520c4320efa98217bec1673198ce7d742a71b44e99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.4 MB (340388821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701fc3fff9deec99bc2b629a3e33b768549e7fa06b8498375aec0882d3b2fd74`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1791158400'
# Tue, 06 Oct 2026 01:57:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:14:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:0ee6ac8b43a7e6254145fd3ccac4ef533ea7f9092fc66943615402bc3f1a9cc3`  
		Last Modified: Tue, 06 Oct 2026 00:12:14 GMT  
		Size: 48.8 MB (48824602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeeb19ed55d4ce1bd9dbd6bdafff0f8ffb1298554f19814d477a37656269ab31`  
		Last Modified: Tue, 06 Oct 2026 01:57:32 GMT  
		Size: 27.8 MB (27800571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f2cc60bdf6ad1b4faf4a3b48596ccfc6d72b21f15e979ee076556d6c1b0ddc`  
		Last Modified: Tue, 06 Oct 2026 02:38:29 GMT  
		Size: 80.1 MB (80137786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f969e394568d0c924c5e7fb8799ae27bdb49f28e27e1aa521d1c16c744825765`  
		Last Modified: Tue, 06 Oct 2026 03:15:22 GMT  
		Size: 183.6 MB (183625862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:testing` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:946cdd00548c3af9676fa10054618e023858e98b6dad7959ab664f2c8d760514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16713587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea799152224f28c6504c43193ad34a390e87e65e6440a3f3ad8b301d7a8f7ce`

```dockerfile
```

-	Layers:
	-	`sha256:d41aabb589e6a62eb5f7aa40c99aa072c048eb5735cfeba384b6e540d581ed91`  
		Last Modified: Tue, 06 Oct 2026 03:15:20 GMT  
		Size: 16.7 MB (16703442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c45cdda7a09a86b9db5577938bdc6913b5de129f1560fe872a59694a3cab17`  
		Last Modified: Tue, 06 Oct 2026 03:15:19 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
