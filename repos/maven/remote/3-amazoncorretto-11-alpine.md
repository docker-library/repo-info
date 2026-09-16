## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:bcdff51c161f9794c6ded8e8430022033a8fc432a1138e0cac9fe2c2a7edd5c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:6b623d82d63680d728922fec8c19dcba6bfdf1014da3ce0866d3cd179f1300b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159397518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1a084d2e4edf2d114275c18205cc220ffcb58474715f46b282f89338213cf7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:31 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:31 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 16 Sep 2026 05:21:32 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 16 Sep 2026 05:21:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:21:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:21:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:21:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:21:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:21:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:21:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:21:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:21:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:21:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:21:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:21:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d77fcfdf369ed0b30258b04750523dc4fffdeefd5a671d659e81fb012fd1dd`  
		Last Modified: Thu, 20 Aug 2026 17:19:48 GMT  
		Size: 144.0 MB (143973175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef92e4e01aa3b327cf57858d645eab01df41293db569408b97b81bb58818cc6b`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 2.2 MB (2216973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a703a987f6b9919be9214736f26743338598add6f7b178952ab70bf0bc7b18`  
		Last Modified: Wed, 16 Sep 2026 05:21:41 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d432459e1d340fd0cb07a277f8cf6e2f9c59ac86158230542e47288b6e48b07`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665c713e5003021be29932aa074201bad7a5c01f852e85d1811196633d512289`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:fc652eb79abc9697261f5d57160742e018b6deb2183131612d54797c9b1ca0f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.1 KB (748104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dab94d84c302af9d02243468c04a168fdb08524f82bf65ec93911fea74a627f`

```dockerfile
```

-	Layers:
	-	`sha256:b268d013dc01c91c5bf364c6961d1da8791015bbd2c8bbeec21c57e1059e217f`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 733.6 KB (733578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c33d5cf95348f20947e7823017bbdcdfbac57b3fa36f2bbde68146d9d9cc48ae`  
		Last Modified: Wed, 16 Sep 2026 05:21:40 GMT  
		Size: 14.5 KB (14526 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:26577250fe55d27137f3ccfb6cf2edeb6b69c02c7de784234edd0907eaa561d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158147329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e71975b44965f7741fa9c6a1d8df811526e1b23023d07504762a69a615c1c3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:19 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:16:19 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:19 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 16 Sep 2026 05:20:58 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 16 Sep 2026 05:20:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:20:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:20:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:20:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:20:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:20:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:20:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:20:58 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:20:58 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:20:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:20:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:20:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fcc121ed55e6b97313b7f5fa75e0188c609fdc67607859a02d68bd2c1b4da4`  
		Last Modified: Thu, 20 Aug 2026 17:16:36 GMT  
		Size: 142.3 MB (142346996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b22e4d4367f5fa6f1f704e839cbcc373e4506c4f14749a733b17071472c05b2`  
		Last Modified: Wed, 16 Sep 2026 05:21:05 GMT  
		Size: 2.3 MB (2256318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa81e7683267cb3a75eeca8b9094b13c76e3d16139d838391b29687a3a7fed59`  
		Last Modified: Wed, 16 Sep 2026 05:21:06 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23bb20e57f932721c6d3dcbc8a5901365b675bcd914ace6ca58862c413b5c3d`  
		Last Modified: Wed, 16 Sep 2026 05:21:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6db28ccb41424cdff02cb1bb6d0c0d49767aae8cff73e0ee9746b49d61a2a40`  
		Last Modified: Wed, 16 Sep 2026 05:21:05 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:2fad5e2102424c9f67323dd17b66e42789e35341f78ce35ee43da3b26e8f13b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **747.6 KB (747631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73880e95022f231730fc003a9385d8e85f049126579565275034a6f7b3f227d2`

```dockerfile
```

-	Layers:
	-	`sha256:25120ae789eea6bdfc9c8a893477a99870d29b9c7cc37e8fecccceb03e948893`  
		Last Modified: Wed, 16 Sep 2026 05:21:05 GMT  
		Size: 733.0 KB (732972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b749ba41df678641783a918731df80a242a4fa252e798875edd9ae47634c70c`  
		Last Modified: Wed, 16 Sep 2026 05:21:05 GMT  
		Size: 14.7 KB (14659 bytes)  
		MIME: application/vnd.in-toto+json
