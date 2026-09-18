## `maven:3-amazoncorretto-8-alpine`

```console
$ docker pull maven@sha256:e3041dbd6f9989d36b6e4dc1fd09bc4dd6044eb209472346f10372ef6db8a872
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:dacc362cde822c94aa5fe2996ab69c9cda9002d35e6b69c121178f57a688f364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116234279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04e3f4f752aa3dc16b3f87f312a12698baf41c09b9ffdb9e9a9bb3a90cdb4a9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:32 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:34:32 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:32 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:34:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 22:36:23 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 17 Sep 2026 22:36:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 22:36:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 22:36:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 22:36:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 22:36:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 22:36:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 22:36:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 22:36:24 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 22:36:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 22:36:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 22:36:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e09adac6e711730e119ef9855a3927546bf95918fd11ea8a75938336134434e`  
		Last Modified: Thu, 17 Sep 2026 21:34:45 GMT  
		Size: 100.8 MB (100817955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4dec3c0ca5b3cd240cfa7f0f7b0dc3e29167ccccd93c01cecc96152f26c6650`  
		Last Modified: Thu, 17 Sep 2026 22:36:31 GMT  
		Size: 2.2 MB (2205609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f058b34091aa5cdaa41c74e7d80e316914771991979f8268a4131671aa77dbe0`  
		Last Modified: Thu, 17 Sep 2026 22:36:31 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75207c7d5e7ef349f6fde4237d522c468feffe8a37c731d7eed37bdd08d29523`  
		Last Modified: Thu, 17 Sep 2026 22:36:31 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4944d3a84cd31b2d0936a07e3876e4c5895f5d0b35d46d7a2907a1b80f4c149f`  
		Last Modified: Thu, 17 Sep 2026 22:36:31 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:3ab52e685d4e317d75cf834963e6eac89c66e98dc6633d7b34a55b95b2142ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.8 KB (406830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0089e3d15f70c3b6d07d0a4ec4a15162f951ae3f92ecac4672ccd5a38196ff1d`

```dockerfile
```

-	Layers:
	-	`sha256:bc8dcfb6d48cbf1d786292d94a41a88f24c59a60e6ca11770a319eef1c5c9100`  
		Last Modified: Thu, 17 Sep 2026 22:36:31 GMT  
		Size: 392.3 KB (392318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c719f8814af7d76af844aad4a184b099126960f5b1d2ffb8f2ea13cfd1e143b`  
		Last Modified: Thu, 17 Sep 2026 22:36:31 GMT  
		Size: 14.5 KB (14512 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fd05ae6dbe1ee2f662548e5d7540be07890c5f89a06c2449e3549ea7ceb74c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116444405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228960a7cce300a5e5ca839d83b7247ce8e59f47c42c7024e3295835f4e32742`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:43 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:43 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 23:00:42 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 17 Sep 2026 23:00:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:00:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:00:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:00:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:00:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:00:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:00:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:00:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:00:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:00:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:00:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:00:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5be26254efa5a3ba84ffd69f8e608f000096202c08626edb18a4dc651a7783`  
		Last Modified: Thu, 17 Sep 2026 21:35:57 GMT  
		Size: 100.7 MB (100650963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2415555317ddb7102906e502581cbeebdaa2b758995ede56bb19ffb8f5925436`  
		Last Modified: Thu, 17 Sep 2026 23:00:50 GMT  
		Size: 2.2 MB (2244810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e850d4e390e03d37d9780590b4900de9d0756673d42114d0d23233795204387`  
		Last Modified: Thu, 17 Sep 2026 23:00:51 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0ee5f2da50ef60844f80edda2d0bd878568754bffd55ac9f7081c6fd3c0a99`  
		Last Modified: Thu, 17 Sep 2026 23:00:51 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e300762052cb71f387ccb70c6e4d853ceb4aeb5db7a18920b4a0c2162062c35a`  
		Last Modified: Thu, 17 Sep 2026 23:00:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:b6f711a738c9f8a7be53800dc5006624eee3cb5415fe9bb63b8a2f7788551d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.4 KB (406434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2aa970e485538dccde9b07bf94c6610e4c25ad82b4893e111fb53c16021fa0`

```dockerfile
```

-	Layers:
	-	`sha256:c294813a07d53452dba815d6d9d9bda72ce7cde5309a09fa33b6a1ba10ee607b`  
		Last Modified: Thu, 17 Sep 2026 23:00:50 GMT  
		Size: 391.8 KB (391788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20c06f7c67da67a30b3eda4dc0fa18457e8729efef75bdddcab0309156aef0c3`  
		Last Modified: Thu, 17 Sep 2026 23:00:50 GMT  
		Size: 14.6 KB (14646 bytes)  
		MIME: application/vnd.in-toto+json
