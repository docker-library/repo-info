## `amazoncorretto:8-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:2ff7e76d26a77d64ce857e6854eb54b3bb3eead2908766422e8598dc433cda2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4dd906868d84aa60014d2c60fe7701e0b9ae58487fbdb161e2538817921bebe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104661719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcffd6302f69f688a6dea55d465257d07396c83b8cbb657a3ce34c4b8246c7a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:43 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:43 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:43 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:06:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca5db5ea752ee5a63b5923f1e7f1297cddf8cb693d02043dac55a57d1d50698`  
		Last Modified: Fri, 23 Oct 2026 18:06:56 GMT  
		Size: 100.9 MB (100867362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f5d9778c62ed500f3a92451dd53abcc67309101206ab5a33a5330e3668728d3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50da8161d4dd404057f504645aace1569243549730ce73208bc352dfb50224da`

```dockerfile
```

-	Layers:
	-	`sha256:8544f2f533785c473e060bd1d60e7a7149f9eb1abdc7746a3127094ee8c66aa9`  
		Last Modified: Fri, 23 Oct 2026 18:06:54 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7e7a675a9d5409ef5be7033a6d2d0899d70ff4b1ab07feaef825a99b98ad10`  
		Last Modified: Fri, 23 Oct 2026 18:06:54 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a51ce4490bff15f49a090fdaff55f7c39916084960fe671872d1875c1a7f5891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104825121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafcf4181d48701f921eab0a08cac1c28e64aeb07bc68d6f754b2de402e3cff6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:06:53 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:06:53 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:06:53 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:06:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5721ad169ebd8da12f72258fa23a13060c6585fedcf77fbaa9958fb9308490d3`  
		Last Modified: Fri, 23 Oct 2026 18:07:08 GMT  
		Size: 100.7 MB (100697740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d31626c7f3b4d5eec20ad278f867f7359b28a61ed0668b5127b157c56a5d32b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7567d66387e01b4bd7e76ea2bff711b6e9f7ab3ee287fbf82e34fae910185e7d`

```dockerfile
```

-	Layers:
	-	`sha256:32e5fd62ab287b96c12248fdff76131309ddb1bd8887e94c0ed80433cfb0aa9e`  
		Last Modified: Fri, 23 Oct 2026 18:07:05 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9573a96ebe55c5f6eed46c5ec0eeea27162a9484083cee31f54d92bf2c10133e`  
		Last Modified: Fri, 23 Oct 2026 18:07:05 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json
