## `gradle:6-jdk11-jammy`

```console
$ docker pull gradle@sha256:60d1b5b8199cfce4c97c4239fa0ae81acb4956cd028d13eed7e4a023a98fac0d
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

### `gradle:6-jdk11-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:3569454f5367150d2f7e5b5e5386a725e9a04ffddbdeeb7355d8bd9cf32e9a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 MB (350678660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d482d0d6b0cd0f8569134731d32d182d502814ed6391c53dfbf8d0ad432f2276`
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
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:17:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:17:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:17:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:17:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:54 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:19:51 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:19:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:19:51 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:19:51 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:19:51 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:20:07 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:20:07 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 02 Oct 2026 02:20:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 02 Oct 2026 02:20:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:20:10 GMT
USER gradle
# Fri, 02 Oct 2026 02:20:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 02:20:10 GMT
USER root
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04554394ac477b50174eaac591344e0ebed72cda3dee2a3754179f5386f434a9`  
		Last Modified: Fri, 02 Oct 2026 01:17:40 GMT  
		Size: 16.1 MB (16114143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880e7287822fb06bc1bf5139d5ba086b36a1a80e2fb9be300225228844c1c0ae`  
		Last Modified: Fri, 02 Oct 2026 01:18:13 GMT  
		Size: 145.9 MB (145869202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef277a2230cda4dbe018ffacb656033ff50caca8f1d650ba59acf4f4c6852209`  
		Last Modified: Fri, 02 Oct 2026 01:18:09 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd6b1b820f5473ff7c5b1f91c6c6d3dfa8a88b02344afb1ee9476b3c107fdac`  
		Last Modified: Fri, 02 Oct 2026 01:18:09 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346f6e5276ea890227825b7dcd6f66203d452302a898a2550eae8a61deaec257`  
		Last Modified: Fri, 02 Oct 2026 02:20:29 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5751d318df4bbb31c040103b2b8b98e90da7eb71a64a5d4c9047320a92740209`  
		Last Modified: Fri, 02 Oct 2026 02:20:31 GMT  
		Size: 50.8 MB (50808785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6203be355e8d4307630e3f4ee1f688caba059066536897ed32b4c0fd1caa4f3`  
		Last Modified: Fri, 02 Oct 2026 02:20:32 GMT  
		Size: 107.7 MB (107696667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904381bc32d90b5246cb238861cefc219214f7115790276240e38f90cfe5674f`  
		Last Modified: Fri, 02 Oct 2026 02:20:29 GMT  
		Size: 431.3 KB (431273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:7346a5f3694a7d27336b83972e2fa51c4df977e1d65e4c5ffbc6ebcc665cefd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7632776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952cab63926289f6673e3d4c765e65a825e7c30aede47409871ad2f5ae445d0f`

```dockerfile
```

-	Layers:
	-	`sha256:7be33d76497da181d1318f0edde6f011b6cabd492a1252539221553a6a352137`  
		Last Modified: Fri, 02 Oct 2026 02:20:29 GMT  
		Size: 7.6 MB (7605352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6e5819852a434b9fb01e33e0a05c565595fb81a30fa760bd99809399f9842a4`  
		Last Modified: Fri, 02 Oct 2026 02:20:28 GMT  
		Size: 27.4 KB (27424 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-jammy` - linux; arm variant v7

```console
$ docker pull gradle@sha256:e8fa7b60479cd7efbe5f63605e7ffd12e4a64b11619e8babbec75727a7ff3e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.1 MB (342091975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf11b2615115ad330696d74c260c24a11c55837c9aff38f5c26f83e1e49a855`
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
# Fri, 02 Oct 2026 01:12:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:12:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:12:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:12:09 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:12:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:12:20 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:16:33 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:16:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:16:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:16:33 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:16:33 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:16:50 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:16:50 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 02 Oct 2026 02:16:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 02 Oct 2026 02:16:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:16:52 GMT
USER gradle
# Fri, 02 Oct 2026 02:16:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 02:16:53 GMT
USER root
```

-	Layers:
	-	`sha256:63273367a03196c0df650ce441c9e9c9f2a05ed2241c911b17566eca78d2477d`  
		Last Modified: Thu, 24 Sep 2026 23:36:18 GMT  
		Size: 26.9 MB (26855856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce04fc1ec2140183f2c3cc1a9a40e34f552f2f1312dcebc74056da60f2a24571`  
		Last Modified: Fri, 02 Oct 2026 01:12:36 GMT  
		Size: 15.9 MB (15851642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5ad32cd1fc2aecf9c935a1eb0fc04b60385b8dc3d7a45193494acd4beded05`  
		Last Modified: Fri, 02 Oct 2026 01:12:38 GMT  
		Size: 138.4 MB (138363852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8216ac4e448368b4b81834a716e4ff5b73ce414e46a2f69c487b6207831256f2`  
		Last Modified: Fri, 02 Oct 2026 01:12:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1e8bfa2f0c7785d7d997967da8decad095323c8664630a7eba509df276395`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5061613f5ff6be9cafb1199f0bda3d221855e85203bb6abbcd96dbbfeaa716d`  
		Last Modified: Fri, 02 Oct 2026 02:17:10 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8baff1ed3b96a0d40fd9a5d98b4ec9f11f024fd3962032ef0350ff3d0a47b579`  
		Last Modified: Fri, 02 Oct 2026 02:17:12 GMT  
		Size: 53.3 MB (53285732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003a3273e865c61eea301bd9d2f3727175cc2e28635192c8e2f1a56f1cdf3888`  
		Last Modified: Fri, 02 Oct 2026 02:17:14 GMT  
		Size: 107.7 MB (107696666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4e41d5ff92ee8f65bf0413305ca19a57ecfbfc451f3b1a737ddd7c2d146141`  
		Last Modified: Fri, 02 Oct 2026 02:17:10 GMT  
		Size: 31.3 KB (31275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:5156fa1f9e0258c0506c1fa15a17ec454ba135fab13efe4d298b26332803570c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7633208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec264569e620b279f45e779fe35da1358e725b2bfefe1bbf148f05da55935c4`

```dockerfile
```

-	Layers:
	-	`sha256:4eff2d9dadaac280bb71247d1fa5cb3155bc239fa25ebc2ff744dc1b3e5d4ed5`  
		Last Modified: Fri, 02 Oct 2026 02:17:10 GMT  
		Size: 7.6 MB (7605554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a33bd6f7964ffa838a40d25908046b4945434a6063b03c880ee03fbed3cc0fee`  
		Last Modified: Fri, 02 Oct 2026 02:17:10 GMT  
		Size: 27.7 KB (27654 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:719747033ad893a40c0f752c8baead6166ebde99c09fd6d871d3072486b6a76e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.8 MB (344839384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8513c092446bd913192d3f1d2b647f3b719665426d3a4a6020c0ab2447368aa`
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
# Fri, 02 Oct 2026 01:17:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:52 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:17:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:00 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:19:50 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:19:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:19:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:19:50 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:19:50 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:20:08 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:20:08 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 02 Oct 2026 02:20:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 02 Oct 2026 02:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:20:11 GMT
USER gradle
# Fri, 02 Oct 2026 02:20:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 02:20:12 GMT
USER root
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcb4edd1354b405190d9d9005d29cef299e5c32de6803fd3956a8691f39ec7a`  
		Last Modified: Fri, 02 Oct 2026 01:18:17 GMT  
		Size: 16.0 MB (16048167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4f1bba1f1f20adba05b768f63add31c706ecba8f5eb92fb1fdac1677650697`  
		Last Modified: Fri, 02 Oct 2026 01:18:20 GMT  
		Size: 142.6 MB (142585421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60450663364719788118b1302cffc1aea2f6ef3c0fa2448a2df098063adc6b24`  
		Last Modified: Fri, 02 Oct 2026 01:18:17 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622e671b838b3e8aea03560d84dcca7d0a030050466cd4c189668aa8a0df8dfe`  
		Last Modified: Fri, 02 Oct 2026 01:18:17 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412652d14a3b99409535a3313c030e749b52685072bd07e1226a42dacbee4758`  
		Last Modified: Fri, 02 Oct 2026 02:20:30 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f29b391dbcd068557b80b4776f757b5962fe9cea74f9e2231b582b049e61bd3`  
		Last Modified: Fri, 02 Oct 2026 02:20:33 GMT  
		Size: 50.4 MB (50393009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fa090f0e48047bcd7a6ca70403b58deed532d6a6721a1514f1a4873d75551b`  
		Last Modified: Fri, 02 Oct 2026 02:20:34 GMT  
		Size: 107.7 MB (107696661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44026f459cd68dfce62cd1d5aba64d6589f3cd78dc4cabf195c2ad0cb7859d29`  
		Last Modified: Fri, 02 Oct 2026 02:20:30 GMT  
		Size: 425.0 KB (425029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:bbe43691dd583a27665e3224ced298480ca4f8e00ed63a5c531f24e168f9a293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7639704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2bf66d35be8252781435ef9d2c9732569961f8260dcf973f511cf3bb216d9d7`

```dockerfile
```

-	Layers:
	-	`sha256:da3caf19e78378e89d1a5d5016a87c8476856593048a3b6c58416d55ddf627b6`  
		Last Modified: Fri, 02 Oct 2026 02:20:31 GMT  
		Size: 7.6 MB (7611963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7479c543f973ccb4ea860f6f497204c2ab7e944ad4a62f2e88abd81573e02c18`  
		Last Modified: Fri, 02 Oct 2026 02:20:30 GMT  
		Size: 27.7 KB (27741 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-jammy` - linux; ppc64le

```console
$ docker pull gradle@sha256:98bd723daa80f3d7bc0985530ce184cf92e2ce7662c3cd2a330065f8bec5d28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350369071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e810cb7eeb4f5ca40704431f10c0382841ba4f00e8f6c68a10fabc366451ee17`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:40:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:40:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:40:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:40:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:40:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:40:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:40:56 GMT
CMD ["jshell"]
# Sat, 26 Sep 2026 02:27:32 GMT
CMD ["gradle"]
# Sat, 26 Sep 2026 02:27:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 26 Sep 2026 02:27:32 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 26 Sep 2026 02:27:32 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 26 Sep 2026 02:27:33 GMT
WORKDIR /home/gradle
# Sat, 26 Sep 2026 02:34:08 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 26 Sep 2026 02:34:08 GMT
ENV GRADLE_VERSION=6.9.4
# Sat, 26 Sep 2026 02:34:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Sat, 26 Sep 2026 02:37:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 26 Sep 2026 02:37:15 GMT
USER gradle
# Sat, 26 Sep 2026 02:37:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 26 Sep 2026 02:37:18 GMT
USER root
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06953810da290342e65fe66b92b4b60b2418772162a6703338733f254fafcb3`  
		Last Modified: Wed, 09 Sep 2026 01:42:21 GMT  
		Size: 17.6 MB (17582288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d02eaf49e31aa5211f558fb729196a49b79ae7a019caace7760ee50b2c52cc`  
		Last Modified: Fri, 25 Sep 2026 22:41:45 GMT  
		Size: 133.1 MB (133105237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2dc6159294e1acb99dd3fca2d41d002b2c20f1282b58e7e48ddf90c67d6c865`  
		Last Modified: Fri, 25 Sep 2026 22:41:42 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374003072d8f14fddfc371ab3f7e0c972411f00fbc7a38102519b248b7b8dec4`  
		Last Modified: Fri, 25 Sep 2026 22:41:42 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985d1ff7733472bbacd98f3f000b4dc1e6a88b60c2a412216a17c7719b0806f4`  
		Last Modified: Sat, 26 Sep 2026 02:29:10 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0cf9663d68236394d25610053686520b8a94672b82e9a185e12f62bb74a98f`  
		Last Modified: Sat, 26 Sep 2026 02:34:58 GMT  
		Size: 57.2 MB (57240258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70167f80f09ee9dee55915520751c236c206b29e501277bd288dc3709b05c756`  
		Last Modified: Sat, 26 Sep 2026 02:37:59 GMT  
		Size: 107.7 MB (107696650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3154d70967d343ce71ad191198e09651766ea48af752316d5d4f3eb39d3bb2d`  
		Last Modified: Sat, 26 Sep 2026 02:37:56 GMT  
		Size: 35.0 KB (34989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:e2f33f8919bd1e68135cb6ef75bcfa8007b6ae22c8763d96c3d704d1b9302a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7639341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a0a77308bbc857cf1b1fe8eac06baf348c1ad243cd03b1d9209513cddd73b5`

```dockerfile
```

-	Layers:
	-	`sha256:16c66ae4d5e984bc24fa4b74a9c177c615ca6586958f5e461b2440814980c288`  
		Last Modified: Sat, 26 Sep 2026 02:37:57 GMT  
		Size: 7.6 MB (7611784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a09f9859624e2c207aa0c0859021e2f80668ea0542848518267095f92c74d73`  
		Last Modified: Sat, 26 Sep 2026 02:37:56 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-jammy` - linux; s390x

```console
$ docker pull gradle@sha256:dfac79780a1580754fbe0f1ef9590ca8a105f7031bea7ce5ba9f3099617c49dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329210586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e92d27db4407047e2f880e9f7c5bb4725411261ba2ec975fa6fbb44295111f5`
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
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 01:17:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:17:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:25 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:24:52 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:24:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:24:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:24:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:24:52 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:26:06 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:26:06 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 02 Oct 2026 02:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 02 Oct 2026 02:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:26:09 GMT
USER gradle
# Fri, 02 Oct 2026 02:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 02:26:09 GMT
USER root
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b425b310d4cc599e020eb9bd22817101c9306572f90f7d708f54a01bed2aac85`  
		Last Modified: Fri, 02 Oct 2026 01:18:38 GMT  
		Size: 16.1 MB (16114331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076adffdf129eb3ac480143e05c47b540a222fc397b35dc08b9f4c69fee0979b`  
		Last Modified: Fri, 02 Oct 2026 01:18:42 GMT  
		Size: 126.6 MB (126645572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ff068f167d410844f2c918df07b0dda5ca1b622c6cc935d5517c32b0016a92`  
		Last Modified: Fri, 02 Oct 2026 01:18:35 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64161acc6cf1919a90ab73250041a5818d618434270dd3b3ef7bf5403b53c78`  
		Last Modified: Fri, 02 Oct 2026 01:18:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb38649e8961a4f33ec6551a893e8e8fc2c9cac47b46642cc6c0cfe96579202`  
		Last Modified: Fri, 02 Oct 2026 02:25:32 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348fe668f3388ccea073c7fdea94d2846d91ce5341033483f96d655022138ca3`  
		Last Modified: Fri, 02 Oct 2026 02:26:35 GMT  
		Size: 50.5 MB (50490006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cfc7deb4722eb36b3ef45bc131cad8680df83eaf3edcbdd7d20c9b7ee5659a`  
		Last Modified: Fri, 02 Oct 2026 02:26:36 GMT  
		Size: 107.7 MB (107696665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb48f6f8077401374db544bd34f9de25a133cf8f2231b69b24ae781a2e3ed2f`  
		Last Modified: Fri, 02 Oct 2026 02:26:34 GMT  
		Size: 35.0 KB (34976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:f7b1b44cadc0164c8e01f25912e380bf8c8c17b781832f9aa4d802ff9af7e678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7628654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62dbf0fb0e8de8f2cf404a734f3f216a60ea5ab86a7bb3f445611e576741d6a7`

```dockerfile
```

-	Layers:
	-	`sha256:a069b37ba5cdac234cfe5e39ce4f582be9c125d0599775a9cc67d08085cfc48c`  
		Last Modified: Fri, 02 Oct 2026 02:26:34 GMT  
		Size: 7.6 MB (7601232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb1d81444e847bc1e5371ea21be84a632c1b4622141a573ad3a3408e41274820`  
		Last Modified: Fri, 02 Oct 2026 02:26:34 GMT  
		Size: 27.4 KB (27422 bytes)  
		MIME: application/vnd.in-toto+json
