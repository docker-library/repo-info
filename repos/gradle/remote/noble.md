## `gradle:noble`

```console
$ docker pull gradle@sha256:4c90db93870b5d68aa164ada3e153e4584d4ac1e47afdb5cecfc4459645a6147
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:noble` - linux; amd64

```console
$ docker pull gradle@sha256:cf3f292dc77e270f7078d23389b4260e913edc76afb46418391abca022c9a065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347912684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cfb5282856767ced3e7d6401db6bd0c308fdcebd413ec30b43574e86578e1c3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:59 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 20 Nov 2026 03:17:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:16 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:15:35 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:15:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:15:35 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:15:35 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:15:36 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:15:50 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:15:50 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:15:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:15:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:15:57 GMT
USER gradle
# Fri, 20 Nov 2026 04:15:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:15:58 GMT
USER root
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78b9fee961bf51eeee78dec1184c9e2d2cb1b8d26a1dfe141bb548eb254e0a9`  
		Last Modified: Fri, 20 Nov 2026 03:17:33 GMT  
		Size: 23.5 MB (23543506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168b7d0b0cb6422f75b035011171fca043982bfa8d42b7dae1c5a947854f849c`  
		Last Modified: Fri, 20 Nov 2026 03:17:35 GMT  
		Size: 92.7 MB (92732183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa15c5b111790b02ebff7bc152bb6bb2310a9175f88efae74d89935237f87843`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a303be3a56c4ed80a6b996a591c88b4e09a40c0fb034448a3cc132151b59df5c`  
		Last Modified: Fri, 20 Nov 2026 04:16:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54bc5557fdd3d3e6366ed1bc35172c50ce116ccdf976dea3e1bae65c441833c`  
		Last Modified: Fri, 20 Nov 2026 04:16:20 GMT  
		Size: 67.0 MB (66993379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2bd86ce3e407bf16790e11828a8a9a5570643ac3948f4ad93b267cbe53de3c`  
		Last Modified: Fri, 20 Nov 2026 04:16:21 GMT  
		Size: 134.8 MB (134820891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04befde879d498979b9374273869358ddf4dc78a510bb621de0e7041eb8d969`  
		Last Modified: Fri, 20 Nov 2026 04:16:17 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:noble` - unknown; unknown

```console
$ docker pull gradle@sha256:7e06b954e6fdedacd80341835a4fdcf311032ef2ba58b920ab2963cbd9126234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7310267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4301c426bdc26535dfcdf484760ada4d883ed6b05ef3be8799dae3e85bc5ca3f`

```dockerfile
```

-	Layers:
	-	`sha256:0b2f015d08bfaa87474fbdc14b15af26d58280f75da3d7b8fff9a7252868ff86`  
		Last Modified: Fri, 20 Nov 2026 04:16:18 GMT  
		Size: 7.3 MB (7284146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d5f763db4be53c15af459d794731be251f1c66e3460f87ab4b41ce8f18db776`  
		Last Modified: Fri, 20 Nov 2026 04:16:17 GMT  
		Size: 26.1 KB (26121 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:679529885051e8712794b58921aace4ac149fb3afc78190ca749fb7a118e5ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.4 MB (346442550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c6800f2fb4ac51afbdd88d8d5d2689551713f4c4db8c6131918dc1568fd093`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:36 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 20 Nov 2026 03:17:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:56 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:15:33 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:15:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:15:33 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:15:33 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:15:33 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:16:05 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:16:05 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:16:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:16:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:16:19 GMT
USER gradle
# Fri, 20 Nov 2026 04:16:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:16:19 GMT
USER root
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc8284815f043a76cf30193cfd10d9cedc01ded8c5747a7ab0ca2ea7845974ed`  
		Last Modified: Fri, 20 Nov 2026 03:18:12 GMT  
		Size: 24.5 MB (24486058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795361df17069b63a525f77367ae6a413a92a1be5fae9db8d128c625178c0b28`  
		Last Modified: Fri, 20 Nov 2026 03:18:13 GMT  
		Size: 91.7 MB (91668226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c34c7fa0c2621bdbc75297866e6cb49ea1ea854597fcf4e321edb8eee5bb8f`  
		Last Modified: Fri, 20 Nov 2026 03:18:11 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc29092db6c4b1da3d1a991219026b0f3b874f62fb771a2b0db94e5485a0cce`  
		Last Modified: Fri, 20 Nov 2026 04:16:39 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be5a9f09ab0cb2a986ffb61260006669c859a26e789634db8ed209f89c1758f`  
		Last Modified: Fri, 20 Nov 2026 04:16:42 GMT  
		Size: 66.5 MB (66468904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77175369bdac64391fc6d834273575f6f3878dd1fb0ddb72904c333854616d7e`  
		Last Modified: Fri, 20 Nov 2026 04:16:43 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b53dabf8dee9a5bb08081cb31ecc08ef82540dc3afb3ff91bea77be50b7549c`  
		Last Modified: Fri, 20 Nov 2026 04:16:39 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:noble` - unknown; unknown

```console
$ docker pull gradle@sha256:c112079db75782c6f2a47ab8fb26d400527770de355a4ab335a95f8d58529fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e9bf130c3b2bb65a53082976d83b49b27dba4199d1e7dcde4a82882c89fc6b`

```dockerfile
```

-	Layers:
	-	`sha256:397522e165a3945e1d219c6c78e6e3f6dd68343691861da7721b6fab6b0ef2a2`  
		Last Modified: Fri, 20 Nov 2026 04:16:40 GMT  
		Size: 7.4 MB (7421912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcf928c10e03e9e5347d8e0d93d9f2181788721096854fb727157020fa1ca85d`  
		Last Modified: Fri, 20 Nov 2026 04:16:39 GMT  
		Size: 26.4 KB (26366 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:noble` - linux; ppc64le

```console
$ docker pull gradle@sha256:c4f3c7cbaf7040410d6375290ed1fa4a480746526539a6f3ec3f5504201e8077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.6 MB (356605981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e041cc5f91a094325bc5c04fbfc3ed124fbce52f67e974c0ce4559e13d83f3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:27:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:27:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:27:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:27:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:27:34 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 20 Nov 2026 03:28:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:28:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:28:16 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:35:51 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:35:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:35:51 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:35:51 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:35:52 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:36:42 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:36:42 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:36:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:36:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:36:52 GMT
USER gradle
# Fri, 20 Nov 2026 04:36:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:36:54 GMT
USER root
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8734fe1a0c87357688d7367bdc2cb74a7ff2ef439f8a29f0deb04d91f74d47ec`  
		Last Modified: Fri, 20 Nov 2026 03:28:52 GMT  
		Size: 24.2 MB (24181439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f8f57fc325e65c2e9194210097f2bbcbc7af03b87681bfe419ff7f19c2f644`  
		Last Modified: Fri, 20 Nov 2026 03:28:53 GMT  
		Size: 90.2 MB (90234405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1fb48cd495fe59e4c6b53cabd71aee6ef871bfa435e6ac7bf7319397332664`  
		Last Modified: Fri, 20 Nov 2026 03:28:50 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d2e337d89dc6b93f2fc6f826dd867e14930f2905933f4826be92de0307cdec`  
		Last Modified: Fri, 20 Nov 2026 04:37:51 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd6be1f67b8668c2f0645f6ace47c047c98fc917b022c574af964077af93791`  
		Last Modified: Fri, 20 Nov 2026 04:37:54 GMT  
		Size: 73.0 MB (72958803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea66de5bfc4d58b006dd4755b453d80863f71f34bda5ef0b22923ddcda6a972`  
		Last Modified: Fri, 20 Nov 2026 04:37:55 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c347a8bcd76af9a6056240c820c053b01ecb44fd98138760aff61e3a74d06131`  
		Last Modified: Fri, 20 Nov 2026 04:37:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:noble` - unknown; unknown

```console
$ docker pull gradle@sha256:205ef80d619e9f6bff37e4f3f90943de597e67e9a99edbe50a677e42b3e9d65c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7342959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f80683043f019458604bf6fc91b48f7e6d0419ead47d9af55015a1860bae59df`

```dockerfile
```

-	Layers:
	-	`sha256:6ee9fe54a0759272e9dc369eb7e12b708ab8fed119b1ed0f49f4eaa8e4fdec96`  
		Last Modified: Fri, 20 Nov 2026 04:37:51 GMT  
		Size: 7.3 MB (7316742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c24a03d2f22aa3845ded2ca4124752c1b6b6385c619fb868a9d0f7f99561f631`  
		Last Modified: Fri, 20 Nov 2026 04:37:51 GMT  
		Size: 26.2 KB (26217 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:noble` - linux; riscv64

```console
$ docker pull gradle@sha256:0f03a4f74ff0613e0e25f03958942485bf8a543a91b81a46a16f3f5b173eac1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.7 MB (362715167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3dad6bcb49c3d0c288e05cffdc9f95ba5b2f20a1a95a54ca582e57e29f24919`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 12:12:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 01 Nov 2026 12:12:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 12:12:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 01 Nov 2026 12:12:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 12:12:58 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Sun, 01 Nov 2026 12:15:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sun, 01 Nov 2026 12:15:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sun, 01 Nov 2026 12:15:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sun, 01 Nov 2026 12:15:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sun, 01 Nov 2026 12:15:42 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 10:40:08 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 10:40:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 10:40:08 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 10:40:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 10:40:08 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 10:42:58 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 03 Nov 2026 10:42:58 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 10:42:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 10:43:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 10:43:28 GMT
USER gradle
# Tue, 03 Nov 2026 10:43:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 10:43:35 GMT
USER root
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ae991d124179bb9f66e1c43d4dfc4300f34b93982d94e5fdad2e69d7f774fb`  
		Last Modified: Sun, 01 Nov 2026 12:19:12 GMT  
		Size: 13.8 MB (13816568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c07b122ab0a13b100137e4c65fd5f8f35018de198bd4102a7b85718929d41f`  
		Last Modified: Sun, 01 Nov 2026 12:19:24 GMT  
		Size: 91.2 MB (91166584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fff3e5a267f1978d9d9f974c4af62c24d836998f289084af7789dba4c89caa4`  
		Last Modified: Sun, 01 Nov 2026 12:19:08 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6e0219763fe9c4e34f73d95342abef175935be0a5320e7b56622a55263e97a`  
		Last Modified: Tue, 03 Nov 2026 10:49:02 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2eec353c00afd0dfdf68fc623ee1ecf4deb4ced78fb2fed4f3a5cc88755a89a`  
		Last Modified: Tue, 03 Nov 2026 10:49:25 GMT  
		Size: 75.1 MB (75139577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e33427f4b08b319b46dafdbb72d1c63a3a8308884b5c6df8a51bc6609c0138`  
		Last Modified: Tue, 03 Nov 2026 10:49:36 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11754eaa91623004b792c35bb3aaa16afe9eee929c7f5a40e3e73455fb87e378`  
		Last Modified: Tue, 03 Nov 2026 10:49:02 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:noble` - unknown; unknown

```console
$ docker pull gradle@sha256:4a24ce04c93280ba777043e777b58298ced384793e6473af5861665dfc7600d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2576de387e138177bb60b90d936a9d5439c5ad5109c275e3f81688aa303a14a`

```dockerfile
```

-	Layers:
	-	`sha256:69c864e7cadb4d726ebb5db745c57c65ef4e4be491dcd6c67effbe37a1508e32`  
		Last Modified: Tue, 03 Nov 2026 10:49:05 GMT  
		Size: 7.4 MB (7366129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6a415cd358d5e92fb23f3224a67a35be6a2d3f65a25e6fbc21b18b282e4dbbd`  
		Last Modified: Tue, 03 Nov 2026 10:49:02 GMT  
		Size: 26.2 KB (26217 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:noble` - linux; s390x

```console
$ docker pull gradle@sha256:2261653737e14a7dadb30325f2fcb041c45c184d0c94c7545bfef14a08cd11d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343390490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db29594dfc4d02d8bf073616e35a3454e22476bcc5d9cb8cd058e9a104e358a8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:11:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:11:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:11:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:11:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:11:58 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Fri, 20 Nov 2026 03:12:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='21d9ee84f64d845e7de888f86cc2abe3256c75853a0d5abe7fd42d6526374e90';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:12:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:12:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:12:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:12:12 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:12:26 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 04:12:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 04:12:26 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 04:12:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 04:12:26 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 04:14:07 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 04:14:07 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 04:14:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 04:14:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 04:14:11 GMT
USER gradle
# Fri, 20 Nov 2026 04:14:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 04:14:13 GMT
USER root
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14267e72c6345766ae4254f4c1fcf69cda6cf2593161db64dc8acc1d3d9d6722`  
		Last Modified: Fri, 20 Nov 2026 03:12:35 GMT  
		Size: 21.5 MB (21512683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5547137cc6e98cacdb8f079e68bb152002c2445c512d406b992fc0f23f5d3d8d`  
		Last Modified: Fri, 20 Nov 2026 03:12:37 GMT  
		Size: 88.2 MB (88185903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7c38b1ccfa9a9965399e3acec13e44a8c97ae31d6db275641812cc9ee2e55e`  
		Last Modified: Fri, 20 Nov 2026 03:12:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4b765fdcf18519b4e193a0323e86fc818ccc2df76ef1a826b829775d10e8bd`  
		Last Modified: Fri, 20 Nov 2026 04:15:17 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9061f52eba4c6c8f42e33131b2666ae5ddc8daf82b431e533130ba0f952e2b`  
		Last Modified: Fri, 20 Nov 2026 04:15:20 GMT  
		Size: 68.9 MB (68899372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ea5af8cc05761bb1c6ccb62bbd5f8ca901694d92c7d72d3ac303a03dfbe340`  
		Last Modified: Fri, 20 Nov 2026 04:15:22 GMT  
		Size: 134.8 MB (134820903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610a33d39666edfe8d958e3bb62ab46a7d263196fdfaed9ad5fe6eba20a64b15`  
		Last Modified: Fri, 20 Nov 2026 04:15:16 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:noble` - unknown; unknown

```console
$ docker pull gradle@sha256:311b4f2b8c11abe704fb110917aabc46c29a9a8612f49d8d055dc66489e9ced8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7238265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f5d9556ecb960a8e7f5b241110dd70d5ab13154425aead4db047efe4d0ba5f`

```dockerfile
```

-	Layers:
	-	`sha256:3361e7a15ce55869fb02a4b74df57cade5862409e6911f1da9a12f89e68f6e0f`  
		Last Modified: Fri, 20 Nov 2026 04:15:17 GMT  
		Size: 7.2 MB (7212147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f0e5bfa4a876186826149af2beb76bf402ef89bd78a4f51f12624972158ed28`  
		Last Modified: Fri, 20 Nov 2026 04:15:16 GMT  
		Size: 26.1 KB (26118 bytes)  
		MIME: application/vnd.in-toto+json
