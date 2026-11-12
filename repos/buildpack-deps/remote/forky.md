## `buildpack-deps:forky`

```console
$ docker pull buildpack-deps@sha256:9483ff307cc823af0f579837ea2e04458d2b3c5ea5258ee67dcbb56eb597e5b6
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
$ docker pull buildpack-deps@sha256:ba3d11ea19a5581b0879334b1ae9df840a9cb1314ef84d5a436261f010773bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.8 MB (368838366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92c811bd9f1c87be0a0023c3e80006d4871b672d34067e70a32f283d4c91033`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:38:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:bf9af81856ea5706eacb27a112348407de5599f59bcd9cd0be856e662cd8a491`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 49.8 MB (49837510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34adeb06c2a31397c5d2536ff0284a8c250aafe6291026b02f01a24762a15dc6`  
		Last Modified: Thu, 05 Nov 2026 07:38:17 GMT  
		Size: 28.4 MB (28403902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0999058e7bd78f12022d99b9ff1ecc345f9424fdd054db9214a08eac5e3eeb`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 80.5 MB (80450900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a6b4c4749cb5f0d6910e834d01531feb68ad4ab630a32064676d7f435c953`  
		Last Modified: Thu, 05 Nov 2026 08:54:18 GMT  
		Size: 210.1 MB (210146054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:359bc4119e3c674cc55d8553e953223e8ab3060142abb2a09a774804b22bf432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16892290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cece0b17491dd92e03da54cf746268d349437ecaf3c51b4b0c78dfff62590df`

```dockerfile
```

-	Layers:
	-	`sha256:55f6f05b4b639fbe8677630bc7c39fe0b85a36a76a384972993f7c70ee1b28bf`  
		Last Modified: Thu, 05 Nov 2026 08:54:14 GMT  
		Size: 16.9 MB (16882145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:716b139f9a6a556ddde67dc44d206335d08da4ace7237c7635d525d8717a2d02`  
		Last Modified: Thu, 05 Nov 2026 08:54:13 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:831f441a7fb9ec2f2651ab4a5f719d099f2b7e86dd27244e4f67c170e541dfc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306834350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88c44c87c23ddeed286b0bda3df60263999a578b8f38825e91b4083a654e6c1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 08:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:23:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:f4571deac5636a396a2163d6b48f873d6a8a303954c381d1bc5b38f11cd16c10`  
		Last Modified: Thu, 05 Nov 2026 06:16:03 GMT  
		Size: 46.0 MB (46026021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74027cb3ba07a0f98d9ab9adf2ca28c59642b10768028ace48ac6d161679e66`  
		Last Modified: Thu, 05 Nov 2026 08:18:37 GMT  
		Size: 25.6 MB (25626366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa0bc3aa00a30f827098d36970520f68cc635976ef5fd2f7d56bd9984417f04`  
		Last Modified: Thu, 05 Nov 2026 09:23:54 GMT  
		Size: 73.9 MB (73902485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80bffad35dfa4af0c43ac1d3eae332b5932aa52da9c4c8527eb2d255c3efea6a`  
		Last Modified: Thu, 05 Nov 2026 10:13:16 GMT  
		Size: 161.3 MB (161279478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:c22c3ebeee816984bd99c129bad53ddb9f4c15c8423da32b9da8e0ba05eef4d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16677471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28981168fc6b758a70addea5fed68bf4348cbd4bdd23ea17392f1a4d007f9650`

```dockerfile
```

-	Layers:
	-	`sha256:01690659efdc9b340c7d4d87d1cd3f51b341324b9dc6f63238a67d9cd2651e58`  
		Last Modified: Thu, 05 Nov 2026 10:13:13 GMT  
		Size: 16.7 MB (16667262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88f44e7da4015950f6962db2c6e536baf5680d233bfa183f0f251b8117ec56ec`  
		Last Modified: Thu, 05 Nov 2026 10:13:12 GMT  
		Size: 10.2 KB (10209 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f6c89a9cbcd0679e103c78df5b83fefa7bb183de8163a6929c6c3a003ca20e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.6 MB (353635144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042714b217647fff3fca7b74761de509846dd9fb70bc7735e0acf107a057f6b5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:42:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:28:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:779a084ae933b1cf040630a0e7bb02d2f926122fb718be525ae05bbcdc26b6df`  
		Last Modified: Thu, 05 Nov 2026 06:15:48 GMT  
		Size: 49.2 MB (49180235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8135f0fcea163d1131a17fb32e94824499ebd8b67b4fb8cf37f4bc98c95fc2f`  
		Last Modified: Thu, 05 Nov 2026 07:42:10 GMT  
		Size: 27.4 MB (27354458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c66e76dee062588fb59411d96090f681332ebaa78686690c5544a17f096b7fe`  
		Last Modified: Thu, 05 Nov 2026 08:29:15 GMT  
		Size: 78.8 MB (78789345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0797fa1d073916fa03c4a80a6b59e40dc2de43a9a139b53c5ed8e471df4ee02`  
		Last Modified: Thu, 05 Nov 2026 08:55:01 GMT  
		Size: 198.3 MB (198311106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:ae12afd2a1518f0c80c9e926c3e36eca9bc97d39129c13ebb89d13b13c02a1a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16998689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d562d0a3212b59d36b3ed76792f59e0c306f5096bf88d82b99c5c9eb5a3324f5`

```dockerfile
```

-	Layers:
	-	`sha256:8e054d14687eae36f7bd7f5e7ebb0fc434963003b83638abf01dae127062da89`  
		Last Modified: Thu, 05 Nov 2026 08:54:57 GMT  
		Size: 17.0 MB (16988464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3964a67480bdbdce98ad844ee2e14baea6dfe7600bb7a4f45e502a6f473f12f5`  
		Last Modified: Thu, 05 Nov 2026 08:54:56 GMT  
		Size: 10.2 KB (10225 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6b929769b4b67e90ba83eedaa620dfaa085748183ece778455cfaff153e26dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.6 MB (374622178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7e80ac96d32929c1f41068ef8fe66544c18f8601ee986dc742a290f7ea8585`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:41:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:88279104588a0d5efe47acaa871a7b60ac245f575d2fd177222855c5f58e2e1c`  
		Last Modified: Thu, 05 Nov 2026 06:16:02 GMT  
		Size: 51.0 MB (50970700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39dc637507b579a05ec1c9ea890e4b42ebb92e8acf8251a5fa89480c3d621ec4`  
		Last Modified: Thu, 05 Nov 2026 07:41:29 GMT  
		Size: 29.6 MB (29573455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68a54e1067158e55f87663c75b99f1e111946b4660b38ffc0a3d5bff9ab2a34`  
		Last Modified: Thu, 05 Nov 2026 08:24:52 GMT  
		Size: 82.2 MB (82219096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b7628ab59b3255bd970c4b2a47e982dd944d8368943fa681d47afbfd08c2a4`  
		Last Modified: Thu, 05 Nov 2026 08:48:27 GMT  
		Size: 211.9 MB (211858927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:e6facf38470e5ce3acad48c32b4ce0b37127d7f53d2037e45b1c196faf28ee2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16861311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:349ecfb6937b4bd8d1520dcf4009423f334ce2af6976b574e9ecda582e3d3f37`

```dockerfile
```

-	Layers:
	-	`sha256:9c4bd61d933fa2c94a189b0e60485d1f9daf68185543910fd0519cb6923faf67`  
		Last Modified: Thu, 05 Nov 2026 08:48:23 GMT  
		Size: 16.9 MB (16851188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b040c21fd314d6a2a6074c5d9054f9dfde70e50ee87adad410d983e70839476`  
		Last Modified: Thu, 05 Nov 2026 08:48:22 GMT  
		Size: 10.1 KB (10123 bytes)  
		MIME: application/vnd.in-toto+json

### `buildpack-deps:forky` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:ead82008529b28c5587e5d228eb86ee9c8272565d3b6d1c03757415351a68378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.4 MB (373376547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10673f480975dc183fc6e96127f785a326f0fbc996f105b6242ccbdd563dc271`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 10:08:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:25:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:47:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:9ec24ed89fd499a55bd6dbf4d5bf634cd52f8162f30831727cb57d35595f9ca2`  
		Last Modified: Thu, 05 Nov 2026 06:15:10 GMT  
		Size: 54.5 MB (54524271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1182c08a2b24dc381354b1007527c1b1b3c8308810b4dba7d8d5f5e8b13320db`  
		Last Modified: Thu, 05 Nov 2026 10:09:21 GMT  
		Size: 30.5 MB (30488710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cfb55da5dc0f00dc768ab2cad3541a19591b325ebab4b000ffc13b45412a92`  
		Last Modified: Thu, 05 Nov 2026 17:25:54 GMT  
		Size: 86.3 MB (86275031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6d2ff4c62f97a8546243ceb1ae691bc2a3744674c450dedc1957f045f37841`  
		Last Modified: Thu, 05 Nov 2026 20:49:09 GMT  
		Size: 202.1 MB (202088535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:f74b78d18687100a563cb951734a80f984b372c5319d4be623f1b7f799fe17fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16894639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b0858a36df8c42ea776d7508d50ccfd375e377e458d386bf79764c25e729fd`

```dockerfile
```

-	Layers:
	-	`sha256:1da0f804926f1987b24f36023bbe08915b9ca99341128740b2108d2c30e9c99e`  
		Last Modified: Thu, 05 Nov 2026 20:49:05 GMT  
		Size: 16.9 MB (16884462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4eb720a1ff5306638b812f6874338e3754927bc48b68bc0fd1f99f6f977b47f`  
		Last Modified: Thu, 05 Nov 2026 20:49:04 GMT  
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
$ docker pull buildpack-deps@sha256:7c22230fa31048c88d2bedccec49a582d64448f0d76b245690caebe7d2ba7bb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337770286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b934176ab3667007c0cb717062ae4d52b473fb0221219175df40c78ad12c89`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'forky' '@1793827419'
# Thu, 05 Nov 2026 07:56:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
```

-	Layers:
	-	`sha256:cc8ac2db6c9fd29c12c9ec3701cdeda90a0db47520cd2c224978701e217d1ff1`  
		Last Modified: Thu, 05 Nov 2026 06:14:44 GMT  
		Size: 48.9 MB (48937313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dad4e05ab9117aa621e40ab2282d406dc226ef06ff442de712d5e449395fd04`  
		Last Modified: Thu, 05 Nov 2026 07:57:18 GMT  
		Size: 27.7 MB (27737893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d010e522c3d46d1366ac0e8ea44eddd1c52d09dd067c8659051e1693ddf2665`  
		Last Modified: Thu, 05 Nov 2026 08:49:11 GMT  
		Size: 80.3 MB (80287566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5086794c25b34abfa40b05b385b3c844e1f450c831b0bd8a9af4633493835f7`  
		Last Modified: Thu, 05 Nov 2026 09:21:49 GMT  
		Size: 180.8 MB (180807514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `buildpack-deps:forky` - unknown; unknown

```console
$ docker pull buildpack-deps@sha256:0d514e64f9c237647539a2f614f15f96c0534aa4ec33751d93911ffd7412e82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16697541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0765a7f69b73e8230c856d9d92bc7b1542170811a1b657c0dcc9456f52009f4e`

```dockerfile
```

-	Layers:
	-	`sha256:077a1a8b2e941162665d671d370dfc1a2bcc6fd756d6c9863ae434c179e7378b`  
		Last Modified: Thu, 05 Nov 2026 09:21:46 GMT  
		Size: 16.7 MB (16687396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53415c5db120ab174dba09cb8bb5715b3860855a0151f4c30ebcefa92257679a`  
		Last Modified: Thu, 05 Nov 2026 09:21:46 GMT  
		Size: 10.1 KB (10145 bytes)  
		MIME: application/vnd.in-toto+json
