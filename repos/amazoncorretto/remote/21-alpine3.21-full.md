## `amazoncorretto:21-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:2daad3ecfdf3df1e96f96d80bec39002c3d436c6e24d7c3fd0beaad0dfe9ab38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0b13b389e57666368663893db2574c1001bbc8616426f2c584de72464d3b1ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166080704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe96bcc3f8b5d5c53cec02cee250f9fa9ca42cdf4cafe2d479ff1d2fcefff1de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:27 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:13:27 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:27 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d42b00eb4730af5af60aa1a69b6d60ee39e36d1dfa2699fd07c4a475671b33f`  
		Last Modified: Thu, 05 Nov 2026 19:13:45 GMT  
		Size: 162.5 MB (162455302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:18bbdc5e4249e66a77d2c879e5d6957de1791299319697d8530df2f805753792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1673e1364d3bec0c0fafb83bb7b9587b5adfb7a53721b9ac8d039f6472c193`

```dockerfile
```

-	Layers:
	-	`sha256:f04fa2443becf846b1191d106ce844620723c7966f7c9ea1ee0e5646f286cd49`  
		Last Modified: Thu, 05 Nov 2026 19:13:41 GMT  
		Size: 587.1 KB (587118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2ce60d2bbd867ece3b1a5ba2a8ded23b572499a342b63e7f2443e4435a32e0a`  
		Last Modified: Thu, 05 Nov 2026 19:13:41 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:72d705e680e41a456a50aeffadbeed1c79631e12e63298b3b19284422a23a0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164441953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80a15670bb06c39e03cf14bfcb08b394ef383e820129a2acbe42dbd4fa66ba2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:17 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:09:17 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcf0c6b5303f202c371c05ee9084c83d15d65eb00e6645d6b81b717e983abad`  
		Last Modified: Thu, 05 Nov 2026 19:09:36 GMT  
		Size: 160.5 MB (160467530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:371513d0252d3ba8d45f393304b7c6b23c289ecac88762827d2ed9f5a0b10aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.0 KB (596020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc378245b99719928f2794a051a63df1c7c602aea4ae10ad3cb600ad70cf2e3c`

```dockerfile
```

-	Layers:
	-	`sha256:b35f1d9422838116a6c6a05c1c5c3dab8e0032f7f72ae07b7ca53f77caa0f473`  
		Last Modified: Thu, 05 Nov 2026 19:09:33 GMT  
		Size: 586.5 KB (586537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:835c9e1183091ca2583bb97b7130ab081f4ddf162a242433a4e8de863fcd3687`  
		Last Modified: Thu, 05 Nov 2026 19:09:33 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
