## `amazoncorretto:8u502-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:ed85af3e8c340b3e2c9398634cd7e17b609998404b242781097601e5cb471878
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-alpine3.24` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:943e7ea69f95b2a99c7a1e77bc27a9b9483c41db9c6af7769c7dfbb12be62db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104672163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd219e48a296b743e39b38c5f215dcb66b9a094243e5580fb39083f16091256`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:56 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:56 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:10:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d918bc0343ea4b65bf85153e1ae80abedc865f26dd0744bd55b65e007792f897`  
		Last Modified: Thu, 23 Jul 2026 23:11:09 GMT  
		Size: 100.8 MB (100825772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ec7f1bd10404cb66b151d3c98644e35a0e7e28d4a4e6a3830f77c69771f48513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbb55a6de695d641b511529aa4e7dba9c69e85ab6cd0a83cba222ffa6a5d1934`

```dockerfile
```

-	Layers:
	-	`sha256:46ded56e192306304cc1bdedceb3e498d1e66fb5fbb2cce282ce37d1779818b2`  
		Last Modified: Thu, 23 Jul 2026 23:11:07 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d6678705fabe3d12dd4a1375e4c43fe737c9d8675238d3c6652afa6989ccb3`  
		Last Modified: Thu, 23 Jul 2026 23:11:07 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ac1f2474bba4007298d7020e33d292048f4f9a9169b6dc447cc85f24f0211a86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104840758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69875c166ee4cb7d18306f49960df2d62ad08b66d24045aa4f6452c972cd49aa`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:34 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:34 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:34 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdecdd98a8fa251b343b6d962c95627b160439151316f30ef7aa4373e951de3c`  
		Last Modified: Thu, 23 Jul 2026 23:12:48 GMT  
		Size: 100.7 MB (100657721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3551b6f71eba637daa8cddf6fbed1b67df916a53db528cd042dbc20b7d8f8724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845256f70f9697f944d05143157b199193445bca3e1c4f194f3fe6884c5627c0`

```dockerfile
```

-	Layers:
	-	`sha256:f5039cb74c0c2dbfd7e94708fafe9d65078c5096cf1b497ad52effb3c84ad6a6`  
		Last Modified: Thu, 23 Jul 2026 23:12:46 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:760736fbe129638a189f48d1cac47a0c86120b9c155aafb66269286526bfead5`  
		Last Modified: Thu, 23 Jul 2026 23:12:46 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.in-toto+json
