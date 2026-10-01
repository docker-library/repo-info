## `maven:3-amazoncorretto-25-alpine`

```console
$ docker pull maven@sha256:8d15b8d21bddf4428aa7e093dab637f71a5aab303689026151e49acf02a091a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:94a64b166a5e5bc167111493c9c9f1716742f91acfad323a3eaf5176a564353f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 MB (197643467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c88740f0079bb9f6576901a3ae5c0db028f052b7b9602dac6df1fc2787b65a9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:04:49 GMT
ARG version=25.0.4.10.1
# Mon, 28 Sep 2026 18:04:49 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:04:49 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:04:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:04:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 01 Oct 2026 20:11:56 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 01 Oct 2026 20:11:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d17350f39c8bbe142c6bf23e285e398c0421e05929dfbdfb8305fb1ffe6cc10`  
		Last Modified: Mon, 28 Sep 2026 18:05:09 GMT  
		Size: 181.5 MB (181515906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff962184aa43751e2fdee0641b5f1a19028b2a162992d92adb5632f4dcb06df`  
		Last Modified: Thu, 01 Oct 2026 20:12:05 GMT  
		Size: 2.2 MB (2217805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64bc7d65b09b22fab9d4b37975484ee61a6cb12acc02b981911c78f240212ba`  
		Last Modified: Thu, 01 Oct 2026 20:12:05 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc4c109ea5ed6352fbc549c74dd606acbc3e9b2225063d02fbad7b769dd741f`  
		Last Modified: Thu, 01 Oct 2026 20:12:04 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94afeb1c8fcca9c0a911b4f68d219d2dca11eef7be6e406fd10ae0d5471fcdc`  
		Last Modified: Thu, 01 Oct 2026 20:12:05 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:862e1a8508d3b41685a81451f06c27798c7f56a845e795e83ca8e6dba449bea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **757.0 KB (757013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f4e8917d588c985dceff9c60905a8c582cba128864f369c76fac9cba94c4c15`

```dockerfile
```

-	Layers:
	-	`sha256:1ccbb394cdc9759c3de89bc27b7e63a297fe8e60fbed9f764ca3f19522bb737d`  
		Last Modified: Thu, 01 Oct 2026 20:12:05 GMT  
		Size: 742.5 KB (742481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:128e7e413c8a100596b0f9811e4674a433ef1800d5bbe6311f1f68efd11c938e`  
		Last Modified: Thu, 01 Oct 2026 20:12:04 GMT  
		Size: 14.5 KB (14532 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:24fd6798d25b480988c9eaa15ba0921b7f85f6fe35a0dd6eda87f6c181ac8cb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195619099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8c7f04126a2fe85572f0d5df21eba8b2b6aecca35d6b48fad068e43984eeca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:04:41 GMT
ARG version=25.0.4.10.1
# Mon, 28 Sep 2026 18:04:41 GMT
# ARGS: version=25.0.4.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:04:41 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:04:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 01 Oct 2026 20:11:28 GMT
RUN apk add --no-cache bash openssh-client # buildkit
# Thu, 01 Oct 2026 20:11:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:28 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ec7c5cf6b0f026b01470e3c9dc538b6ad52b752f2bc4d3560e5b87520a65cd`  
		Last Modified: Mon, 28 Sep 2026 18:05:02 GMT  
		Size: 179.1 MB (179114849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3979134694922c14cdfc145c30f2ea79da265c20aeb37254c0b3d91648eed9fb`  
		Last Modified: Thu, 01 Oct 2026 20:11:36 GMT  
		Size: 2.3 MB (2256605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32cb45398c7dc79e282bc96bf561f25d706210c554a51aad608fd8577671b35`  
		Last Modified: Thu, 01 Oct 2026 20:11:36 GMT  
		Size: 10.1 MB (10058984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a23e011de08d3ced21e76faa8fc530953681f46daf592f6efdebc0d4e9e7589`  
		Last Modified: Thu, 01 Oct 2026 20:11:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6afe7516be75d3689f1a3047c97eb839a813deb0b386fb1912cc96eaa6443958`  
		Last Modified: Thu, 01 Oct 2026 20:11:36 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:b4fc40491e1ed874633ca9e0e6f15525fa9a84584d04294abcac0562b15980e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **755.9 KB (755900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ddfbbba233af59225a2308ebd3b719607cf36ea2dcc670faf014c6db72af20`

```dockerfile
```

-	Layers:
	-	`sha256:a1e9a37595c8f1468398152bc079e71726b392ff48cd9fda44d73e04816064e3`  
		Last Modified: Thu, 01 Oct 2026 20:11:36 GMT  
		Size: 741.2 KB (741235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4270b4c92e134956b265ab156929f02272400fbed8fc5d5137f56fb84a6b3b4f`  
		Last Modified: Thu, 01 Oct 2026 20:11:36 GMT  
		Size: 14.7 KB (14665 bytes)  
		MIME: application/vnd.in-toto+json
