## `amazoncorretto:21-alpine-full`

```console
$ docker pull amazoncorretto@sha256:d5a42afb372d2bf5d937d7e6fb65b39c21b62a3f2af3cbcef46848a2f8364c6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0f06d2a06d7bc250e59baa81d85ca35a2391f6da6864e1c3244e455480a88571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166053211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe4852550f00d6d915688fbcaef030948bf2e37b69395cf432edd43828e1f34`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:19 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 22:56:19 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
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
	-	`sha256:be55074b5a7c0a8109a20425e7dc00a9c35afda31489e48ea1afa178b3a1af5d`  
		Last Modified: Wed, 21 Oct 2026 22:56:37 GMT  
		Size: 162.2 MB (162200102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1059040ec8d123d8b9efc5aeac2f3ca85cb6e703e505a03efc61c4f6e0ce074e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 KB (594476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953b8af07866023dd8db2380f8f41db470228a006e6f45b27c61615a9f538bb4`

```dockerfile
```

-	Layers:
	-	`sha256:917ab7ffa621c284b8a4fddcee51511834d0b6e60524d631a5c572286f16e575`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 583.8 KB (583789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bd42078e8753b7d943556847b43020d2118952ddc235a057af5b76bc2d40ab1`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 10.7 KB (10687 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1deb67dfc1108f55c10b38d5a5438c365320214bc88f9b466a8eead1cda07cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164395105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f769213e64dbb7d7eba64ba1ed2b089ab48129e824a25713dde3f9ff8c43a562`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:49 GMT
ARG version=21.0.12.12.1
# Wed, 21 Oct 2026 23:19:49 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 23:19:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:19:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 23:19:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc56d2349c5fa41c1a5c090f7f0057d55b5270eb5ec7d9929e29cac6855e4d6f`  
		Last Modified: Wed, 21 Oct 2026 23:20:08 GMT  
		Size: 160.2 MB (160204617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d7a254b42962136021fa6429be962c06deac6cd11f72e06c14159cb47733b423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.4 KB (593444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b62e06d985b25b7a580a6ec2c624a57bed22b9cda53bb44874e56d0a7ac6f4`

```dockerfile
```

-	Layers:
	-	`sha256:172ee321f2a6b88cd87530eb963d8e9e965d7ea8b5b30b2be929d89506d0bc5d`  
		Last Modified: Wed, 21 Oct 2026 23:20:05 GMT  
		Size: 582.6 KB (582606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d434c89ffa1d16221bfb285a5f04f079cf29bbf38cd14d4877dffa8ccca83489`  
		Last Modified: Wed, 21 Oct 2026 23:20:05 GMT  
		Size: 10.8 KB (10838 bytes)  
		MIME: application/vnd.in-toto+json
