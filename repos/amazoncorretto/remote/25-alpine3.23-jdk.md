## `amazoncorretto:25-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:846961608bcf658abc7d9cc452bc5037110718d6a6b78d108b38f4f261226abd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9fe2fd7e7b6712ef5f4b9fabfa2bc3c5bf7f57705ea9ce4979f8e9fb1e1dadf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185346410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f30b408cac1774962307a34b85293587e0984f6aa7388e0f8a23591d9dd8e519`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:09:34 GMT
ARG version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:34 GMT
# ARGS: version=25.0.5.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:09:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6002b716ba67dacdebfac61a422cba03101090bae23a81f0f8c881088a1c2e6`  
		Last Modified: Fri, 23 Oct 2026 18:09:54 GMT  
		Size: 181.5 MB (181494183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:03f5e54691698ee4da3fd3ac26d20d15dcd3863accdb32328eaa3422372be3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.9 KB (600871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3828bd77efd62c4d7e3a16ba51fef30a5d23566c17c908858c46dd6cdc6cee2b`

```dockerfile
```

-	Layers:
	-	`sha256:e1cdde175d8a417c54636657172ec0ff824e8b9dd81f0b19cc5264eb05c8227f`  
		Last Modified: Fri, 23 Oct 2026 18:09:50 GMT  
		Size: 591.5 KB (591500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21861e9a7399c4fc5046176474a9f74395cf5b9149c7f28b5c601e7e3a6e7652`  
		Last Modified: Fri, 23 Oct 2026 18:09:50 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6110b3226e327bd3218181d1d23637ba400f6f69cb31ba1418c0932bd1819dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183265319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d9550ef83a68d678b561f800ef8c9c2c44af364319bf69e0c683346148d115`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:09:27 GMT
ARG version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:27 GMT
# ARGS: version=25.0.5.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:09:27 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:09:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625cae048ea3f6c8b109a5d92f852fb6018c111f1b116e1ac118c861686609c1`  
		Last Modified: Fri, 23 Oct 2026 18:09:49 GMT  
		Size: 179.1 MB (179075825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:36327797fdc1ebaae9e0604b8f573a435f3df762e93ef0d89a11f15c2391b34f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83b9789e222d5521a9566914bc4ce5dfc455fe807cda519fe5549ac788eb048e`

```dockerfile
```

-	Layers:
	-	`sha256:8cff577d1e2d68ec2db7d61a153a0f1c2dac36cc868391602c27b56db6851b8d`  
		Last Modified: Fri, 23 Oct 2026 18:09:45 GMT  
		Size: 590.3 KB (590266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:542f4c9b6e4a8f7549b9004fffe755cea7c47f8f90858972139a5aadff5b526f`  
		Last Modified: Fri, 23 Oct 2026 18:09:45 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json
