## `amazoncorretto:21-alpine3.23-jdk`

```console
$ docker pull amazoncorretto@sha256:d70f2fb99d8330706769efcb232f88a97746e32504e76a066fbed6733f07df36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine3.23-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a8df537d7ed40304bcaef42587af2102e92a7bd8271a32d55b48ca13d80b0bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166323554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225ad938d378954110c5ee0794b7825b0a5eb586d0147d5e9b044d8289bfbf91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:09:03 GMT
ARG version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:03 GMT
# ARGS: version=21.0.13.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:09:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:09:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ed2fd084597641ac44f323bc1012c059bbc7556aa2827316429f65e8e36bdd`  
		Last Modified: Fri, 23 Oct 2026 18:09:22 GMT  
		Size: 162.5 MB (162471327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0d2380ef2647118b210bd46aa57102b2cb1eb4eb45dce1c1e0cb535369fe7c7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.8 KB (591784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4d8103275a8d67e3afda4b949ddc863ca2f4e537929c81be58b4c64d1fc53e`

```dockerfile
```

-	Layers:
	-	`sha256:d18a5e13462f9426741ebb03c5c558985c213a910c8af9b36cbe7d5c9849a46d`  
		Last Modified: Fri, 23 Oct 2026 18:09:19 GMT  
		Size: 582.4 KB (582406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af197225bd55350b60c791b0f84c811e775d622183343b291bcf6666e5a8871a`  
		Last Modified: Fri, 23 Oct 2026 18:09:18 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine3.23-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:719f3047fca495628c620fdc558280ec69152605a33c5cd91d51ca371ff2a2e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164664526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60789c9f238450fcf7b4943963a38ceb9ef08d92fea9171bed87e52b0f7eb41`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:56 GMT
ARG version=21.0.13.0.10
# Fri, 23 Oct 2026 18:08:56 GMT
# ARGS: version=21.0.13.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:56 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47feda2d222c3057f2aac637d32b346ed2cc874d1c5caccb41bed1455fc53fca`  
		Last Modified: Fri, 23 Oct 2026 18:09:16 GMT  
		Size: 160.5 MB (160475032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine3.23-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5d162f9c8e441760c362248d8b656765da49e542478320a7c3f4fa8438f30ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.7 KB (590656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb75fe8125bd8dcdd6ebba132669ec331764ee6605a236506d37f53729f4aeec`

```dockerfile
```

-	Layers:
	-	`sha256:93eec9e278b6a0d769527f440dd90cf5d0249541b8665a9ada301135385bba89`  
		Last Modified: Fri, 23 Oct 2026 18:09:12 GMT  
		Size: 581.2 KB (581175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:426ffc4a49881cbd3cd9c0e4b093b6d9d90aed2dd933f0e72aac044b1a694eb9`  
		Last Modified: Fri, 23 Oct 2026 18:09:12 GMT  
		Size: 9.5 KB (9481 bytes)  
		MIME: application/vnd.in-toto+json
