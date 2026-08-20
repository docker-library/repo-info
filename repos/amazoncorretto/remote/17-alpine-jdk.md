## `amazoncorretto:17-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:8aa46a55845b61ba079f8289556fcc1a7887cdf303d360bc27140ab38300d44e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bd5af984d303ef7c690c001173657c464ec4320dc4c42d88a03df0a267b455be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152806213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b355526c8212abc7bb3c9db6f606d7b1e931aee37aebe156f69615c42c4b3449`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:24 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:24 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:24 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d2603c23b29228135f0a1665fc72adaf063ab54ef241305d6efae571f13db6`  
		Last Modified: Thu, 20 Aug 2026 17:20:42 GMT  
		Size: 149.0 MB (148959822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a380e4497c213323d1cb3cd7c4010e4977198f9674ec7ea96c972cc4e3c2ba9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f83b8180292b03f5a06226e312f14aadb65d8e991383b1aa150adbeb211b481`

```dockerfile
```

-	Layers:
	-	`sha256:ae92530b8bb7309dc69151dbd52e50ffe1ee0cec10d4de2c1ac9fc4aceaf8442`  
		Last Modified: Thu, 20 Aug 2026 17:20:38 GMT  
		Size: 583.9 KB (583886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e88e5de4c2c6a9d1392fb32d52e6388936d115d5fe7f21685c4b5141fbf2e356`  
		Last Modified: Thu, 20 Aug 2026 17:20:38 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:74827f45085bbf34a5fbc81ccbec27e08c53b4b52dc905be090c6b3b68ceae98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151559062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee12c0e5564d5fb977335301f329e4283b11a2e225c0840dfd6ce797c0cae46`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:03 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:17:03 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:03 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db376e23c2546dfcc058ddef5818920d241637deba612fb24b4fdb4f6514e23`  
		Last Modified: Thu, 20 Aug 2026 17:17:21 GMT  
		Size: 147.4 MB (147376025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d0ec2e057989496e62ef6e4dc4224e6c6de3340edc41238573dd1b9dbb1399f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976bc2f05f06dfddd76a1ab030ebee30507eb7dd2ce1deb5c86231574e96a934`

```dockerfile
```

-	Layers:
	-	`sha256:9ab7f06e252fbd6612805d4a17fe8dbbda27b58126f62939359ff593addb4c25`  
		Last Modified: Thu, 20 Aug 2026 17:17:18 GMT  
		Size: 582.7 KB (582703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d221eb7f063f8cda646fa9617ef2e208ab3761488da3acf69db83b3c32dc720`  
		Last Modified: Thu, 20 Aug 2026 17:17:17 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
