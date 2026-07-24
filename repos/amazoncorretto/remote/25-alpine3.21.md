## `amazoncorretto:25-alpine3.21`

```console
$ docker pull amazoncorretto@sha256:8d95e20d1aa7c1327b3394eca08d8d950d3e0de741e76abd55ce71acf0a15cce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7cde2847acc738db24b1e2ed42b612b406e473487c72546d1b60674dafaf6aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185129788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c31cb903d785a3287e4eabbd69bf52e77ab51cade53156c2fd4611ee5f9859`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:04 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:13:04 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:04 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42fce01d9f00ece6e35241b4f47081c0883b0054f67e7d8422b7744ec223347`  
		Last Modified: Thu, 23 Jul 2026 23:13:25 GMT  
		Size: 181.5 MB (181482913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9c4578208a6d88855ac5b306007e3df025a60f7b47337e38ff2cfef2fdc256e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2550426daee5c4a79016c38504035dd52f7bd4aecd29f946ef6bcb97b909118b`

```dockerfile
```

-	Layers:
	-	`sha256:666fc52c368b9637df4e038f7c752876812aff58dbd72190dff465a985c67798`  
		Last Modified: Thu, 23 Jul 2026 23:13:21 GMT  
		Size: 596.2 KB (596206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7b9db00431bdf453e91fab234090bc434c8109eb900c196c0bf29949b290685`  
		Last Modified: Thu, 23 Jul 2026 23:13:21 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4e4a740c40e23792d0a7ebe4c015d98c995b015eaf5182e5128d685f107b1d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.1 MB (183054066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b571c15671edd0941e5014604f3a6d89f683a3001d8786730e290650f7f2a1d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:46 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:14:46 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:46 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ae14f4a91b0247ae4a3207d3bd63982fa0b03563b597793516e17a4b15da3e`  
		Last Modified: Thu, 23 Jul 2026 23:15:07 GMT  
		Size: 179.1 MB (179059601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f47cc87b475fa879100f2fad6bd60a4fd6f5cc1fcdcf14bb1606b90d80ce4e74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5f532329b72b295b5ea8ea21a66dba80879058ab4676e2c65105da68475888`

```dockerfile
```

-	Layers:
	-	`sha256:181930afef3110cf4ab021cb5a2dbdb94d825f36b680a7ca1721945d6e0304b6`  
		Last Modified: Thu, 23 Jul 2026 23:15:04 GMT  
		Size: 595.6 KB (595622 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b1274ab6acf8d2e0bb1874bfbfd6e0bcb9384ca702c602a961457f329a18388`  
		Last Modified: Thu, 23 Jul 2026 23:15:04 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
