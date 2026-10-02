## `gradle:8-jdk17-jammy`

```console
$ docker pull gradle@sha256:b48edc57ed8fb23fd3c51d11b76bee89adeaf8f6f50b66c15191d155984dea93
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

### `gradle:8-jdk17-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:53d88d5164a5a274541d4616aa3c43d4ad4536d5880da93c8f6db5e245b3382c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.2 MB (385190619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a8006b7f62ae6015a2a896d52630cab1c3f8edb77000cd91368d592908cff5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:38 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:46 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:18:57 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:18:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:18:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:18:57 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:18:57 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:19:14 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:19:14 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:19:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:19:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:19:17 GMT
USER gradle
# Fri, 02 Oct 2026 02:19:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:19:17 GMT
USER root
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b82abea1220a2e67704e54416e0b991cd8add4581e3308e73eef07428e841f`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 20.7 MB (20663555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e23f9a38ba3d7293ea533a1154d9c4aee694d1be3dfdef80f4069df42d9d4`  
		Last Modified: Fri, 02 Oct 2026 01:19:06 GMT  
		Size: 145.8 MB (145833235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e581fea7614d1f7800cd17c7dfe8bbc97613ec44b7cbf3feb48ac86752a67d86`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305535c4d823aa4fb3965c59d8bc8edab7189095c0ea968efa08b94ca5008ef1`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21487fce4376c1763761e44f234059895457b0dd0996af81cc2a96aa6d4bf83c`  
		Last Modified: Fri, 02 Oct 2026 02:19:37 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850934a182dfa4ebdedffcb765cb1a92deb840c78d8ef4e43367e0603e420a3f`  
		Last Modified: Fri, 02 Oct 2026 02:19:39 GMT  
		Size: 50.8 MB (50811796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d431779f8a78eac11a1993dbfa1ffbdfe6bf34a14394c9ae0c5cc6162abe713`  
		Last Modified: Fri, 02 Oct 2026 02:19:40 GMT  
		Size: 138.1 MB (138068546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a277c0de6d61385cb622a692a9b1090e207224505cf653d13f8459d17bde05`  
		Last Modified: Fri, 02 Oct 2026 02:19:37 GMT  
		Size: 54.9 KB (54898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:d6a43911c650b68707ffa169045ddc2bba4dd3270b5bf31c8022b114152a5a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7871265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79249694ee80ca9720b12a85eaa3754bf5e2278b3c9f28ffccdd9cbd723364a`

```dockerfile
```

-	Layers:
	-	`sha256:5aa654ffacca6917e617487421f1a224e34f14ff96ca6b404f523ebbb704eb17`  
		Last Modified: Fri, 02 Oct 2026 02:19:37 GMT  
		Size: 7.8 MB (7848259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b44511a73e25cbdc29b36f77a758a2b8c91a7916e7cd3e3637d02e858c44253`  
		Last Modified: Fri, 02 Oct 2026 02:19:36 GMT  
		Size: 23.0 KB (23006 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-jammy` - linux; arm variant v7

```console
$ docker pull gradle@sha256:0b69f6f553573f07a2bb32cf8f29035ac77a55c982207572195a4f2ff5b097f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382350098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add69a909e24e0b399d4c033ae4e15688ea6d3af9626aa713582cb3682faf46c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:23 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:23 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:27 GMT
ADD file:f85ca4890cd4193429589692b507cff4da19fadfcd09f8f3b76059208fa9627e in / 
# Thu, 24 Sep 2026 22:24:27 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:11:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:11:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:11:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:59 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:12:14 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:16:06 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:16:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:16:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:16:06 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:16:06 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:16:23 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:16:23 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:16:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:16:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:16:27 GMT
USER gradle
# Fri, 02 Oct 2026 02:16:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:16:28 GMT
USER root
```

-	Layers:
	-	`sha256:63273367a03196c0df650ce441c9e9c9f2a05ed2241c911b17566eca78d2477d`  
		Last Modified: Thu, 24 Sep 2026 23:36:18 GMT  
		Size: 26.9 MB (26855856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e84712d8e0289cb56f26c047b9b564ca6ff46471720cfed063503f2ad287c7`  
		Last Modified: Fri, 02 Oct 2026 01:12:31 GMT  
		Size: 21.0 MB (20955759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b3fca89e7faf75dc90793e4274d59a5f3d4b500c8301b32c31fd935163156b`  
		Last Modified: Fri, 02 Oct 2026 01:12:34 GMT  
		Size: 143.1 MB (143143554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963ba00c8e5d2476c22f1af7981e4c2dd1d2bad7a58cdb478845808931e98523`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1e8bfa2f0c7785d7d997967da8decad095323c8664630a7eba509df276395`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed58985917893a205c70fd911203e5779ac5e05ec6594bfa39725bd80fd4e390`  
		Last Modified: Fri, 02 Oct 2026 02:16:46 GMT  
		Size: 4.3 KB (4299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7adba117422d98acf3ba444a37d9dc01f775c8fa585b6338cedabfb37abf8a`  
		Last Modified: Fri, 02 Oct 2026 02:16:49 GMT  
		Size: 53.3 MB (53288143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c221a4f7e045ae8c633665dc3639d10e0ddfcc98f73442e4f6e974d158d15605`  
		Last Modified: Fri, 02 Oct 2026 02:16:50 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4445652c9101e19dca219e4e40f2a3e6079779b1edbe1e5ec3da2054758184c`  
		Last Modified: Fri, 02 Oct 2026 02:16:46 GMT  
		Size: 31.3 KB (31296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:d83953ea6c04d54eb01603d96ba1894cb58b4d018380f5d153eb9c26114e36f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7789662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ea041b54048fc541d83fa2cf04dd7f14162e9f0561000c427b34b2e6b62abc`

```dockerfile
```

-	Layers:
	-	`sha256:aab63d6c2af3646525003a29d461ffe082e9c60492a0d29b448bd4fcbd9e7ab5`  
		Last Modified: Fri, 02 Oct 2026 02:16:47 GMT  
		Size: 7.8 MB (7766545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a03a093fb28d28d7c56e68381b55c41aa9dd78c49c3fd4ac84f8d59d47b526eb`  
		Last Modified: Fri, 02 Oct 2026 02:16:46 GMT  
		Size: 23.1 KB (23117 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:f7f6a8cae93a112491ab6f65ee37f89c0666e297d6c11cdb8be9163dba42a4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.0 MB (382955460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96542d8db2735c87cc5a37e3695516328fb10634c1bd5af3a63c7796b2727c56`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:31 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:40 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:19:04 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:19:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:19:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:19:04 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:19:04 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:19:21 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:19:21 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:19:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:19:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:19:24 GMT
USER gradle
# Fri, 02 Oct 2026 02:19:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:19:25 GMT
USER root
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5d715a0f93f705e98bdcad40d335d348c77f7c2a00f12be9c8a71567d5ef5b`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 22.1 MB (22084493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7bb81cfba469c863dda0ad37169f4cac67610cb425c453a7c902a5cca1a173`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 144.7 MB (144656610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5513c0a8ac4c4c8c75b3d76aeca0b4b3e79dd05409312400bb8bf7e1621afdb3`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307a1ac57ddb20b86aa8a2e97c3ec86d299d0ad5224edc95ea43e3f0a48df9a2`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3f32e04aa0db505cb00d8a8f1f7b1100cfc71bc03ae52f48e7b40b7bef0850`  
		Last Modified: Fri, 02 Oct 2026 02:19:43 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f015b5e920db2c7f8b6fe3584cd14694e4bbd6e13f653ebbd3543dcae7e1e9`  
		Last Modified: Fri, 02 Oct 2026 02:19:45 GMT  
		Size: 50.4 MB (50395199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1765d94daff6746952032f0dd64e33942e33cd5ddb3a6a02f5b7b56850066f4c`  
		Last Modified: Fri, 02 Oct 2026 02:19:47 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af2b5b2cb8668bd95f5a5335d3d65a5b01a16029ef403563e1a67a73f3a92a6`  
		Last Modified: Fri, 02 Oct 2026 02:19:43 GMT  
		Size: 59.5 KB (59521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:cb46a0ba62b70a0f9bef1521b8a55b0e87ec53c4e77ca103b334a0c9f7d74188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7973016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33136eea27ea1c727213331a78dc6fa65878dd5cc7c571206d7d26dc5355860d`

```dockerfile
```

-	Layers:
	-	`sha256:841ef08d835537fb2d53e2a73cd4892cb512bab62d31f3f68acd66a2ac99acd7`  
		Last Modified: Fri, 02 Oct 2026 02:19:44 GMT  
		Size: 7.9 MB (7949874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d0cc74ca2dc82d92e13b46d1648e59b902bd83174b4813a58b785f9bc14e62e`  
		Last Modified: Fri, 02 Oct 2026 02:19:43 GMT  
		Size: 23.1 KB (23142 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-jammy` - linux; ppc64le

```console
$ docker pull gradle@sha256:59c26f42b7b2f6cf3289ef237ac57e827c41a747eb052222ff6b7d469c9b633d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.8 MB (395832880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6f0b04afce52f67301a48885d6cbf182340be2a20371e8b1e0311624ff2a8c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:44:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:44:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:44:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:44:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:44:19 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 03:44:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:44:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:44:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:44:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:44:43 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 06:14:18 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 06:14:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 06:14:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 06:14:18 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 06:14:19 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 06:14:57 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 06:14:57 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 06:14:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 06:20:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 06:20:52 GMT
USER gradle
# Fri, 02 Oct 2026 06:20:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 06:20:55 GMT
USER root
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44adfa8ca464e09231d3ade111f9d3bfb5ca442eb510c55a8d725492f711ef9c`  
		Last Modified: Fri, 02 Oct 2026 03:45:25 GMT  
		Size: 22.6 MB (22551114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8727d29a934ee3613b51eec70bcdde250423b8340eeb5295bcadab687e7e4f0`  
		Last Modified: Fri, 02 Oct 2026 03:45:28 GMT  
		Size: 145.7 MB (145682866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f3fb1464e39c9a86605a50dba3aea96b52cbc752a7138b44dd41f905fb3fac`  
		Last Modified: Fri, 02 Oct 2026 03:45:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82736c79e7701a2652d8a6041483ad0c8b5e2ddc609dc16254ba72eb5545264f`  
		Last Modified: Fri, 02 Oct 2026 03:45:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb264ee629b38de5f3a336b26ea7ef281f0ad77243047b5fa9fc56e5dd811e6`  
		Last Modified: Fri, 02 Oct 2026 06:15:52 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a65d2bbabe056244c7a5fda4a6f0bcd5d4607f8eccf9fb60152479f21a289f3`  
		Last Modified: Fri, 02 Oct 2026 06:15:55 GMT  
		Size: 54.8 MB (54785184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf5ceb0dff6b3807aa9046f1b487609ad0c79cefba04ff52c20b430935cc7df`  
		Last Modified: Fri, 02 Oct 2026 06:21:43 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f403bf1455544435c8441df8a62575efc1c7abdbba61e177a31f3640769c96f7`  
		Last Modified: Fri, 02 Oct 2026 06:21:40 GMT  
		Size: 35.0 KB (35009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:0f98f8d2856fe3d4d030112bbbffda1712c27042eed1f0dbdd864f909faa361b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7902152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f994c3580822a617b10c2dd9fcb23457727801d2ca494056ecea0666b4cb9e`

```dockerfile
```

-	Layers:
	-	`sha256:de82d32abf5730410f53929659b249e63211c7ab497ce1fc9701ced694c48f10`  
		Last Modified: Fri, 02 Oct 2026 06:21:40 GMT  
		Size: 7.9 MB (7879103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cafc074ea98f21e5f7611b914b1782d6fa1dea4a6802d84444374bb7cf3fc573`  
		Last Modified: Fri, 02 Oct 2026 06:21:40 GMT  
		Size: 23.0 KB (23049 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-jammy` - linux; s390x

```console
$ docker pull gradle@sha256:871fc1a330af2dff17d17628b076180d3a23e4223d3fe1fea66cca53e9e542e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **373.1 MB (373091829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd3297e466df3944f99e65dad8f71ef5919c118166b6fd41c398c5a86bdfc6a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:21:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:21:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:21:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:21:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:21:28 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:21:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:21:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:21:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:21:45 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:24:52 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:24:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:24:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:24:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:24:52 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:25:01 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:25:01 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:25:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:25:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:25:06 GMT
USER gradle
# Fri, 02 Oct 2026 02:25:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:25:07 GMT
USER root
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a1075a38490e2282699266e7b131661e3244d7eea12469eae8f64b872a7ba9`  
		Last Modified: Fri, 02 Oct 2026 01:22:44 GMT  
		Size: 20.4 MB (20385154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3653989b67ebdc26455d5508afe71fea7b611adf1ff71e2702584b2f4780041`  
		Last Modified: Fri, 02 Oct 2026 01:22:48 GMT  
		Size: 135.9 MB (135881272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5bd4d687dc463d0cfe5823b84ed2001f6caa3366ecbeb7b6085ad2be50278a`  
		Last Modified: Fri, 02 Oct 2026 01:22:41 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd03bcbe0e24b473e904ae87c9cf3d36a63fb636cbd6fc3a116949296d7d892`  
		Last Modified: Fri, 02 Oct 2026 01:22:42 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3858844b15e4e649bbe4257c05b46ebd1fa287db50a41206d0b85247aa540d12`  
		Last Modified: Fri, 02 Oct 2026 02:25:33 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5861350d51aab46a1a61a32575cc756b8757d12e2b3a13d6bb41aded19c5e699`  
		Last Modified: Fri, 02 Oct 2026 02:25:36 GMT  
		Size: 50.5 MB (50492791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9220bc499cbcbea616fbffe348ca11de573e428d46d02dbd9f7db86442bc6cf1`  
		Last Modified: Fri, 02 Oct 2026 02:25:38 GMT  
		Size: 138.1 MB (138068576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22e12255d41aa6b86193e7cdfcbe77e5c3c7af6f635561d93798cc04fdd0332`  
		Last Modified: Fri, 02 Oct 2026 02:25:33 GMT  
		Size: 35.0 KB (34997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:dc84071217397af34e2d3f05807a436f1814f0d9c1714e4838dedba946741108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7794945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4004f119e11a51c849d7b571e6ae978c7881d807bacc021fc734deb03cd93d76`

```dockerfile
```

-	Layers:
	-	`sha256:aa6cd42e838a4a4fb18b7951806f67eb9e00b3c7bd8ce602252789aa46e93c1e`  
		Last Modified: Fri, 02 Oct 2026 02:25:34 GMT  
		Size: 7.8 MB (7771939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21dd1e4273703551d753ddfcf6904f4b6ad4bdcf85d880701efb282221cbf2f4`  
		Last Modified: Fri, 02 Oct 2026 02:25:33 GMT  
		Size: 23.0 KB (23006 bytes)  
		MIME: application/vnd.in-toto+json
