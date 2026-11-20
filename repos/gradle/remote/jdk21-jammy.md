## `gradle:jdk21-jammy`

```console
$ docker pull gradle@sha256:67eb0b28cfecec359771d1e84331ccbbbbe16954525b2a86aad2e017ec3c6d27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:jdk21-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:9d78cd43de8932a4bda2f60726f779139da373d680afc8acd32e132d1e6397a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.8 MB (394825156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0668aa10e91690a0342be76c832c072b4ef19569a362a4d45d81ec8fcd1b3331`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:47 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:16:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:57 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:15:41 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:15:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:15:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:15:41 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:15:41 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:15:54 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:15:54 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:15:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:15:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:15:59 GMT
USER gradle
# Fri, 20 Nov 2026 04:16:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:16:00 GMT
USER root
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591c8f167e0cffab004fc01e7e2374b4ef115b32bff173d84244965639b9b34b`  
		Last Modified: Fri, 20 Nov 2026 03:17:15 GMT  
		Size: 20.7 MB (20664462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055784d6f2d9370bf15dcf9940a63f1a04ddd3fc835524af0584a7b6080f2d06`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 158.4 MB (158419765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f469838c8d13e617a33a8f28d146ec41d91cf91fc5191b365dfc41d30b4887`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dccd3043e157627f1826de89b2bd620473f95a1d28cb1ec7ea746bee6c5032bd`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5baea686a9bec2bb57b70b9fd66c189d25767112fb3022d718d326e6347c395c`  
		Last Modified: Fri, 20 Nov 2026 04:16:19 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ddb0838690178239bb9b6ccbafa68aa5e46ea0396b0f061dca4372423bde85`  
		Last Modified: Fri, 20 Nov 2026 04:16:22 GMT  
		Size: 50.8 MB (50817637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664d096115331560b6854397dc72c5c28d7dc4f4cdf698b33618c37250ef52d0`  
		Last Modified: Fri, 20 Nov 2026 04:16:23 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25df3a41156f7bbb1cb6e6011c015e1abb6c0359af06ed73a47f34af2cffc04d`  
		Last Modified: Fri, 20 Nov 2026 04:16:20 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:7ba1d60fd621dec4aee2a9cd25a37cd170b3e75f540073c031a24b0159642bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7911080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c8ec73c421ec922e0c0057de0a5085a0ae5ea7d969a109e0f3170987f9e2e3`

```dockerfile
```

-	Layers:
	-	`sha256:1e631e330dce42ff768833f65066fdb2e2857432293122d7f0617c28bde14443`  
		Last Modified: Fri, 20 Nov 2026 04:16:20 GMT  
		Size: 7.9 MB (7885178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b22266a81d2a275d01b14f8a1747091e89c25a161d331a48a8d9f456055c0ac6`  
		Last Modified: Fri, 20 Nov 2026 04:16:19 GMT  
		Size: 25.9 KB (25902 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d45901aa5bc2872037efe17517527e5c28b79a4bf3adc8c0b2185037c08d3aad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.0 MB (392037581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e447d0a42bbed1c226c03b29effb743c58d7aec696b9f9e65047e6199c63d58`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:38 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:15:43 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:15:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:15:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:15:43 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:15:43 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:16:00 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:16:00 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:16:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:16:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:16:03 GMT
USER gradle
# Fri, 20 Nov 2026 04:16:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:16:04 GMT
USER root
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d5f41944e7c26ff86012725668b1f33bc6142ca773cc733a66b30ec5bbefa9`  
		Last Modified: Fri, 20 Nov 2026 03:17:57 GMT  
		Size: 22.1 MB (22080656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd48ffa453c5f5a82cdcc188709a96da68fa3cdcefe6a519550da643c91067ac`  
		Last Modified: Fri, 20 Nov 2026 03:17:59 GMT  
		Size: 156.7 MB (156699398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8af90ac559d9065b4f7dfb9fc6940d08c7e8f8b63820f49cf1a27b2dd47f3`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff75ba61adaf2a47149bae71a6f622c7f47b647be8843faa1d291bc16736f3d`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b188b6b6249be2ca478b0995a18d6d2b13c3deb3b90ed777685c18630a727144`  
		Last Modified: Fri, 20 Nov 2026 04:16:23 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d960cce741bacc63a21489feabdee5d300e8897284245b7f3eec867f3a74f4e`  
		Last Modified: Fri, 20 Nov 2026 04:16:25 GMT  
		Size: 50.4 MB (50398924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88855afb65e263ea853d6ea33ebd23a99111b4069ec40b05af44765f0a8e8492`  
		Last Modified: Fri, 20 Nov 2026 04:16:27 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67a408d8d78e268948e544e340a2627464c44e4e34f598899546de318ff2d19`  
		Last Modified: Fri, 20 Nov 2026 04:16:23 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:90dd7a9569333ec15ded9384c0f15bed3d7f06c5f0a3c08ee4a296ba82f72489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8013048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b1972395ceb8cb32e4a48f253c09305ea2c81e64076f363dd0b7a3910ef84f`

```dockerfile
```

-	Layers:
	-	`sha256:95f55a25675d4a87a05c82038af01173145f08118db670048be93202f7dcf4d0`  
		Last Modified: Fri, 20 Nov 2026 04:16:23 GMT  
		Size: 8.0 MB (7986901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6cbe1ee8cd14ae12d31287208c8340eeeddd54d03d747f7754b8705b18396d3`  
		Last Modified: Fri, 20 Nov 2026 04:16:23 GMT  
		Size: 26.1 KB (26147 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-jammy` - linux; ppc64le

```console
$ docker pull gradle@sha256:cbb01a93c7bb8dbe456d1116d813cad5be5fea79da0567ea020b7e87a239fe6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.8 MB (404770191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112ed06fad94562cbd8f5d91a248c5f6da07bd93fa2107f7a78fb176effde92e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:32:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 04:32:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:32:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:32:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:32:02 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 04:33:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 04:33:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 04:33:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 04:33:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:33:13 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:00:07 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 06:00:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 06:00:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 06:00:07 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 06:00:07 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 06:00:49 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 06:00:49 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 06:00:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 06:00:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 06:00:54 GMT
USER gradle
# Fri, 20 Nov 2026 06:00:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 06:00:56 GMT
USER root
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4630d345451cde4ce300f9766946a88c3dad94936415366fb49a1cbdc49ead98`  
		Last Modified: Fri, 20 Nov 2026 04:33:02 GMT  
		Size: 22.6 MB (22552057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f1742107aefc48ab1ab9bfff6c9583d1ab533cebc4312499a43af2be92b4c8`  
		Last Modified: Fri, 20 Nov 2026 04:33:51 GMT  
		Size: 157.6 MB (157582136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300425933123e3755996386a04401be1acc7eaccbdadd0828037b64e267f0ad9`  
		Last Modified: Fri, 20 Nov 2026 04:33:47 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d0db0cb2447e2aa8011b81dec4ac8fead65ec75f779d35f8ab81eff5b4ecf53`  
		Last Modified: Fri, 20 Nov 2026 04:33:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2e14706cc847f9879a2ca9b5e2a15ba920db87badc0260a34fc93806621733`  
		Last Modified: Fri, 20 Nov 2026 06:01:41 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063aef2a29cc4679a1ff7d1c91cf67fdd46f055a9a9377479826ce7339032155`  
		Last Modified: Fri, 20 Nov 2026 06:01:44 GMT  
		Size: 54.8 MB (54786097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3e52b5213925b7f78ba050fd1176c55ef91bca9def942123cf09fc6c3a7311`  
		Last Modified: Fri, 20 Nov 2026 06:01:45 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7eced8c6b1dfecd68d1d67ce3a29e82b0b12fc4aaab6d05e8ff64f0b3b30af8`  
		Last Modified: Fri, 20 Nov 2026 06:01:41 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:1330acfd0d2c64a21c0e106297f7651cefdc259d58bf94ad81ca547b89567e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7940828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b196943b7ddcc2f1157854fe1b1aa66c5d7a459ef737bb0a63207cbae56a930e`

```dockerfile
```

-	Layers:
	-	`sha256:5c975403219fd5e77066f38ecd170de2863f09466e72ed58de637babf6514fc7`  
		Last Modified: Fri, 20 Nov 2026 06:01:41 GMT  
		Size: 7.9 MB (7914830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8cb01102e7d9417de30e2659bcae97f5b8a66a4446b77c6f804a3b40966359d`  
		Last Modified: Fri, 20 Nov 2026 06:01:41 GMT  
		Size: 26.0 KB (25998 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-jammy` - linux; s390x

```console
$ docker pull gradle@sha256:0e6bb41bfc70c5b0b295662b8c2433a40c91368299966e2d557e6feb81a6f658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.1 MB (381140147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b9e7e7e3194f675eb91a55e2583afc32559bd87ddcbeb02c2a3abd1e8780b8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:14 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:11:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:11:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:11:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:11:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:11:16 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:13:59 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:13:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:13:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:13:59 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:13:59 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:14:34 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:14:34 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:14:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:14:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:14:40 GMT
USER gradle
# Fri, 20 Nov 2026 04:14:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:14:48 GMT
USER root
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19d14f67acffa9cec8ab2408d12ea870b6c6c40ee9b41fb85d8b52778921cb1`  
		Last Modified: Fri, 20 Nov 2026 03:10:48 GMT  
		Size: 20.4 MB (20386452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22148eee1d50969a286d3a36c753497818f430d808c61872db2e401258bab631`  
		Last Modified: Fri, 20 Nov 2026 03:11:42 GMT  
		Size: 146.9 MB (146891096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d331a65b63e996a0d0302c4beef9e8881616d402cc24dcd9bc5787f61acc3502`  
		Last Modified: Fri, 20 Nov 2026 03:11:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42def67ddde806467952a6d1746847ee71ade5fb3c52ef065fbdef344341808`  
		Last Modified: Fri, 20 Nov 2026 03:11:40 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8c418bb1d54d4489cb0ba39788a0a23121d95111c6d7ed120d4faad6941309`  
		Last Modified: Fri, 20 Nov 2026 04:16:40 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3485e7f2c74ee85c3d18ccdcf3082465483185782329b01ec9eb018c9366982b`  
		Last Modified: Fri, 20 Nov 2026 04:16:44 GMT  
		Size: 50.5 MB (50495339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b664d3b4090ac5553ee78f3fd94c1f475e24fa4c230345c4081585e0cf053c`  
		Last Modified: Fri, 20 Nov 2026 04:16:46 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb31e0fca96b759675bc289f9530ab0698606b8fefe2368502f83681c17c2fa`  
		Last Modified: Fri, 20 Nov 2026 04:16:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:d4b8819b9db08babed551ce0751d8faae757f257d4929ad7f48ed4e8ddeac958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7833512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d1571b7699d6df55ead50441474de89bad3107d4ee99c35e6d84d764f5182b`

```dockerfile
```

-	Layers:
	-	`sha256:5762d902220a581d85facb8fd4b7a7c228d3177f68e55c3c54ddbb78906a41fe`  
		Last Modified: Fri, 20 Nov 2026 04:16:42 GMT  
		Size: 7.8 MB (7807612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:149ab0ea2aaa6fc89fdafbdf7416c8947711fbd5e5b5fbe677075c69b8e411d4`  
		Last Modified: Fri, 20 Nov 2026 04:16:40 GMT  
		Size: 25.9 KB (25900 bytes)  
		MIME: application/vnd.in-toto+json
