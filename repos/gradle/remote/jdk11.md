## `gradle:jdk11`

```console
$ docker pull gradle@sha256:d2e614a94917485def484cd411b7d940edfb5bdc7570ab7a66adf0c49e197570
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

### `gradle:jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:17926878bef42c59f7e27663fb1bb0241742ffd4281cf9b5e4653e159af3a9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380674150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9df649cfd45867149d59a30db65c3f6c2af746938fcc3f99ffebdb56a48ec9`
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
# Fri, 02 Oct 2026 02:19:07 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:19:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:19:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:19:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:19:07 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:19:22 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:19:22 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:19:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:19:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:19:25 GMT
USER gradle
# Fri, 02 Oct 2026 02:19:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:19:25 GMT
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
	-	`sha256:07ac59de504eb15eac58e8a959b29ca48542bcf11955108e17b0c56f1c27b44a`  
		Last Modified: Fri, 02 Oct 2026 02:19:45 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849673a51bf8c7a723f0a724532a4f44f2aceff2aeab88e5061820f94b40cdda`  
		Last Modified: Fri, 02 Oct 2026 02:19:47 GMT  
		Size: 50.8 MB (50808785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a05d0c763d5731beb9a852447f0d969e2058dabc2363b93ddb1386870ae085`  
		Last Modified: Fri, 02 Oct 2026 02:19:49 GMT  
		Size: 138.1 MB (138068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3926af8942e8372e207ff016e4caed545ac248655974c0d51b8f43853327d303`  
		Last Modified: Fri, 02 Oct 2026 02:19:45 GMT  
		Size: 54.9 KB (54891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:ed2e8b2ec9392fc3c3c4dfdbfc0b24a16f912c11d63037ce6414153d2eae1f80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7734255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6353b0e65d946d3af7d190e8e9092a02d15fa4bb8c58458090e2cbdd2500f0ff`

```dockerfile
```

-	Layers:
	-	`sha256:c59cbf9586240563e7ba3db2c29fbb4ef8619f848bddad88df4f9a7f11632894`  
		Last Modified: Fri, 02 Oct 2026 02:19:45 GMT  
		Size: 7.7 MB (7709575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aab13c1447508b92ab25b7a0e95a249246f23eb5d823791b4c9b36e5482ce86b`  
		Last Modified: Fri, 02 Oct 2026 02:19:45 GMT  
		Size: 24.7 KB (24680 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; arm variant v7

```console
$ docker pull gradle@sha256:4c0f6d78d42a7bb0fa318cfad46de568185cbb3b64ccd6108b42c2f2bb4f672d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.5 MB (372464071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c009a9962a3e9755d6ba1e58ec1f65c8408a5a1c84bda2835878999fb04626ee`
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
# Fri, 02 Oct 2026 02:16:09 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:16:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:16:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:16:09 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:16:09 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:16:27 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:16:27 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:16:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:16:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:16:30 GMT
USER gradle
# Fri, 02 Oct 2026 02:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:16:31 GMT
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
	-	`sha256:5becba2aa327daecdb232c12c815e6d202cdbfadceda33667f8cb062ed4729f3`  
		Last Modified: Fri, 02 Oct 2026 02:16:50 GMT  
		Size: 4.3 KB (4297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b532b7813abeb85117a18f98166e51e3ffa6043f77106c33397d9c97f2a1f4c3`  
		Last Modified: Fri, 02 Oct 2026 02:16:52 GMT  
		Size: 53.3 MB (53285934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd3c2961764e0afb020d8dc397bb052b342230bfb4097d2994637840c9d1104`  
		Last Modified: Fri, 02 Oct 2026 02:16:54 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40f5b14055bf172b248e4793e5657a05b2f957e458122ba1d484233a6d012e5`  
		Last Modified: Fri, 02 Oct 2026 02:16:49 GMT  
		Size: 31.3 KB (31300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:9fd4bba26bef727a42f7efa910e64930f10dbda00d2324ad20b0c304cdb4f481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7734528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296d1621378b0562c31aab5b99646642916a61665d3b05f7f790b3ad2c212dee`

```dockerfile
```

-	Layers:
	-	`sha256:4372fb754ac11e5517fea48d46c69ea4d5bd917790cf25f7dd504f26d6fc76ed`  
		Last Modified: Fri, 02 Oct 2026 02:16:50 GMT  
		Size: 7.7 MB (7709697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fd923991f78468c85b87688ffd1baffc7113ee6b2d0b6c18d3cdcda43cfcf15`  
		Last Modified: Fri, 02 Oct 2026 02:16:49 GMT  
		Size: 24.8 KB (24831 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:552c74988d3b3842734ae4977f2dc558253a131134af17b81c8f2fe93851c8a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.8 MB (374845977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d945c2554927739702ad002a62a64a3bd0e5be83af940f151547f4260adcfb88`
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
# Fri, 02 Oct 2026 02:19:09 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:19:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:19:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 02:19:09 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:19:09 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:19:28 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:19:28 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:19:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:19:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:19:30 GMT
USER gradle
# Fri, 02 Oct 2026 02:19:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:19:31 GMT
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
	-	`sha256:bcadea15b5b5719f0462fda893c9c141be8c3bdb6c3e00c457e57b8efa69f0d7`  
		Last Modified: Fri, 02 Oct 2026 02:19:49 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756dfa43397814ecc400148ddd90e01d59b6f899f5764210d6e39e66c10eaff5`  
		Last Modified: Fri, 02 Oct 2026 02:19:52 GMT  
		Size: 50.4 MB (50393224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c2cebfd81a402aa1b1b3df43c8734a69b29ab5db10f02e458b926bfbfa5667`  
		Last Modified: Fri, 02 Oct 2026 02:19:53 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b8385a32e006d4273c6d278e37e18989aecfb2744d8c076f126828321e5332`  
		Last Modified: Fri, 02 Oct 2026 02:19:50 GMT  
		Size: 59.5 KB (59534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:06efa09d679ec257217231714c0d8b5afa38b18c9bddd0bc3dea816d54fc38da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7740943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce38ae767bfdf7616590676e3fb7bda501cc4ef0635a40b1748cf6fb722c561`

```dockerfile
```

-	Layers:
	-	`sha256:89c35b5179e2125312e37a7b70a433bb98b9e79a539ab9cd901102497552220f`  
		Last Modified: Fri, 02 Oct 2026 02:19:50 GMT  
		Size: 7.7 MB (7716066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b439b770f231ded87c9831fe841f241d713593af90dba97cacbe2a23967c0bc7`  
		Last Modified: Fri, 02 Oct 2026 02:19:49 GMT  
		Size: 24.9 KB (24877 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:56fd6f04dc2f762e5170c13f9a427f7e53bcd73040c918f876fb0d8ef532d0c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.3 MB (378295070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05449b3e9dc918ecddf62810998f12e05683fe2ec2360625bc802d28367dd9aa`
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
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:34:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:34:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:34:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 03:38:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='95cd974d9155650255cb8747a44df8170b00f932ac7f63fec0598bf2ea5706e0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:38:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:38:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:38:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:38:25 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 06:20:57 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 06:20:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 06:20:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 06:20:57 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 06:20:58 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 06:21:47 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 06:21:47 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 06:21:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 06:21:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 06:21:52 GMT
USER gradle
# Fri, 02 Oct 2026 06:21:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 06:21:54 GMT
USER root
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0293deb3c1983b9215d56b486798d88bc4f16eb2bd51413c759d76cb73436437`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 17.6 MB (17594211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62aadd4d6a140b742e3527790de1f26a211bb17c955036fb0ec56404c11c413`  
		Last Modified: Fri, 02 Oct 2026 03:39:10 GMT  
		Size: 133.1 MB (133105240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091f9b62f7010c8623fc52fa911a2a4cd57c86551b8a7127302d232ecca155e0`  
		Last Modified: Fri, 02 Oct 2026 03:39:07 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e3fc3b0ccbfef5db66ff16a1571b0c4418393286afdb0c7421409791b9c527`  
		Last Modified: Fri, 02 Oct 2026 03:39:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d15254acb0893b8e9e10288777466e26310fe367871bece757809962314255`  
		Last Modified: Fri, 02 Oct 2026 06:22:42 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb7f7b46bd721f3221882d4949e6409d2df561c7a70a89cca4b846db00467e4`  
		Last Modified: Fri, 02 Oct 2026 06:22:45 GMT  
		Size: 54.8 MB (54781900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0b53dcda703fa6d4c948cb05caf38d3704d7ba9262942d74761e2162731377`  
		Last Modified: Fri, 02 Oct 2026 06:22:47 GMT  
		Size: 138.1 MB (138068538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fdad19bfd6a30d0ab7f2bc106918de1fbbfbae81d4705ed97473ab63cca93b`  
		Last Modified: Fri, 02 Oct 2026 06:22:42 GMT  
		Size: 35.0 KB (35008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:76e05ee9163e58ea11a8cb9f8022c493ae17f14df5a4d72d63d88a72bf51462a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7739198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252bfe6a9d86a52bb1a07345c83c486104349c1dc6b8e283aa0107b12a94d6a5`

```dockerfile
```

-	Layers:
	-	`sha256:b3accacdea27457611f8c25173bac0204e9ea12e7d6671fdfeb786c0d316598b`  
		Last Modified: Fri, 02 Oct 2026 06:22:43 GMT  
		Size: 7.7 MB (7714444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bc645a4cdb70530f4c60df8980b6353f1be966d692a25cf67310971f05ef0c`  
		Last Modified: Fri, 02 Oct 2026 06:22:42 GMT  
		Size: 24.8 KB (24754 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:0218224482ed9468a93923209512de678ab91d480568ce6453d88da4e3990d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.6 MB (359583068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cede0cae8b2af6036617639c4fdb7b4f5f7bd0728db39e750c0f01df885f70`
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
# Fri, 02 Oct 2026 02:25:01 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:25:01 GMT
ENV GRADLE_VERSION=8.14.5
# Fri, 02 Oct 2026 02:25:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Fri, 02 Oct 2026 02:25:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:25:05 GMT
USER gradle
# Fri, 02 Oct 2026 02:25:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:25:05 GMT
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
	-	`sha256:38fd55ee46ae52dcb3eeb5e58ed8ecaa90c1bc41ba8ea4a475cf863b80e2cfc3`  
		Last Modified: Fri, 02 Oct 2026 02:25:34 GMT  
		Size: 50.5 MB (50490556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1537233f889b563ac3d233fb5b828fce1f4dd9a4055b7187e6793c7f93d8bab`  
		Last Modified: Fri, 02 Oct 2026 02:25:36 GMT  
		Size: 138.1 MB (138068573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a10a0e6baa4c9bfa45f33581a6d5c3ed3df52dc194d1113b52d58f769c12d94`  
		Last Modified: Fri, 02 Oct 2026 02:25:33 GMT  
		Size: 35.0 KB (35000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11` - unknown; unknown

```console
$ docker pull gradle@sha256:0398b9b021500fef48fa724662e0d14c88b15aac77f859ae0cc8eefe55cc88f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7730135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0783b6620fd5a0d9b816ed1b348eaa2d7ea28b4916b93806b4d4e21c1fbc3e`

```dockerfile
```

-	Layers:
	-	`sha256:03d0bfd2b5adadf44e18b06b06049cc5f077f52106f772565a8523eeacc0fb8b`  
		Last Modified: Fri, 02 Oct 2026 02:25:32 GMT  
		Size: 7.7 MB (7705455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d061b2172b0e607c745162f28ae202a5e2ff17dab861ed8e97917fe238fb2da`  
		Last Modified: Fri, 02 Oct 2026 02:25:32 GMT  
		Size: 24.7 KB (24680 bytes)  
		MIME: application/vnd.in-toto+json
