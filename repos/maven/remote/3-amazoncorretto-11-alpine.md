## `maven:3-amazoncorretto-11-alpine`

```console
$ docker pull maven@sha256:11b4b02682b2e79461dad0e1d6ec2f5fd2bd4b607acf3eeea611c41b2c2d474b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:0fee46a84f9fd8de0e1135ca874bb86a300cc57ea01e1bd9e61c0630a873c5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160182321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b35bd1185fbbe1237a51a3a14846ffe4a87174751fab1a75b27e28b28f244a1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:44 GMT
ARG version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:44 GMT
# ARGS: version=11.0.33.1.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 18 Nov 2026 03:10:55 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 18 Nov 2026 03:10:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 03:10:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:10:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:10:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 03:10:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 03:10:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 03:10:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 03:10:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 03:10:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 03:10:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 03:10:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 03:10:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6cdac157e08babd0b2ee2368f2c7af4b134cdab291b87107420553e2f2f365`  
		Last Modified: Wed, 18 Nov 2026 02:47:00 GMT  
		Size: 144.1 MB (144051743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf06f46a8354195703ce73fd7098271c771222c608e1465842b841f5af3fe996`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 2.2 MB (2216888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acabefb00dcbd3031d20b6f92803a3451a700a052979b7a2dfbd4e29d35bf795`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12afe3f3aad33f9f2def1b22738706cd5ded1ced3696a343b41febc4e8be6925`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678860f0231c36f4749ab5bad64a47ca12f2e0136216c928ea0553a325391e5b`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:8a04209b6f8eb03f769e1e023c8976801fa2e0de32a8c8ddd21411a3ab24a903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.2 KB (753158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce81012bd18b7ad5ede03faeea0066965864609c06f54fad5c734ceaec2a1da`

```dockerfile
```

-	Layers:
	-	`sha256:aed4815e36f53097183aef0c3e33260fb295227da428798f2e4aa2a2b9596b3b`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 738.6 KB (738626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12e70b8d18c7d66e1369fb1d2148ff937430dc920fff85be2f018f436278ad64`  
		Last Modified: Wed, 18 Nov 2026 03:11:03 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:cb5cba577369239b231c346f97c71e973aab2737837d9886ca78f7d5b420c0a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158917691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0448b66eaf56537ac68152c35833ff938020ba3f0480ed80c17f114919fe8d54`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:46:51 GMT
ARG version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:51 GMT
# ARGS: version=11.0.33.1.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:46:51 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:46:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 18 Nov 2026 03:10:40 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 18 Nov 2026 03:10:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 03:10:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:10:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:10:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 03:10:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 03:10:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 03:10:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 03:10:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 03:10:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 03:10:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 03:10:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 03:10:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dffa0d8d7161e3966ea004f19975c11fb20e46cd9b3b3b25283e539a0c969d`  
		Last Modified: Wed, 18 Nov 2026 02:47:08 GMT  
		Size: 142.4 MB (142410797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf9c786b7b89fb7782b87c00aeeff9187c6fa9630011c814dcd48cbdaa8c7f4`  
		Last Modified: Wed, 18 Nov 2026 03:10:47 GMT  
		Size: 2.3 MB (2256279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2d0ec7f876005c02f9b97d7f2271957be6a07d1db5c2dcd62155bee38281e1`  
		Last Modified: Wed, 18 Nov 2026 03:10:48 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48eb78bc751e03bc63660abd94d8871d2b1722d05c389d00ed7c304688dacf07`  
		Last Modified: Wed, 18 Nov 2026 03:10:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6705d9f17502430f80299bc7faebeed4003dc7f7c9cd95ccc185b949416a889`  
		Last Modified: Wed, 18 Nov 2026 03:10:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:3c4375527ada0280581e62f1bb7ead4c89b6cb2cf2676a805fe0b810a1cc133c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **752.7 KB (752685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10ece1fc3341b589fffd48acdf9f6378c2e5a94c3704902313e4576981bec5d`

```dockerfile
```

-	Layers:
	-	`sha256:c9d15ca0b7aa07c4ed03b3fbf1ac711bee8fa8c2bf51a55d9be1d0486d518016`  
		Last Modified: Wed, 18 Nov 2026 03:10:47 GMT  
		Size: 738.0 KB (738020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b8837a06a21f71ec2b38e16a8661b68aef3546a1021ce185796d6ffc07a7265`  
		Last Modified: Wed, 18 Nov 2026 03:10:47 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
