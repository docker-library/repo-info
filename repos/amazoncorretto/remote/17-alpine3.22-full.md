## `amazoncorretto:17-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:a5858cc0468afe691d84dbb2577606fce1f0c29acb267f7e7385737ce6b87409
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:60271ed28b1c664ff48ab490058388120e5cf769412a32108994ba950d973997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152986539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0775127f80ed3e7974fec7115384217b78ae515ad4892bedcd378138046fb5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:31 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:31 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:31 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c52728292acde8cd498942437c98df06f60530d72d6e169b2fbeefac60fd357`  
		Last Modified: Fri, 23 Oct 2026 18:08:49 GMT  
		Size: 149.2 MB (149192182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5cd2e6b4a250786f9be775153051e615e1d94eaa7c045aa459cfe2d1136f17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f01988fa575c027d3909998a6ac38218d79aa3ae169922087983fd52ad178e8`

```dockerfile
```

-	Layers:
	-	`sha256:fbc59f5509888d92f429d6cf2653d1ba8901489b0f4d73218dca7225b6af5d98`  
		Last Modified: Fri, 23 Oct 2026 18:08:45 GMT  
		Size: 583.8 KB (583787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:791209e54328ab39add5b27f8af9b879942adb5817c39607ec7df7578bb2adb0`  
		Last Modified: Fri, 23 Oct 2026 18:08:45 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c4b0ea8b5874316d9c791ea9aa14395cda5002033c429316288d9c9954c5fb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151806127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9094caa44a5a84252b4dc5cf2b9957a154f49e7dcdc230ee06465b570ce682`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:23 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:23 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d62d7c11bc94c82107329ef56b66c0d0539cb9fbfb92a81c4a240da1c3629a`  
		Last Modified: Fri, 23 Oct 2026 18:08:41 GMT  
		Size: 147.7 MB (147678746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4502c3152fea29c61cd5c8705d35962e7234a88646b6fb3e9618e6ca7ccc5325
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9f633de2fa0ce132ef7bb076b006a024adb5e150c484b0eedecf631525ebc9`

```dockerfile
```

-	Layers:
	-	`sha256:34a82f559a019c72606f7f52d7c75bde0ebeb1dfb220163a7f09c85fd5ef245c`  
		Last Modified: Fri, 23 Oct 2026 18:08:38 GMT  
		Size: 583.2 KB (583206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef74ec94688273d76ce5ebc421575c2d8a442044e303f1ab6d3770f03ea4f88f`  
		Last Modified: Fri, 23 Oct 2026 18:08:38 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
