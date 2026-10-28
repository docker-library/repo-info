## `buildpack-deps:latest`

```console
$ docker pull buildpack-deps@sha256:8db3a3d1e68e0a88ed31c2256d0c0e3b127f80685e6b1f3a9bb31e22638b5e7b
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

### `buildpack-deps:latest` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:0766bfc10a5b87c895c6f675bb8dd09067821b4de144b047a6d029e0c366ecac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.0 MB (379995230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd16f2f37b3534f30aa03499b055aab2644053c0671f428e265efa2f99f8af0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425148f8d5eb4d6dad76e4d080661ed0ad6ed5c270bf028517e6dde8bd0952cc`  
		Last Modified: Wed, 28 Oct 2026 03:16:22 GMT  
		Size: 237.1 MB (237134175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:6b7f28a8a07deeea5af05da9897e74482d748646ec53c7a4ee8955b74b8b588d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17213798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5d822a1ba075d0d054c830b0ceb2852ab70249108561158457975cdc2f68fb`

```dockerfile
```

-	Layers:
	-	`sha256:48af2be1f1467fa681297dd708d3dd8219fd65e0e8115bcdad80dceffe5cd317`  
		Last Modified: Wed, 28 Oct 2026 03:16:17 GMT  
		Size: 17.2 MB (17203337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c86a68b3484bbe44ddf83a62014a05a243701b2c4fa1dfb7ff8a86bfd1dbcb2e`  
		Last Modified: Wed, 28 Oct 2026 03:16:17 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:f5590aa6cfe9840d4a661f8c697653f519f12945f7f40825ffab6f63f234b77d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.0 MB (343990706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9800d96782bbab7680b4cfeac62f319d61f8af07b406da235344928f72eaaf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:40:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:45:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:49eebe9825563c4d645a935992f1602e05bccea6dfe4c79e51c1fda75045c88e`  
		Last Modified: Wed, 28 Oct 2026 00:10:20 GMT  
		Size: 47.6 MB (47576128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a6d424e5dc332d064da509d1423ae9e34dea3a27d50d590dd9e7527ae50ac`  
		Last Modified: Wed, 28 Oct 2026 01:40:12 GMT  
		Size: 24.4 MB (24363879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3595aedc8fd393489fcc8e3af04cf51a91911b54eff514e9b1e97fa8cc8883c8`  
		Last Modified: Wed, 28 Oct 2026 03:05:35 GMT  
		Size: 65.4 MB (65357928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58344f7dc5944edc17869cc5f90807746705ebf3d061fca6f651855ab7b68453`  
		Last Modified: Wed, 28 Oct 2026 03:45:56 GMT  
		Size: 206.7 MB (206692771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:699dcadbb0d67dc80a7e4367a513b994b02cfc4e0bb1f082d34f88ec291ba28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16976070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0d8b634617da4e797b4e7841f9c92e87978c701e8d2af251d5f4f81f75a8d7`

```dockerfile
```

-	Layers:
	-	`sha256:6977350b12452e9939344ae759ea6072f2b93a96b86b984050fc6e9dc77e8ad3`  
		Last Modified: Wed, 28 Oct 2026 03:45:52 GMT  
		Size: 17.0 MB (16965536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e78193c73b5be5a250013b9687a44939e8fe53dd6c9dd648c107ab384b551202`  
		Last Modified: Wed, 28 Oct 2026 03:45:52 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:319142d03dc5f5a119eedbb8fed819ea128342ff86e27e68662f994157a21b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.4 MB (326438933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41dea57b0c45e54017f121be3eb1afdf270726266c5482aa21e3140d7d250407`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:13:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae0df74453e7578f0b532f5491f76a5ccf0d1e6e238ea46cabc45cd3faac6f4`  
		Last Modified: Wed, 28 Oct 2026 04:13:45 GMT  
		Size: 194.2 MB (194213062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:9013a1c13faeb5694f11d98cf9103def7f1493c161c5098602d35eadc61b0327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16981862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b51ecbcd2b39daf231e690bf9f5ab9541e4fa042362715a46e450bf58bcacb63`

```dockerfile
```

-	Layers:
	-	`sha256:f5d4888417bd07146d0d0c1e8ee9205e24fd196b8bf3979153ea50ad541e560f`  
		Last Modified: Wed, 28 Oct 2026 04:13:41 GMT  
		Size: 17.0 MB (16971328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822190dba3cf45b84f92b0d6d08ae854b615ce41e2be604a3ed7aa6093d50d4e`  
		Last Modified: Wed, 28 Oct 2026 04:13:41 GMT  
		Size: 10.5 KB (10534 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e95290ae09bb6aff3a9bd67b687a38c450cc256f0779da2ed9926dde4167f483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369582317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea96566756770d9be4846f51a8cd7569918dd79a17f1ff1b76bf66d8dc2dc1a0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:17:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a48e1a423f7b0196a5eeb30fa9312d4ddac8315491bfd1dec87951691b59309`  
		Last Modified: Wed, 28 Oct 2026 03:17:45 GMT  
		Size: 227.1 MB (227134615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:2fe9cfe778e8987d9f0ad233a1599c3b47cf5b4e4b1b79ec8e5d66598a21094e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17297549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e863de7095c31e940a9e4e7ed8cedd98c6eb570212838632d824bf3fb2ad24b`

```dockerfile
```

-	Layers:
	-	`sha256:fc85f38042553188f12e2e232be2ce8ea5f19718be0196102217905e36e64764`  
		Last Modified: Wed, 28 Oct 2026 03:17:41 GMT  
		Size: 17.3 MB (17286995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b231dbf93bd864c9b61a3b601fe1e27d8da0349f28660e4d6d9b90cd982c73d`  
		Last Modified: Wed, 28 Oct 2026 03:17:40 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6e47eed5e3bf6ae60493c3067d1a807726207e60684074cb605ca439b506764a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.8 MB (388834353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568bf2d89509da5f9d43cf2548ccb88dc4ad162000840917fb0e7b3ae368ace4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62933a21b583195e4f59a0ffcfb66f567701192ffacb0e69c5e6b700655a5147`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 26.8 MB (26799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4462378acf938c7c0307009b8bfe3cf23a2b4953f37ac5df637e8266f3ac56`  
		Last Modified: Wed, 28 Oct 2026 02:28:54 GMT  
		Size: 69.9 MB (69857152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea71845d228c6088a2dfec056b0829f75c6e36f4c00fb865adb1f84607edf6e`  
		Last Modified: Wed, 28 Oct 2026 03:16:39 GMT  
		Size: 241.3 MB (241256135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:d86805dd7a5794729c3531f314950c7929c828c43dd93f1ead4b479d4028e6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17183382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510c94617566e6e67062e47f21d7b0796924b9a0b868de26e42df12d7a4aeece`

```dockerfile
```

-	Layers:
	-	`sha256:f9e59dd5367662072bee6d9972640998f545c01f52edb36cb2643ab784cb55ff`  
		Last Modified: Wed, 28 Oct 2026 03:16:35 GMT  
		Size: 17.2 MB (17172947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6adf43307204f6acc69a0c1d832c0a4d5b755614f418dc10ccf4a89067ed30d7`  
		Last Modified: Wed, 28 Oct 2026 03:16:34 GMT  
		Size: 10.4 KB (10435 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:56d57d338aa163f591411c5af881771c6b702a290f56ffaf2cbd5cf7b1d15437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385571424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2169ef7f994ab8ae9f7138d3fa43894489c904a93e4cc3357b7b747b079de6e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:05:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2621d2c198fe09079ae61d78184c6cab9e61ef89eb433037fa2f84d0cccce35`  
		Last Modified: Wed, 28 Oct 2026 15:07:01 GMT  
		Size: 232.2 MB (232232773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:70570a7a56cd29ca0c0c6e7383975440f35918b843cdbaba172b97641567e761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17199353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052091b7194b15c9e9f29c5cd7667fac00acecde769f093fd063188c937521e3`

```dockerfile
```

-	Layers:
	-	`sha256:018b6fe31c303b1a1d6105fb12148412b2ad989d433f125312580b8ef5a3c4e6`  
		Last Modified: Wed, 28 Oct 2026 15:06:56 GMT  
		Size: 17.2 MB (17188853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58d8370b202586ee37ed73f3e7b4027dd8367409b56805eac848501b95e55745`  
		Last Modified: Wed, 28 Oct 2026 15:06:55 GMT  
		Size: 10.5 KB (10500 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; riscv64

```console
$ docker pull buildpack-deps@sha256:444ebd1a1c9fe48701d787a9345fd466464cced2b1cb0b5a11925cdb10d93407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.0 MB (464018134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d631dbeb61438304db643d9e2ee3b13f35b6ea7dd64e0468387f705d0391151`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Thu, 22 Oct 2026 05:15:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 24 Oct 2026 04:05:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 19:51:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:e2f042c7c15ffcf761b9add85d4edee585d3d2835fa5118e05f7a7803f078b20`  
		Last Modified: Tue, 20 Oct 2026 23:47:25 GMT  
		Size: 47.9 MB (47876636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32139541f4549e36734c5a88277feea7f893f4a9131721e90b51bf8f6e15227`  
		Last Modified: Thu, 22 Oct 2026 05:17:47 GMT  
		Size: 25.0 MB (24973515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b2622bb15621b5ef42ed7c0e2e08f6323cce082c63a1a767ea4a063cf866d`  
		Last Modified: Sat, 24 Oct 2026 04:09:18 GMT  
		Size: 66.7 MB (66713038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5746c21797d5eedbf88d05b1e070cd418cc051309c96b0e48ca311ad93874bca`  
		Last Modified: Mon, 26 Oct 2026 20:08:04 GMT  
		Size: 324.5 MB (324454945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:a57d1284f8f630f28c9bb7c8d938e3aaa902aa3c194af48e115d95f58922cb05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17269937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc0ac32273e208446ea04d91f77cd38cf124b8e1e862567c84affb0dd726fca`

```dockerfile
```

-	Layers:
	-	`sha256:8f3ae196edd69abf9463a0156ab4d95f75ff54e7f8f658b708c742cc1599c774`  
		Last Modified: Mon, 26 Oct 2026 20:07:20 GMT  
		Size: 17.3 MB (17259438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbcdf5aa1effb781ca266fbf3d3798134358c70267eb46fb67d67473e3209c03`  
		Last Modified: Mon, 26 Oct 2026 20:07:15 GMT  
		Size: 10.5 KB (10499 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:latest` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:7fc8f94fa0b0e062382676c1bcb8c37b1b8e11e0b02031488de94d5f93957bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.5 MB (352517379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fab916e430224930df59e2cd5e7866d95ae793492f012a0125f85c5b24b198`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 16:48:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbcc8858cde6193263947c31b5152380d626a1b64ea15511915cf0be7d9cec`  
		Last Modified: Wed, 28 Oct 2026 04:12:36 GMT  
		Size: 68.7 MB (68663295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adeaf67b059ddfeb19f0c204f11395a066c7e1581c6ac5af4783a99e69eee49e`  
		Last Modified: Wed, 28 Oct 2026 16:49:43 GMT  
		Size: 207.6 MB (207566449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:latest` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:3e1a160477bb61873610d1d0ecd16e2698589497bd63b1f52910108adb887a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16991031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df5dac5608a981473b50f15473b9061db1f6c8f913e1340c91efd84bfd9d5a0`

```dockerfile
```

-	Layers:
	-	`sha256:234cda9d7b4c25f7be23641a265ff60a84a54f0f6dc5a4a23f5f799ec9e007e0`  
		Last Modified: Wed, 28 Oct 2026 16:49:38 GMT  
		Size: 17.0 MB (16980569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14c7abcdb45f0aec8c22199000ac1ce14a3339ab33c7bb2d38ca01bdf02ce4ef`  
		Last Modified: Wed, 28 Oct 2026 16:49:33 GMT  
		Size: 10.5 KB (10462 bytes)  
		MIME: application/vnd.in-toto+json
