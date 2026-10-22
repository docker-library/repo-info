## `maven:3-amazoncorretto-17-alpine`

```console
$ docker pull maven@sha256:6039f206173d60a2a92ffe2395997c3634751c2a18707b04f40023e2a051a202
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:ed67e2f3715fc59251eb7a4f4c64072d7410680bb049ba103a6790a76635fc9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.1 MB (165093334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6760c5af5f576d88bbda4199299a8ed3187d016d0644df22d08fa325a5990d8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:19 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 22:56:19 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 21 Oct 2026 23:41:21 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Wed, 21 Oct 2026 23:41:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:41:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:41:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:41:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:41:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:41:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:41:21 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:41:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:41:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:41:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd62eb337d388c4b18b1f14b71ca7b7b6c97c4a1da30cda8bbafa4f4b99423c`  
		Last Modified: Wed, 21 Oct 2026 22:56:36 GMT  
		Size: 149.0 MB (148963631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae09aaca504ea21e3371b30acd85b149847ee72b311a6c1f4120b87928acc2b`  
		Last Modified: Wed, 21 Oct 2026 23:41:30 GMT  
		Size: 2.2 MB (2216573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac3c3071c67a17630f1a6be45efa138f482e81d726fab7cf01f21757ca1d08a`  
		Last Modified: Wed, 21 Oct 2026 23:41:30 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137a25c0c2dda8962cc49aed522721830cc810b8fc8614b8808b76e07b7c8206`  
		Last Modified: Wed, 21 Oct 2026 23:41:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ff58c617d73e3565f242f65faa1cb0b130152ee6dbcd260c7da36bcd9f1e8d`  
		Last Modified: Wed, 21 Oct 2026 23:41:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:73cc45358af9bdd3e93bf0eb029b1c81e154d0b1e99e1634f432b34463078d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **748.0 KB (748012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc6c0fb5e7434a3bea418c86c8d9c4ecbac51d4f274662ea5674d14c9a5d7f3d`

```dockerfile
```

-	Layers:
	-	`sha256:35396becec39b5e4f379941519e73cf64fbf8d341fe8c7a11dff5f28d8aaf6b3`  
		Last Modified: Wed, 21 Oct 2026 23:41:30 GMT  
		Size: 733.5 KB (733480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ca6c017b637ab7d3b756fffb2c2d5212809dcea6debce7c472fd437a3494da6`  
		Last Modified: Wed, 21 Oct 2026 23:41:30 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5d8fe220c5da88fd03d1a3d89b421a2a76e850e428ece97f2ca7544da10fdeb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163885244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3148463d6099686eb6c5ced6570795f146fdab31a325360e30078330f8db6c7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:03:35 GMT
ARG version=17.0.20.12.1
# Mon, 28 Sep 2026 18:03:35 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:03:35 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:03:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:03:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Sat, 17 Oct 2026 03:17:53 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Sat, 17 Oct 2026 03:17:54 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:17:54 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:54 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:54 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:17:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:17:54 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:17:54 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:17:54 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:17:54 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:17:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:17:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:17:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1c2874229cda9c9979aebf42074800618deeca0af610d920d425ca8bd919d9`  
		Last Modified: Mon, 28 Sep 2026 18:03:52 GMT  
		Size: 147.4 MB (147381446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36bd525a741a19cb62618e884bb29496f5fa33ad978e723d1a65b793df3bd10`  
		Last Modified: Sat, 17 Oct 2026 03:18:01 GMT  
		Size: 2.3 MB (2256117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d235fd0d2929addd2d6caa9165cca47df3bffb418c3c127caf117baa2ef0a12`  
		Last Modified: Sat, 17 Oct 2026 03:18:01 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294585995ee06e0d546489e445751dfefdc5e448b0257aad84cb5d46e3ccfbdf`  
		Last Modified: Sat, 17 Oct 2026 03:18:01 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af009e0c82c0749a76d4b6a86d9db0e146ea03b7af5eb5be3a219257a2fed61`  
		Last Modified: Sat, 17 Oct 2026 03:18:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:4b269e005ffc4785c80c73938b1b06a715aa36b656ccadaacaf70a95456f03fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 KB (746902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:603c633cadb2e494c15a56f023f7bbcc6e421866648aa1e71c2873e9500ff901`

```dockerfile
```

-	Layers:
	-	`sha256:a6878120d10334918fb62852c9b66001f7f0fb677e9bad3aa3a66a382a5483fd`  
		Last Modified: Sat, 17 Oct 2026 03:18:01 GMT  
		Size: 732.2 KB (732237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cc6114b06a08c4517b55b0c2a4d6d2f21d505127f1b27d54df8656ddee3245b`  
		Last Modified: Sat, 17 Oct 2026 03:18:01 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
