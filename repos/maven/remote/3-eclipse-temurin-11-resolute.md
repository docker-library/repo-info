## `maven:3-eclipse-temurin-11-resolute`

```console
$ docker pull maven@sha256:58dff5645c5c1f2063f19b60c176030719ba0a9aa50cee73d07936fcd17f080e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:3-eclipse-temurin-11-resolute` - linux; amd64

```console
$ docker pull maven@sha256:c812056f7bb71df1572904a7b0e21bc0e3f7dd825c64c0616b5d20d215ee0ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245259321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fcf3d4ebdeba8f6b6e969dd67e77013892dd88f1cbf596980abad3e26662af`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8947.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:50.132595+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8947.tar
# Wed, 11 Nov 2026 23:16:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:16:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:16:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:16:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:16:39 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:16:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:16:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:16:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:16:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:46 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:18:54 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:18:54 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:54 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:54 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:54 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:54 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:54 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:54 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:54 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:517b871c26eac1b24d47992388bcc20e2afba3643a89e8c4a3921bfa5e1d1d28`  
		Last Modified: Fri, 06 Nov 2026 12:44:30 GMT  
		Size: 42.2 MB (42166579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96aae9022e0e1b310a415e7c2ff1b435d853e8eabb2711cc70f4ad4010cc81b7`  
		Last Modified: Fri, 06 Nov 2026 12:44:32 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecfbee40ff52480611a57be5ca34ceb73845284e293a0e57dd134c0bebc444a1`  
		Last Modified: Wed, 11 Nov 2026 23:17:06 GMT  
		Size: 20.1 MB (20137106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19822517d04d0eed30ba8dd543e2bb6c739c186e7b37c210259b6400276888f7`  
		Last Modified: Wed, 11 Nov 2026 23:17:10 GMT  
		Size: 145.9 MB (145930558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23f125bee10375648333e402e469dd943de75d4cc349e38e55d9e1e4efc2ed4`  
		Last Modified: Wed, 11 Nov 2026 23:17:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b643c306a986cfbb572fd1369265fe73040371823c48bce69bd2231cb4d78fc3`  
		Last Modified: Wed, 11 Nov 2026 23:17:05 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43d315f5e651514b01a000c6cc255718a7e3db98e0bc9c8e1bd9832d626e26a`  
		Last Modified: Fri, 20 Nov 2026 06:19:11 GMT  
		Size: 27.0 MB (26962046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75242c5bc3a88770af54a04b310fce59eda28ad25ee3815ad47d97905ffb4c04`  
		Last Modified: Fri, 20 Nov 2026 06:19:10 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c5d0c62ce26b6264ff761170140727035c1a3fe44013a9e2aa636963648506`  
		Last Modified: Fri, 20 Nov 2026 06:19:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b120ab7623699ade92c6278582c7889dcc3a35a3e80824e629039e638a6dc7bb`  
		Last Modified: Fri, 20 Nov 2026 06:19:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-resolute` - unknown; unknown

```console
$ docker pull maven@sha256:051def0ec5e7f6540b3f37e7eab4c559660823f1033da34b9680748de4a2af43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6884413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3273fa1fcca83015abb8bfd3746e4b5c986e152e331c34463cf6d1a3925a06`

```dockerfile
```

-	Layers:
	-	`sha256:a4bdebd59ea3a6da2fdd4b10c1e1a331794188c333e99adf96a3bceefead7ed4`  
		Last Modified: Fri, 20 Nov 2026 06:19:10 GMT  
		Size: 6.9 MB (6865216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71132447d2a414932a0b225897a079b6ca95aecdeaf3fdeaf32685d5efae3dc0`  
		Last Modified: Fri, 20 Nov 2026 06:19:09 GMT  
		Size: 19.2 KB (19197 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-resolute` - linux; arm variant v7

```console
$ docker pull maven@sha256:1a3b87b6c1ecd9a42b88baeaa4f6a1509e085958b1585dd21c6f3222c4583261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237700489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fbe59ad9bd8f36a84d7cf3438bfe36c9b0c9a7b32fbadd25a9e7c6e8a44357`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:57 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9015.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:58.337780+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:58 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9015.tar
# Wed, 11 Nov 2026 23:19:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:19:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:19:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:19:38 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:19:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:00 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:12:33 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:12:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:12:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:12:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:12:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:12:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:12:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:12:33 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:12:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:12:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:12:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e559f24d08dd72bc9d2a5e147da5879e37237192fcb4d790a7366125ed50a3fe`  
		Last Modified: Fri, 06 Nov 2026 12:45:01 GMT  
		Size: 39.4 MB (39369387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba25364baa451aafecaaa07dc2bf000816ef74517ab4b24424fc09b8da70affa`  
		Last Modified: Fri, 06 Nov 2026 12:45:04 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cb3eb0e339859d1550f26f82a33e896440ddc33389f49f5265382f6c956221`  
		Last Modified: Wed, 11 Nov 2026 23:20:19 GMT  
		Size: 19.1 MB (19145946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dccf6b8656e1450d4717f0630008d373b8d6fc75c8f354e7488358def35e584`  
		Last Modified: Wed, 11 Nov 2026 23:20:22 GMT  
		Size: 138.4 MB (138410315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953b48c5a241384cc06a645d8695136e7781ba107ee5680818dde00a1749ffe2`  
		Last Modified: Wed, 11 Nov 2026 23:20:18 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9281b460f5f5d2238a6d618a038469d0667731f9d6f33d5eb4fe58377651e495`  
		Last Modified: Wed, 11 Nov 2026 23:20:18 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:525cc138482c790f05e332cc6b193cbd293ad6662a9df069f0e2efb042c2bba5`  
		Last Modified: Fri, 20 Nov 2026 06:12:50 GMT  
		Size: 30.7 MB (30711788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024f36df5056ebb613c6b462ed1511daec4dea9da8e3c5dfaf386705d9fc6721`  
		Last Modified: Fri, 20 Nov 2026 06:12:49 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94724c6ab921b097ba663d9695ea681f4c9be2ba4efb09b8a33b254a6ade85ed`  
		Last Modified: Fri, 20 Nov 2026 06:12:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611a8dfe817246a554f845926a15772b6366c052993df1657bd17bfd513a5148`  
		Last Modified: Fri, 20 Nov 2026 06:12:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-resolute` - unknown; unknown

```console
$ docker pull maven@sha256:0ba93b3c519dcd80da810b3f48c5cc7d0d8700b14c336e83c69445474a897b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6883553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519bb3bd9e1e3fe3b44068b980e095e7bda7ad41dc898a299d819df3cc9ece3f`

```dockerfile
```

-	Layers:
	-	`sha256:cbbc61d1e624242931b679e96ca49fcb4adb7ba505a8238894cd15f29b84ff12`  
		Last Modified: Fri, 20 Nov 2026 06:12:49 GMT  
		Size: 6.9 MB (6864226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30ee304e930e49971e41b7d98f1775458eec138fab4420d8a2e69b47e23f614e`  
		Last Modified: Fri, 20 Nov 2026 06:12:48 GMT  
		Size: 19.3 KB (19327 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-resolute` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e41f659e194d52027dd4b864ed171201c653389fef28d83c24695a92dbd62a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240378257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68df71852bbb4c75041304d48920c59a67a2460690379568a52bdce0aadc111d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:20:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:51 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Wed, 11 Nov 2026 23:20:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:58 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:16:04 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:16:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:16:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:16:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:16:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:16:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:16:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:16:04 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:16:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:16:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:16:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e378987ae27fcf415bc992628e5b381f0cce62a9733e0c05dfb42fe240fd9821`  
		Last Modified: Wed, 11 Nov 2026 23:21:18 GMT  
		Size: 19.9 MB (19947809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912ef8544a7a8958f6179eff28ef8383e5531af51290ef7a6c005f7adafe6c60`  
		Last Modified: Wed, 11 Nov 2026 23:21:21 GMT  
		Size: 142.6 MB (142624235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8b410e8ba128ceb8f08e5775ef4230f31d8c1dca0e72eea7a2f83c819f753d`  
		Last Modified: Wed, 11 Nov 2026 23:21:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b255bc1cc80c2341cf1429f26a35ca19ce5ec80d4903f1d610212ff3f5995eee`  
		Last Modified: Wed, 11 Nov 2026 23:20:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b895b18a69cd951d87775d3d582befaa5ea028c02fa81d08848918f72b1aaf93`  
		Last Modified: Fri, 20 Nov 2026 06:16:20 GMT  
		Size: 26.6 MB (26597365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c811271c7e6f0e950b1cb0532141cf3f0587a6d1c33375124dae830e222aa068`  
		Last Modified: Fri, 20 Nov 2026 06:16:20 GMT  
		Size: 10.1 MB (10059016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac42a243d30e5bc23a595e94a9e6330ffb9ec6031038aaf521415c64313a924`  
		Last Modified: Fri, 20 Nov 2026 06:16:19 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a51c36c6de54914998e180a7fe5874a595f3458a9b196b16cb1c3405c0ddf4`  
		Last Modified: Fri, 20 Nov 2026 06:16:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-resolute` - unknown; unknown

```console
$ docker pull maven@sha256:d47479aaa87d0fb0a0efcb33188b83ebbaef619221f1cf84e19324720d4f60bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6890938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139adb1c6f78a88cb562d578551ab54362135a518622a10d77873b99387f1489`

```dockerfile
```

-	Layers:
	-	`sha256:6d8bb7e6678b05287a751d2875cc747e654b519b3e85ff8ca121d7b3dd511374`  
		Last Modified: Fri, 20 Nov 2026 06:16:19 GMT  
		Size: 6.9 MB (6871572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:178823fadabb97974f0f727a498900eddbc26735f70c7e5df3eb1cd49c1b6c78`  
		Last Modified: Fri, 20 Nov 2026 06:16:19 GMT  
		Size: 19.4 KB (19366 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-resolute` - linux; ppc64le

```console
$ docker pull maven@sha256:dc3a9f4d3625261a668be1f087e13523f0f7ad8e980ae7a19fc1a2a80ba49f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244133066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8b0dc3c4023e7f8f71537dfeaf37274c436defb70091297284ad8459b3f04c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8890.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:02 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:03.049862+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8890.tar
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:42:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:42:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:42:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:42:10 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Thu, 12 Nov 2026 01:45:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:45:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:45:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:45:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:45:39 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 09:32:17 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 09:32:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 09:32:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:32:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:32:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 09:32:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 09:32:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 09:32:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:32:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 09:32:18 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 09:32:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 09:32:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 09:32:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3c9701fbb9a70cf7a42c70b0ed1319dc1fda04dcd07e3702eaa3b62fb99eb313`  
		Last Modified: Fri, 06 Nov 2026 12:44:51 GMT  
		Size: 47.3 MB (47281220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122ff67c910d027fb3961e0d1c3631321593f40c9ed77173f3af88d3e12ebe04`  
		Last Modified: Fri, 06 Nov 2026 12:44:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cedda96933e67a9dd3d8f3b80302e1b93041f3af2633a2b538d81b728e6d2f`  
		Last Modified: Thu, 12 Nov 2026 01:43:16 GMT  
		Size: 22.4 MB (22447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d91117141e7011e650b4d1d784f31f8aacea9da3443ae85247c9e75edee169`  
		Last Modified: Thu, 12 Nov 2026 01:46:35 GMT  
		Size: 132.3 MB (132281173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348e58cfa1e06b195367f283e52ef61481f4df40db540bad4cebad8659ae0b77`  
		Last Modified: Thu, 12 Nov 2026 01:46:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a993d7783264f97351a506753b8f04f93fa16d47baff3ff0931bac9b8dc864b0`  
		Last Modified: Thu, 12 Nov 2026 01:46:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec96019f08c0b344c9cad3c80e69f748fb958f6d56d14d139ceb3d3c9b310fb3`  
		Last Modified: Fri, 20 Nov 2026 09:32:59 GMT  
		Size: 32.1 MB (32060173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:745f5a58fe1324c99dff08a8e227cbae7b401dd984e13029a15ba33f77c09f32`  
		Last Modified: Fri, 20 Nov 2026 09:32:58 GMT  
		Size: 10.1 MB (10059022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a356cc02e59349430c35511e32feaf3abf54dde1cb067f537e5fa2e8ab1bba87`  
		Last Modified: Fri, 20 Nov 2026 09:32:57 GMT  
		Size: 859.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7928b33fa3f3f97aad22f74feb2d32baede3320ce434750dc436751e7a6cdee`  
		Last Modified: Fri, 20 Nov 2026 09:32:57 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-resolute` - unknown; unknown

```console
$ docker pull maven@sha256:bcab0fdbacc39259d6fdbc9d42d29bb1b0b9f733812b07ac4f2f431d72274dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6886746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ae6330a3be74d9e67979ea9f0e979a5dabd8b1312b4377ea102276444d80b9`

```dockerfile
```

-	Layers:
	-	`sha256:6036cd41ea04879d963f7b94a8357d054b0366e99ab328b8dd36724d7df2b03c`  
		Last Modified: Fri, 20 Nov 2026 09:32:58 GMT  
		Size: 6.9 MB (6867481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5889688d8d61921861549f0ddcedbee1c2c620d8552168c31748fa2d71e33b2b`  
		Last Modified: Fri, 20 Nov 2026 09:32:57 GMT  
		Size: 19.3 KB (19265 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-resolute` - linux; s390x

```console
$ docker pull maven@sha256:9d28083ac1e69c232d23d9b3c38c24f1c2310bea30c65a20aaaa12ca26c5fcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226924139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff5a64eaa2bee3e1ca8b61a6a47455e045b267fe77853f6165eabf287dd2bdf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Nov 2026 10:28:16 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.8964.tar --tag 26.04
# Fri, 06 Nov 2026 10:28:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:28:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:28:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:28:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:28:17.309318+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:28:17.309318+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:28:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.8964.tar
# Thu, 12 Nov 2026 00:17:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:17:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:17:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 00:17:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:17:04 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Thu, 12 Nov 2026 00:17:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 00:17:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 00:17:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:17:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:17:18 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:30:02 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:30:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:30:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:30:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:30:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:30:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:30:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:30:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:30:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:30:02 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:30:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:30:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:30:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ebf496bb096be6b82ba313293190a3327e20ae1237e4773fc2fd970f14189a85`  
		Last Modified: Fri, 06 Nov 2026 12:45:21 GMT  
		Size: 41.9 MB (41868890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4594477f13cbae1280f6f7e1cbb6d76cf44f4e7cb6e0b9effab4c015eff529`  
		Last Modified: Fri, 06 Nov 2026 12:45:24 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2cac50d69df637c6ce4898edcb589d4f60edf7db13f7ab6f8abfc15633c40b`  
		Last Modified: Thu, 12 Nov 2026 00:17:41 GMT  
		Size: 20.7 MB (20696945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70177760fc419fc06d188ec3db13cf4adee618c200f6f529e84763c76190baa`  
		Last Modified: Thu, 12 Nov 2026 00:17:52 GMT  
		Size: 126.0 MB (126037408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:231f9f0dd311683640f2be15d7a0e421bdb253067cdfe378e11128b30271d8f9`  
		Last Modified: Thu, 12 Nov 2026 00:17:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b620c9866df901913fcbc527ebbefb8517abc0384be62cc1e6d26b34a031a3d0`  
		Last Modified: Thu, 12 Nov 2026 00:17:49 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a716d8ab103277e162e4e5e9b28d6e3c13733697e5317b37a0aa42fb3576c76`  
		Last Modified: Fri, 20 Nov 2026 06:30:24 GMT  
		Size: 28.3 MB (28257903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4807f0b013fb3bb87568fd3cca64e90be34f2ed673a845d0ba641b2b30905241`  
		Last Modified: Fri, 20 Nov 2026 06:30:23 GMT  
		Size: 10.1 MB (10058970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ae8324a8d2ad52c8b0403f06935b82d7cb87749d5c9b6446d1d96eb22878e1`  
		Last Modified: Fri, 20 Nov 2026 06:30:23 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a6186d43f40ca7efe7c68f515ea0115ab2bd3aa8bca3543e7a4e972c49a634`  
		Last Modified: Fri, 20 Nov 2026 06:30:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-resolute` - unknown; unknown

```console
$ docker pull maven@sha256:963d0f8a6affe10608f787a94e442faef6c70f5bcd52fdc68eecde61f9cf8d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6878964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2da85edf857178c4f2045db0fe5001bde678521cf5b7d5148043ae7c48fcf8`

```dockerfile
```

-	Layers:
	-	`sha256:a4e889a1ae8c7dff5ff4fbb177e568d1693f555d81807316173547d6c2e3ace3`  
		Last Modified: Fri, 20 Nov 2026 06:30:23 GMT  
		Size: 6.9 MB (6859767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa9f79e69a3f5348e67de909fae18d8ac6577fe72f6def65f006a0843c771946`  
		Last Modified: Fri, 20 Nov 2026 06:30:23 GMT  
		Size: 19.2 KB (19197 bytes)  
		MIME: application/vnd.in-toto+json
