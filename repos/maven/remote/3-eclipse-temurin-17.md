## `maven:3-eclipse-temurin-17`

```console
$ docker pull maven@sha256:e5ecbc4df842ec3639d9e17d6be339659e8bcb47dddacb354c8aeea281b940b3
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

### `maven:3-eclipse-temurin-17` - linux; amd64

```console
$ docker pull maven@sha256:3463c283f9d91e60b2418af2b345d96485b835a0fda875bcc34d34342ff09860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249342276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1bd790b806573a47afc1673e9c1a540b65e2161470461687674eed12545413`
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
# Wed, 11 Nov 2026 23:17:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:38 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:17:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:17:45 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:43:38 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:43:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:43:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:43:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:43:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:43:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:43:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:43:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:43:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:43:38 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:43:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:43:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:43:38 GMT
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
	-	`sha256:98af169af4411c73a764f2d7e688ecd9ed294bb1dcb9138b57d2dff8cb1251fe`  
		Last Modified: Wed, 11 Nov 2026 23:18:06 GMT  
		Size: 24.1 MB (24056830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca468dfa14066eb60a13945b8fd511f8890200df96a96663dcf6da0e1b8994d`  
		Last Modified: Wed, 11 Nov 2026 23:18:09 GMT  
		Size: 146.1 MB (146089249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d50fadf3cc6210289e394cade03d8cd1a6b58711d98a177d362dd3d2e34e3ff1`  
		Last Modified: Wed, 11 Nov 2026 23:18:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907e4a4a43230306b09495e0f7f7b5d66e8af45dae351e560f8fc4af1302f7d5`  
		Last Modified: Wed, 11 Nov 2026 23:18:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c445772b614980c3204158a4a54661b3432f200a3fb8e629e06ec2195cc7549`  
		Last Modified: Fri, 20 Nov 2026 05:43:55 GMT  
		Size: 27.0 MB (26966587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e21ef646bc1fdea4d3a1baebefe3dae209bc49c1a90cae773c0e63ad0664c5`  
		Last Modified: Fri, 20 Nov 2026 05:43:55 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38dd4e4ea91e7f8c500e092d67b9496439007e9d747f99266d43925d4501ec85`  
		Last Modified: Fri, 20 Nov 2026 05:43:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9468b91d8021290c7291c90d69bd169c17d647bd82e5f9c02a260d15b3501012`  
		Last Modified: Fri, 20 Nov 2026 05:43:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17` - unknown; unknown

```console
$ docker pull maven@sha256:7b7819982361e65832b9488570c71aa381d84632a62ebc199cc21492b360f1c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7046528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63912e6f0decf3c1de05f793ccd14c2d000e462b89d38cd1f74a7fb6b288f57a`

```dockerfile
```

-	Layers:
	-	`sha256:fbe461fae9e27de379a7ca0724bb7628c4470b50bd96a074e92a9e848e129d0b`  
		Last Modified: Fri, 20 Nov 2026 05:43:55 GMT  
		Size: 7.0 MB (7027319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69ef4305aa5199341b0b1fea8ea6be85aae4f10b5c81095f1453bf1b42c64417`  
		Last Modified: Fri, 20 Nov 2026 05:43:54 GMT  
		Size: 19.2 KB (19209 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-17` - linux; arm variant v7

```console
$ docker pull maven@sha256:be42fdc50af821f1e28b9bfdc489e4b5b0220437579f44a605f74a7e8792d10c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244871710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549bc7e4a6156af5307af7d0b6e1618171265665c312cad2e0aa329f3963dac7`
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
# Wed, 11 Nov 2026 23:20:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:29 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:20:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:42 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:15:53 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:15:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:15:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:15:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:15:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:15:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:15:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:15:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:15:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:15:53 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:15:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:15:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:15:53 GMT
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
	-	`sha256:34b35825ed115586000cfa61867416589b4f02c3bf8c00efdcf28b1d018b060b`  
		Last Modified: Wed, 11 Nov 2026 23:21:01 GMT  
		Size: 21.3 MB (21334733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b0d3e69c173c95459af505ec3bc5ea3c983d7a1cc4019967caa0ade2e15fd4`  
		Last Modified: Wed, 11 Nov 2026 23:21:04 GMT  
		Size: 143.4 MB (143389309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce11d043cf908c4e0bd9b94f238c523664fca3e6105b81918f872824735b87f0`  
		Last Modified: Wed, 11 Nov 2026 23:21:00 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16c161d1b2200789002756923b95ca948ed158e42ecc595e0525e884345857e`  
		Last Modified: Wed, 11 Nov 2026 23:20:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c911ae7145ec7a4184a85461caeba49dbf8a998c4f3eb15d64af8be03622c577`  
		Last Modified: Fri, 20 Nov 2026 05:16:09 GMT  
		Size: 30.7 MB (30715225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b691bf4a3c8bd9b5d1ca548f1416ee313ca700e2bc3ee9731dcc0c9932ef6e5`  
		Last Modified: Fri, 20 Nov 2026 05:16:09 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7413cf72c3e8b94ae72f0e15b8550a9f07830b5043185a328fc5d3850512eb`  
		Last Modified: Fri, 20 Nov 2026 05:16:09 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00486348e4bb70906dfc2e1ce423de1e45133b6f20b4d7e2b78a080d3316f7e4`  
		Last Modified: Fri, 20 Nov 2026 05:16:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17` - unknown; unknown

```console
$ docker pull maven@sha256:9a685cc1e62f3937a2ea13d3e83a3df5348e10a09325dd3a90af823065d49682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6969708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cce54b01c9b19118a7ee8fdecae0eed328a1a1f86241b30a6ceeb7884eb53f`

```dockerfile
```

-	Layers:
	-	`sha256:7721d42966668219d1e89f737515206747e13d082e22289dd39edf65ee85fc25`  
		Last Modified: Fri, 20 Nov 2026 05:16:09 GMT  
		Size: 7.0 MB (6950368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b088f6b172dcc85d218e936e2f8dba37be8d2615371ea1f153495fa502dfdeb`  
		Last Modified: Fri, 20 Nov 2026 05:16:08 GMT  
		Size: 19.3 KB (19340 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4f72b947cb15ec580a4d70cc7f649e173a4ff1850e25543af3722dd497970a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246712409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32400d7212c0c226238f13d61ec07f64b6a82e09f9558c98810d46f0e5e0cbb3`
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
# Wed, 11 Nov 2026 23:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:32 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:21:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:21:39 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:46:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:46:34 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:46:34 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:46:34 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:46:34 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:46:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:46:34 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:46:34 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:46:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:46:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:46:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:46:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:46:34 GMT
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
	-	`sha256:d729b69ee2ed75f2a9b816d3305e6cc218460f9b6e1b49c7625c1039c63f934e`  
		Last Modified: Wed, 11 Nov 2026 23:22:01 GMT  
		Size: 23.9 MB (23933794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f47a5eab62f4d10679c1c5d5d6620dbd8ea5a24f07c2790dc46c4a8391d0d3`  
		Last Modified: Wed, 11 Nov 2026 23:22:03 GMT  
		Size: 145.0 MB (144968209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8e0d523c7ef7b9faaeda7fb6b17e5d14477d1df21d5aa4bd3ba9701712697b`  
		Last Modified: Wed, 11 Nov 2026 23:21:59 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880b809a0edde95df53437f0e11718db941aab87209195fbbb28219923b03c99`  
		Last Modified: Wed, 11 Nov 2026 23:21:59 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab4aa1df9d8e154f0ef3f817f5161fbbcad1c652b07265965ebfbe2a6e79b64`  
		Last Modified: Fri, 20 Nov 2026 05:46:52 GMT  
		Size: 26.6 MB (26601564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9188df5ede604ca9d189f4c86b51df770b87981c735fb94608de9941ff2fa3`  
		Last Modified: Fri, 20 Nov 2026 05:46:51 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ad0c9c73ecfd23f1d2d05a3218855c7eac7bc3eddb02b658d28db295c2a33f`  
		Last Modified: Fri, 20 Nov 2026 05:46:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da82ac5ff4eede94492e05b85c4ca6299146e6791400fa3b1253039a7dcf570`  
		Last Modified: Fri, 20 Nov 2026 05:46:51 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17` - unknown; unknown

```console
$ docker pull maven@sha256:6ae447cacb0e5dde862b904a4fde0cb0ab5ef4ff449bcbf74513ed9e8363b72b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7240158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d0355e959a16cb4c35b0bce9f5338983e7602dfd5fb2bbaf75136ea09461c3`

```dockerfile
```

-	Layers:
	-	`sha256:5c19e38b8f84327e20ac345422b50d200511983d86c6b8bb5e9df00d12f8d6d5`  
		Last Modified: Fri, 20 Nov 2026 05:46:51 GMT  
		Size: 7.2 MB (7220780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:699e27fdbdfb669e955b17538b24f6dbe16f3c58a8a61164589b37f0e30ad995`  
		Last Modified: Fri, 20 Nov 2026 05:46:51 GMT  
		Size: 19.4 KB (19378 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-17` - linux; ppc64le

```console
$ docker pull maven@sha256:18b974d3fa55d3b9b3ab0441eb9fc55ab8bc346c8a63b1432016bb895810f4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259401537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc03c2a49c377b8f837deef486511b51c030d71628eced3d8618047194010e7`
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
# Thu, 12 Nov 2026 01:50:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:50:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:50:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 01:50:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:50:35 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 12 Nov 2026 01:50:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 01:50:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 01:50:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 01:50:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:50:55 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 07:49:55 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 07:49:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 07:49:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 07:49:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 07:49:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 07:49:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 07:49:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 07:49:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 07:49:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 07:49:57 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 07:49:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 07:49:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 07:49:57 GMT
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
	-	`sha256:3fef64402e9adb849d64fde85c561eebcdadb746ca9f11a0c3a4ee0f1f1319ba`  
		Last Modified: Thu, 12 Nov 2026 01:52:05 GMT  
		Size: 25.1 MB (25127336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8a28e9ec644a41e1153f0ef2527cc723207247047d89bc3050ad8f09781aa3`  
		Last Modified: Thu, 12 Nov 2026 01:52:08 GMT  
		Size: 144.9 MB (144865964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0a1f3d99cc73d8dae020701da6716812c184c8fc5e823281016b32e563d955`  
		Last Modified: Thu, 12 Nov 2026 01:52:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af298c33516417ec6e06067be91d15b4961853c456315ce0b2dc2ac8f1b7205`  
		Last Modified: Thu, 12 Nov 2026 01:52:04 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4511f5f2501c93fb3fbf8b112c5d4e3ffd77d06ab7655ec4045f2b8db5a03ea8`  
		Last Modified: Fri, 20 Nov 2026 07:50:48 GMT  
		Size: 32.1 MB (32063982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51dd149fc041a63819021c10a4491c8d13b6ee3842f822de4583693e81fd81a6`  
		Last Modified: Fri, 20 Nov 2026 07:50:47 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09914b8122e2ef48dedb61d612b700897ad5ad6ac245d8262e8dfd74bf476ab`  
		Last Modified: Fri, 20 Nov 2026 07:50:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff6755c2a487bc713d565d696fc2f298a76d45b5d4713b44535ad0d8f7e3f20`  
		Last Modified: Fri, 20 Nov 2026 07:50:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17` - unknown; unknown

```console
$ docker pull maven@sha256:ab4ec1a039a420688a187101a4e3d4af884ac5d4d1f1bb822fe3b53ccda73ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7124352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5e81c2f59ffcfff6f9f15371aa5608161b44432d81328926e3dcac9f51dd48`

```dockerfile
```

-	Layers:
	-	`sha256:041ff6f9f75edab3455786828b19a0933d4473f306723f5125a3cf26522db36c`  
		Last Modified: Fri, 20 Nov 2026 07:50:47 GMT  
		Size: 7.1 MB (7105075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:630047116b8eff424b417d13abd560fd9542015a9bb68dfd5c360f42f5628c10`  
		Last Modified: Fri, 20 Nov 2026 07:50:46 GMT  
		Size: 19.3 KB (19277 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-17` - linux; s390x

```console
$ docker pull maven@sha256:50df10970009a639ef0a0767b5d693e74a2148d9f427f90a44633637eb7c3edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.5 MB (238463637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:880d33cf6252328eeeed4ba90187bd7b11ff1168879667a362887ebc359a64fc`
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
# Thu, 12 Nov 2026 00:17:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:17:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:17:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 00:17:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:17:16 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 12 Nov 2026 00:17:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 12 Nov 2026 00:17:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 12 Nov 2026 00:17:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 12 Nov 2026 00:17:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:17:30 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 05:53:26 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:53:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 05:53:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:53:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 05:53:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 05:53:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 05:53:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 05:53:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 05:53:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 05:53:26 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 05:53:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 05:53:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 05:53:26 GMT
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
	-	`sha256:4fc99a09987b3af8aa2b38f48a06f1d1413aad10edb6f47a0c64020777930037`  
		Last Modified: Thu, 12 Nov 2026 00:18:03 GMT  
		Size: 22.9 MB (22874771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afa475ed5adf88c65dfe3fa9058e122a0b8841aa6c3d88a2f1cccf6292ffb19`  
		Last Modified: Thu, 12 Nov 2026 00:18:05 GMT  
		Size: 135.4 MB (135396221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7cf3091f0f612614d898e08f77c8d9c6a1ce5234741ea426635e266589271d`  
		Last Modified: Thu, 12 Nov 2026 00:18:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2093d43eb2bb2e23f2708cc5583888ac4cfa15972ce6d60e62eb550c39a4d5c2`  
		Last Modified: Thu, 12 Nov 2026 00:18:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b157f9025ebbe84c82051b14d50e7168f1dcf350f39f4941b4095ab476e77f`  
		Last Modified: Fri, 20 Nov 2026 05:53:49 GMT  
		Size: 28.3 MB (28260767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15678402e23a52ad04748aeae8ec995de6d61e6b049535053cd45931ea8a3ea4`  
		Last Modified: Fri, 20 Nov 2026 05:53:48 GMT  
		Size: 10.1 MB (10058967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7027b5049e44a2dcc2b4a629c8d315fb5c44dda039809bd7030f55886fbdd47e`  
		Last Modified: Fri, 20 Nov 2026 05:53:48 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08392b22d326f5557595acbfde2cd8996895112ae3adb9c69d3f8195193cba9`  
		Last Modified: Fri, 20 Nov 2026 05:53:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17` - unknown; unknown

```console
$ docker pull maven@sha256:0d2ea61f8c292072ec1105f02133f7cbc9c44205c5847e9965756f16aea6e3b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6979310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4268076683fad5a7c435393cf8dff7162190992816211da79616694dc8d380c7`

```dockerfile
```

-	Layers:
	-	`sha256:897a90133d1fe24bbd23bbae1af5dd1f7217c88b00e0b9c95370e33325ea7fc7`  
		Last Modified: Fri, 20 Nov 2026 05:53:48 GMT  
		Size: 7.0 MB (6960101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0379ca384e833bea0e2cd40bbeaf64eea91e3fed2de17378715a667ff48e2528`  
		Last Modified: Fri, 20 Nov 2026 05:53:48 GMT  
		Size: 19.2 KB (19209 bytes)  
		MIME: application/vnd.in-toto+json
