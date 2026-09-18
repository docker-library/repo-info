## `amazoncorretto:8-alpine-jre`

```console
$ docker pull amazoncorretto@sha256:5911be3bfa5422f7594da7c31a7b8a7957ec5e970a41aa6cdab77c3ae59a07d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f7c3adff7e51ea2e844c992dc2756b8a5fb0d79d3d2003368c8eb45f83971b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45666679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cfce4abade4d0bdaad343c9f61d8ea06c5ce20dce277e862cfb68852ad401b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:41 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:34:41 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:41 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83536a1e6599754410c8c6f06fb1ced789cfcc76c98cc1122d17bd6e892b3010`  
		Last Modified: Thu, 17 Sep 2026 21:34:51 GMT  
		Size: 41.8 MB (41816941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b289c68d006d8848e6f0a3c1bb26d6af7c616810cb85d3c168bceaa82e850d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac183a2659de86ad5170cb6726097c930ed5925f91abcff61e58af1d2023cfe`

```dockerfile
```

-	Layers:
	-	`sha256:c0d64f014a4d64d665a5ca74b36ae27249c1043ba948888c4cefe45976dd931d`  
		Last Modified: Thu, 17 Sep 2026 21:34:50 GMT  
		Size: 187.9 KB (187938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d86c9649f9bbfe02049b9f532b627202f099b827a902381a9c2dddd8319db7a`  
		Last Modified: Thu, 17 Sep 2026 21:34:50 GMT  
		Size: 9.3 KB (9316 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dac50c1de80dd03adcbb4d88c7c0d40dab1a658cafdb96a6d69a6cc5df3a15ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45759264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02aeb4a6281466859e5a697159401bbe902a94b5ab2665b0da9af54f53dca0f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:52 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:52 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:52 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69428682e07071024d8fb8952a161c845e1b8c1b7b9c18ff70eed3cb39f0fb3`  
		Last Modified: Thu, 17 Sep 2026 21:36:02 GMT  
		Size: 41.6 MB (41571605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8f2b606fbc371042f7870b48602b6cbd4d869d73368e57883d0aec0ff58945ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 KB (196839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14ee43b2f155b0595181c9d6dbed40a292461e104dd828083e937f8ea8e06b5`

```dockerfile
```

-	Layers:
	-	`sha256:36099e1cd08a1150e03a4b71753756cb2734fb5c00bf4763b1afbb420a16fe70`  
		Last Modified: Thu, 17 Sep 2026 21:36:01 GMT  
		Size: 187.4 KB (187420 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d198c4f552c269b4f59d8ee78dbb1b39fb15ebd2b62e45e610cf6c613c4ca89`  
		Last Modified: Thu, 17 Sep 2026 21:36:01 GMT  
		Size: 9.4 KB (9419 bytes)  
		MIME: application/vnd.in-toto+json
