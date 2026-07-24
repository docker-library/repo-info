## `amazoncorretto:17-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:d587de2ff2114be59a7ff288e4a644bbe2619dca350f7fc83d2f3320c53c5c7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9d004076b1ed1c2bffbded9acf9f3b6bb284ccd19daca1b1b8e7a6a148d82c1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152579355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf391567d63d48e8d56cf7f36bde263e2e2bb86ffe7ff13d72417fc484c9738c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:11:51 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:11:51 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:11:51 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:11:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a675c4aaf112f60d43e81b681a349fc5dc98a8715f0f1a92b5aa7bfd10ce696f`  
		Last Modified: Thu, 23 Jul 2026 23:12:07 GMT  
		Size: 148.9 MB (148932480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:73c4ad0d423d09a8cb6c7fadd29202871eb8d3cad4c57d71d783387a4f3d8d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.6 KB (596581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c71bf1edabf82a2c4be26c145dcca64c624788ba00312f246e9d70ac37ed5b5`

```dockerfile
```

-	Layers:
	-	`sha256:23579e44f172844ebc3a7157720d1b78d6d3b5e74e622e471e908733656597b0`  
		Last Modified: Thu, 23 Jul 2026 23:12:04 GMT  
		Size: 587.2 KB (587207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a90b9e8b9d978632a8f393c02751f13057549303f2c121d0c287b956ad7e2909`  
		Last Modified: Thu, 23 Jul 2026 23:12:04 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:318c4705c19db08bcf63492c3847133785884975a86f31cc7b46bf3014d968f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151346305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7381e4ffd86e063737f5170c18691686869e398db14e6e96cc636c266d84c6fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:43 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:13:43 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:43 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05428ba024cc1565a3f3fecbc4bb67f6350f1ea0f086b9f36aa2a1a006a11b2`  
		Last Modified: Thu, 23 Jul 2026 23:14:01 GMT  
		Size: 147.4 MB (147351840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:73555c7cfe61f3cd007387b26f2040d3178779ad62b8f777e8c06b9bc3a7cd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.1 KB (596104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d47c5627c465bd21b7b7384abd2e914e61b4b41adb97cd3e5e9282ba698edb2`

```dockerfile
```

-	Layers:
	-	`sha256:0f8df7bcc5b9e0c9e18f86bd96de281e6d414c6d1db57dca38304f7289d4e60a`  
		Last Modified: Thu, 23 Jul 2026 23:13:58 GMT  
		Size: 586.6 KB (586626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f01cbd052ac9d0c2faebe4b1aa672d9007ab298dc7e63fa5024c544c75d06a8`  
		Last Modified: Thu, 23 Jul 2026 23:13:57 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
