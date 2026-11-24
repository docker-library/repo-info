## `maven:3-eclipse-temurin-25-alpine`

```console
$ docker pull maven@sha256:cc1b9ee908e56a5b6b2702013a169e173878944a99db3e6068201ae4f6e27d98
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-eclipse-temurin-25-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8be7b01911cf9f8f84ac74f28f435bdd4914b651dec463e3e909df8694b554b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126124304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad77a5043b73d9c34767b5dd80c6c0228f0d13c43bc871e222dae900a062424f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:39:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:39:59 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 20:10:47 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 23 Nov 2026 20:10:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:10:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:10:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:10:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:10:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:10:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:10:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:10:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:10:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:10:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:10:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:10:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30918d682cf0c10504ef0f5606c9b1b42d83c0405c5a28904592b4d09b7dfdfd`  
		Last Modified: Fri, 20 Nov 2026 17:40:14 GMT  
		Size: 16.8 MB (16849365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb679e69b68daea08e52fdb38a131144a2baf615a75287e4d992189d3139170`  
		Last Modified: Fri, 20 Nov 2026 17:40:16 GMT  
		Size: 91.7 MB (91681090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f577ef1593f1935f76416e7596f00093b7c2172d424a7d684346585989387ff3`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04a540de790f34940a32c248ce1094ce407a54943df8a8aad72e787b2e62057`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d92bbe4767e19077eac8888baebb9dbf68082b2f4e899d0e3d5a80e19f0c0680`  
		Last Modified: Mon, 23 Nov 2026 20:10:55 GMT  
		Size: 4.4 MB (4385282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcc9e869e506331b2731c5982f37be8768111270310a839ed91d38baafaba70`  
		Last Modified: Mon, 23 Nov 2026 20:10:55 GMT  
		Size: 9.4 MB (9351291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabb8b8f9570813b569a8a3dfecf4e85621116484cbf1505bc7836385ef25204`  
		Last Modified: Mon, 23 Nov 2026 20:10:55 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6193ac5d677e0369be9da08f6028fa0f3f5d55b5cd8a1345a70e792cd9d433`  
		Last Modified: Mon, 23 Nov 2026 20:10:55 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:beec54b5b1f03ae9b5f925a784ad85b42b27f92bb959dbca326e9fac25fcb2aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1138826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77619f738ae800803c93e39ef5fb2e422175aaa97268710ecbcfae51b3d2ca10`

```dockerfile
```

-	Layers:
	-	`sha256:419ba886f26c1fb697f494861cba0fcd0ca376befd062b7f575add8d64248992`  
		Last Modified: Mon, 23 Nov 2026 20:10:55 GMT  
		Size: 1.1 MB (1121784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:401b0ab6973c281219eafe2a3c9dc1bf1fc32c082beaefb8d1457e24a775384f`  
		Last Modified: Mon, 23 Nov 2026 20:10:55 GMT  
		Size: 17.0 KB (17042 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-25-alpine` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c0d66c703408fa3c2122e589dd7928691eb8c10b8c12bd2f7ac550a29a36e080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123725245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52b71344103d4d2585be8fc7cf0a6cc05a67de041257491fc157bfabdde7ecf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:40 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:40 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:13:47 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:13:49 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:11:38 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Fri, 20 Nov 2026 06:11:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:11:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:11:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:11:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:11:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:11:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:11:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:11:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:11:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:11:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:11:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:11:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645d78941c0ac0f7ae53a311e5b6da7c57b604f24f64f786b4429e0583569b2b`  
		Last Modified: Thu, 05 Nov 2026 19:14:04 GMT  
		Size: 14.4 MB (14426864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f168feb3299cae3aa0c34589ea91e1f5cb9835f5c32cf0dee54ffd582bd33ee`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 90.6 MB (90570261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b672b0dab5614e501f6d20fadc8ad1ba0dc8ea94fcd7a892a45ca533881607`  
		Last Modified: Thu, 05 Nov 2026 19:14:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c729cf974d863bc0c259b02130decbf454ce00ce06548fc9ed1d154abba602e`  
		Last Modified: Thu, 05 Nov 2026 19:14:03 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1071d910720013aaf0195f406c19ca3b12e58cf917e945b632a5ea8cf79f472c`  
		Last Modified: Fri, 20 Nov 2026 06:11:46 GMT  
		Size: 4.5 MB (4474909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2997f287474b3c9872fc92e332c309178da150de9222e1ad8480b4e1039a76`  
		Last Modified: Fri, 20 Nov 2026 06:11:46 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c144203b917af99cbbb7eba8bc31e3859efc69ad3250ee601097ada45322dcd`  
		Last Modified: Fri, 20 Nov 2026 06:11:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa379adfd8bc0ac8f91df1d6c8fcecba9a2d1ab19d555e1b1c9d45e897c9410a`  
		Last Modified: Fri, 20 Nov 2026 06:11:46 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-25-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:976dc08567195bbad938107ccfca5bc400fc379f0efd7dbaf867ef4ae3d9eeca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1294604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43696c9d0b85cfa19efa63108fa77911e549abc5fec0f97f3ff561c55ca89e9`

```dockerfile
```

-	Layers:
	-	`sha256:0bbe6f7eb2848bf002d5f90c385350f94d87e5a48b43a8b7eeec9a0a960e34e1`  
		Last Modified: Fri, 20 Nov 2026 06:11:46 GMT  
		Size: 1.3 MB (1277429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41e22ea7a1910720885665bc6dcbfc188a3ad4d59b49be9c26cbc03473c59816`  
		Last Modified: Fri, 20 Nov 2026 06:11:46 GMT  
		Size: 17.2 KB (17175 bytes)  
		MIME: application/vnd.in-toto+json
