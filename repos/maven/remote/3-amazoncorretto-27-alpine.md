## `maven:3-amazoncorretto-27-alpine`

```console
$ docker pull maven@sha256:d82019e1f62e9b897e82032c775bde9ebfc16c613dda30385479afb2e3789cb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-alpine` - linux; amd64

```console
$ docker pull maven@sha256:50c46e68f37af62e44253175eda6954781834ed2504e09acf41bbb12801282fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199563811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dfeddc74d2619980d2c26c990b71e2f18d1bd51fcec3184fdf4352c1b90d1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:02 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:41:02 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:02 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 03 Nov 2026 23:10:09 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 03 Nov 2026 23:10:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:10:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:10:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:10:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:10:10 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:10:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:10:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:10:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:10:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:10:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d90a76605806f1339b5b30f77d23b50a530e4e79edbdccd00e2f8d0a83f92d`  
		Last Modified: Tue, 27 Oct 2026 16:41:23 GMT  
		Size: 183.4 MB (183433662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ed5591020548eda141ce27b284dca7637791056aed4314f285b337dbb2ada5`  
		Last Modified: Tue, 03 Nov 2026 23:10:18 GMT  
		Size: 2.2 MB (2217014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc90b840d7b8929dfd88da3a0e5249e7a934dffaae5188aa6303570ca7df123`  
		Last Modified: Tue, 03 Nov 2026 23:10:18 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c0d36c923dcca7b5085493420b4a97ec7f0b3cdfda0482dc20fbfcfae779c2`  
		Last Modified: Tue, 03 Nov 2026 23:10:17 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b880cd4f481155eef191f6f05a1014192701069efa170e003d2cad073d599f8d`  
		Last Modified: Tue, 03 Nov 2026 23:10:17 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:20aecca3d1744c4527391a1ec252eb4e58480581328e525efd9ee8fe6bf1e37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **742.6 KB (742572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46b053fb897163ac669d1a1dcd0a8e2ef7b74d82674b71f8fb783982fa7db728`

```dockerfile
```

-	Layers:
	-	`sha256:44eef5d50b1358508b2d9b9544d8d4d67c4cea117e6d369a4cb540777bdc9daa`  
		Last Modified: Tue, 03 Nov 2026 23:10:17 GMT  
		Size: 728.0 KB (728041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f28d52f4f99c9c9ddc4fa65604a3174c8e9b936da4eea0f1b4f068e7c9c9a7c8`  
		Last Modified: Tue, 03 Nov 2026 23:10:17 GMT  
		Size: 14.5 KB (14531 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ee16eb9fcd7e66b1c8ca360d3705ba70832a87ff8b4582fb1e5b063bb044b22c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197566425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4379d74ab6a5f0d5be325355bab7189459ad869f3c5f151fa222e8d521af96c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:27 GMT
ARG version=27.0.1.0.11
# Tue, 27 Oct 2026 16:41:27 GMT
# ARGS: version=27.0.1.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:27 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 03 Nov 2026 23:16:14 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Tue, 03 Nov 2026 23:16:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:16:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:16:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:16:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:16:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:16:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:16:14 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:16:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:16:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:16:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b809a744f0396e576dd28c25ebcb74dd9ea55f8d1fd0e5fcb5d68aa0030044`  
		Last Modified: Tue, 27 Oct 2026 16:41:49 GMT  
		Size: 181.1 MB (181059694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f299a53ab56137b6b8223182685b3a6a840c9d85fec02a5f7c0bda661c64b63`  
		Last Modified: Tue, 03 Nov 2026 23:16:22 GMT  
		Size: 2.3 MB (2256273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad7dd456f5f94642ef6c00854e4aec4c08a0c2d3c2ce30a2150ff868f53ff48`  
		Last Modified: Tue, 03 Nov 2026 23:16:22 GMT  
		Size: 10.1 MB (10058964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1b49657214002ff8319e9941b0854b6bdea0a890ccab9fe54f945879668514`  
		Last Modified: Tue, 03 Nov 2026 23:16:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288bd83be769f42a248e228735acfab78156b3ed43943f33a446914080af4936`  
		Last Modified: Tue, 03 Nov 2026 23:16:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:b82939ed5a35042bb85dfde8bc150f15ee26bfcd6c1691c169c89961c5b651e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.5 KB (741460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1206a4a3a49ecdd2d5f1ef518d211c38d7e33e6778898ff1239152646d2cd655`

```dockerfile
```

-	Layers:
	-	`sha256:eca7f2e8c1c1995cb10eb73887f9a4ef05c054b08d1f78a678f7017c0611356f`  
		Last Modified: Tue, 03 Nov 2026 23:16:22 GMT  
		Size: 726.8 KB (726795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d121f7a30adee97183a77d4783150f2cf1b1e9553ef2e27a9b86ef4254eb86aa`  
		Last Modified: Tue, 03 Nov 2026 23:16:22 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
