## `amazoncorretto:17-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:8d6df138906b635b6e721d7f65e82b6b83e67f9219de77bfdc8b63d79ee45490
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:874796d0f46686bf148c51f2177249710395a2fc54dd01ce8a1b4cbb9c933bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152816740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144a5da920ee269af0036c9ef53649649911f4788ceca6a8f3ef4256a82d3478`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:19 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 22:56:19 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd62eb337d388c4b18b1f14b71ca7b7b6c97c4a1da30cda8bbafa4f4b99423c`  
		Last Modified: Wed, 21 Oct 2026 22:56:36 GMT  
		Size: 149.0 MB (148963631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2f3f0eaa7c97174dc40f2d71544d4a3342d7926c117e884471276f19e6e34743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd9e5fbe0ac127dcf8722b89d9256fb2c13d062951bd2b8787eab03f304ca13`

```dockerfile
```

-	Layers:
	-	`sha256:9150f8d56192382c6f017bde7c48e9280532667cfd818e3654f199178ba951b8`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 583.9 KB (583886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a7171c1904e8028f89b713ae9ca1ec6939cfb1d4c2018a0f4ab82428dcb321`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e8a9c33b92be944d16595f89f8e0eb414d6b0d81535130bca7dbb634c0966824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151573815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a22072da1be0f8c1054a765d4c35783de3efdf2c51e094e8a203b535c2a7415b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:48 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 23:19:48 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 23:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:19:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 23:19:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d511ed3f409074aa7d6c2077c5f80c4e2fef2d45d753ceac40374abf9cf500`  
		Last Modified: Wed, 21 Oct 2026 23:20:06 GMT  
		Size: 147.4 MB (147383327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fec52fab4005e02fe9b29155c59b93038018bf047c4228e867ca1c2330c9197c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ed711bb3b47ea2d630ae47fd9c5c5636eba8a0011b155c56204b652ffab53c`

```dockerfile
```

-	Layers:
	-	`sha256:f3dd37f9f2312c5c15f69a4d884e91a05680a99f8445d9b33846d61aec7b9742`  
		Last Modified: Wed, 21 Oct 2026 23:20:03 GMT  
		Size: 582.7 KB (582703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a32a5b959f892e7a61ba51cc422266d5f84e49f6bcfd51f034da8fa65110411`  
		Last Modified: Wed, 21 Oct 2026 23:20:02 GMT  
		Size: 10.8 KB (10838 bytes)  
		MIME: application/vnd.in-toto+json
