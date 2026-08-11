## `gradle:jdk26-noble`

```console
$ docker pull gradle@sha256:fdea04ea65aad51bedd868a097313d1ca74465c98259813b11f196ac471af766
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

### `gradle:jdk26-noble` - linux; amd64

```console
$ docker pull gradle@sha256:9202ad590e7e87d4885eab3644c2db42273873add720a4d281d1ca256308094c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.5 MB (361465385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3c2dc3e9137a6fb10e7508ac9220f3913a7e3d89d00b22739674482506e660`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:28:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:28:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:28:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:28:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:28:33 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:28:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:28:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:28:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:28:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:28:54 GMT
CMD ["jshell"]
# Mon, 10 Aug 2026 17:47:43 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:47:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:47:43 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:47:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:47:43 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:48:00 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:48:00 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:48:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:48:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:48:02 GMT
USER gradle
# Mon, 10 Aug 2026 17:48:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:48:02 GMT
USER root
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81351d63018f6db7586c54f5fd97a5983f892fa5f09e572a3bb1f83c173e691f`  
		Last Modified: Tue, 04 Aug 2026 01:29:11 GMT  
		Size: 19.8 MB (19828161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7869c7f8f109779c1330dbd5301e37c8eb0c94a019be30c10bd9619ac0ed3c0`  
		Last Modified: Tue, 04 Aug 2026 01:29:12 GMT  
		Size: 94.7 MB (94653964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33709e2d0b26667a61d0840355a13adb12f9c94e6cfecba4b036a7bfdc08b297`  
		Last Modified: Tue, 04 Aug 2026 01:29:10 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760cd242d156dc0781ba977d9fca13bbf557250c44172894bd2f0cb0c4bea992`  
		Last Modified: Mon, 10 Aug 2026 17:48:21 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c003e5ee3421935ab34ec6c8541983ea0b6f185a759ccd779fb26169e2dd8b5c`  
		Last Modified: Mon, 10 Aug 2026 17:48:24 GMT  
		Size: 67.0 MB (66974781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f4525f8215c6efbc3eb4672973940e37cb71ef21113badbee723ede336689`  
		Last Modified: Mon, 10 Aug 2026 17:48:26 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90ed1367fd287369f2fc67898ac0ccabfec869c446f108297ea26f7bfe87b41`  
		Last Modified: Mon, 10 Aug 2026 17:48:22 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:48b303fa2c451d9f75f0a46b9333e08653cc72beb7bc6c46fa5c0b26cd915c27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7301869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88c70416da52c4dd0d4d341dd5c139d7297a4a29b2add6076085c6e712082af2`

```dockerfile
```

-	Layers:
	-	`sha256:2961f32fe4272fbb97835745d81fc63a89856a96502370aa43c84a9e08962c1b`  
		Last Modified: Mon, 10 Aug 2026 17:48:22 GMT  
		Size: 7.3 MB (7278197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2321fc6ece3649b0aded2f5e26fd33ed4038acc82d732b0815df863af85d36c5`  
		Last Modified: Mon, 10 Aug 2026 17:48:21 GMT  
		Size: 23.7 KB (23672 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:dae7fe0de98665851a9b91522e40baa718e18773b44fbabccf746b681c96a1da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.8 MB (357841139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc528332ef237d2de54f49f229ebf67ad3e329f08db5388f387af7be42c50cc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:28:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:28:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:28:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:28:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:28:43 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:29:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:29:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:29:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:29:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:29:05 GMT
CMD ["jshell"]
# Mon, 10 Aug 2026 17:47:39 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:47:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:47:39 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:47:39 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:47:39 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:47:57 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:47:57 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:47:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:47:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:47:59 GMT
USER gradle
# Mon, 10 Aug 2026 17:48:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:48:00 GMT
USER root
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8331c0628c8e866f0df1c43ef736f4add70da19caac85de9b411b8962b8f9a1c`  
		Last Modified: Tue, 04 Aug 2026 01:29:21 GMT  
		Size: 18.6 MB (18610197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f595b7ee52981c223051e201d25591c77baeeadf9cf258c59d90fdc7ab5b096e`  
		Last Modified: Tue, 04 Aug 2026 01:29:23 GMT  
		Size: 93.6 MB (93630382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0f097757c5128dd7bb5027a569ed5c4b7fdc5528fb1da9f0048d88120f5e06`  
		Last Modified: Tue, 04 Aug 2026 01:29:21 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d15557992b0e0597fad4cf37c2dbca02e98b75d5ac59669bb766857f8d352`  
		Last Modified: Mon, 10 Aug 2026 17:48:20 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831dc019c97a627171582d1dbe35a29aaf9703138e7191cf736dfcf5d3f2737c`  
		Last Modified: Mon, 10 Aug 2026 17:48:23 GMT  
		Size: 66.5 MB (66452642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68dd8267f56cb6ba5b08ee5940c929912fbc316b6545ad75a24b5e8d5ce890a9`  
		Last Modified: Mon, 10 Aug 2026 17:48:24 GMT  
		Size: 150.2 MB (150227947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5373a2803c972e72c785e1bc17c133bfd321b714adb4f0e81fcceeda19d0089f`  
		Last Modified: Mon, 10 Aug 2026 17:48:20 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:4cd17d6bd76258d3713feb3e9bf9db8693bee9a58907573a6894203142b0b5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7db38d45de46eab9df13b6147ef79b8f4b4624bea810ae7dcc79405c2978a80`

```dockerfile
```

-	Layers:
	-	`sha256:5b4c0469e020a9d9e446e1c2c35b39809b15b6c8650290ded1fb9b724c987794`  
		Last Modified: Mon, 10 Aug 2026 17:48:21 GMT  
		Size: 7.4 MB (7415867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d317f2c0b5905a7517ea3f4ca95a7f62b49300dbfecdfe52fd3d47150960e7c7`  
		Last Modified: Mon, 10 Aug 2026 17:48:20 GMT  
		Size: 23.8 KB (23822 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-noble` - linux; ppc64le

```console
$ docker pull gradle@sha256:98220a6b2d90ed3dc8ff9f725fbaa373e63a46b48656409cae41f8d695e06c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.4 MB (371366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d97061a6431392bf83eab97a6c4df9f97d1c75b349289b7951d9477c9dffdbc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:35 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:33:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:33:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:33:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:33:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:33:41 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 03:20:05 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 03:20:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 03:20:05 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 03:20:05 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 03:20:05 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 03:20:49 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 03:20:49 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 04 Aug 2026 03:20:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:52:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:52:19 GMT
USER gradle
# Mon, 10 Aug 2026 17:52:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:52:21 GMT
USER root
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bde453571613a5be984309dbf5a65777dd960118404cd94b76d39147e5a9b5a`  
		Last Modified: Tue, 04 Aug 2026 01:28:55 GMT  
		Size: 19.9 MB (19917008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b833d80b6bfed18c55dca00d92a333da31e5485bd518531a394b73584c6428a4`  
		Last Modified: Tue, 04 Aug 2026 01:34:18 GMT  
		Size: 94.0 MB (94029601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f791a4c3e57232eb166ae78e438d628ef212b1dae01c387b0c99275184e1b55e`  
		Last Modified: Tue, 04 Aug 2026 01:34:15 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91879a09379151d1895ae48c7502efda56ae521decd1cf65c8750a836fd41f5b`  
		Last Modified: Tue, 04 Aug 2026 03:21:45 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b2cbed05143ec7edcab5ea95f79a2be53c9f4a9a71023f3b2462c0fcb8aef8`  
		Last Modified: Tue, 04 Aug 2026 03:21:49 GMT  
		Size: 72.9 MB (72877035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feefac98068d3240203843735b699ea5442be81b84359f5a68d710825ffd0887`  
		Last Modified: Mon, 10 Aug 2026 17:53:10 GMT  
		Size: 150.2 MB (150227953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8be347e0dd37617a679884fc68fc17d051f857747dc8053d8184a70fa576a7f`  
		Last Modified: Mon, 10 Aug 2026 17:53:06 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:f0c9b367a9310d6a7ac7efdd978bf95f5aa91e12945aa3512d4f29b1b2cfab76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7336951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615b4cc5b8e70a49e7fb8ae96f9a6015160d46304344a884c7582881949f887c`

```dockerfile
```

-	Layers:
	-	`sha256:e9d98af04f9ff6d947b5580e174ba882e6e66d4dab5e094fdcd6ccfe9207b518`  
		Last Modified: Mon, 10 Aug 2026 17:53:06 GMT  
		Size: 7.3 MB (7313230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f0b926a17a8ca2b2d95016d9b685ad9599879533d26a4f7c3a980024f40b5e9`  
		Last Modified: Mon, 10 Aug 2026 17:53:06 GMT  
		Size: 23.7 KB (23721 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-noble` - linux; riscv64

```console
$ docker pull gradle@sha256:9956511bbad7b3a94e52734c2a2645a7dbbf8e16aaae858d81f10c1ae39807b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363365733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f16012303a66bcf20a746040f02159510c65f9073764a3d56aa59389b57dea6d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 22:05:08 GMT
ARG RELEASE
# Fri, 31 Jul 2026 22:05:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 22:05:09 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 22:06:18 GMT
ADD file:92a48184ab69ab31b698d333efd875f6fa0f69b8c6b66fb9364e2c45ad98a3e9 in / 
# Fri, 31 Jul 2026 22:06:24 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:39:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:39:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:39:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:39:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:39:39 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:56:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:56:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:56:19 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 04:27:56 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 04:27:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 04:27:56 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 04:27:56 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 04:27:56 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 04:30:45 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 04:30:45 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 04 Aug 2026 04:30:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 00:11:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 00:11:31 GMT
USER gradle
# Tue, 11 Aug 2026 00:11:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 00:11:38 GMT
USER root
```

-	Layers:
	-	`sha256:762baa88da0248ffd5b4e64693b9d04fc144101bcdbcc6dcc7d9a6be2a8b7953`  
		Last Modified: Fri, 31 Jul 2026 22:22:50 GMT  
		Size: 31.0 MB (30982563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863494356253ef481892a8f85d32c6e2f1ea4144ed8855827d781711a2c2de8c`  
		Last Modified: Tue, 04 Aug 2026 01:45:37 GMT  
		Size: 13.8 MB (13807322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd44b1d96ea24aa3026701c6a005f6f60fa0c205e2bbadde53b9d72ad9ff1fb`  
		Last Modified: Tue, 04 Aug 2026 01:59:57 GMT  
		Size: 93.2 MB (93219899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cea51e22af82f28d9027a9fd7fd49b68c5b85c125429bf4dd37b3fa1c8e270`  
		Last Modified: Tue, 04 Aug 2026 01:59:43 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c141fe09e15dcc943f3be1c44426a5362423f89df0bce51d4d8843086145056`  
		Last Modified: Tue, 04 Aug 2026 04:36:36 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2928590335ee9c8feeb0be0586fb16a1a2c484dfaffec0ad8c5a7e7688473594`  
		Last Modified: Tue, 04 Aug 2026 04:36:59 GMT  
		Size: 75.1 MB (75123812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab8d8399e1a42bb472fd34c48c05c95711e194e489cd46652f6a388fd595939`  
		Last Modified: Tue, 11 Aug 2026 00:16:59 GMT  
		Size: 150.2 MB (150227934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3bab80c0d8d4e5673968f7d2294e767780b32cf7dbcd9b96bb17d41b5f76a26`  
		Last Modified: Tue, 11 Aug 2026 00:16:35 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:c5b7baf518d1ff202f7dfa2e067f1ae87a22d4df43d763895c8c1386f29e1487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7388315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8666c759fb3fd6a186839898a207d367af25fea1bbd6bafd7d332d82f747b2c0`

```dockerfile
```

-	Layers:
	-	`sha256:01300503a73087835df417a27a66656b19d00715e9642dcb64eb3d653c285c97`  
		Last Modified: Tue, 11 Aug 2026 00:16:38 GMT  
		Size: 7.4 MB (7364594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a8c2c58464f4de6573e5ce98692ada37fb6fc0d93bdb82dc150670b44a562e7`  
		Last Modified: Tue, 11 Aug 2026 00:16:35 GMT  
		Size: 23.7 KB (23721 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk26-noble` - linux; s390x

```console
$ docker pull gradle@sha256:c6f4cb232f7bb09780f0fc499851de923017be335e936f6dff00eac5591687e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.0 MB (355955922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f8d30fe750a90191d22b6fccc68951de0e1d766312d2209c235f9aa33d4bd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:17:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:17:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:17:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:17:28 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:17:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        riscv64)          ESUM='f1b762d6d86599627983df200f215bc970444a697159ca3fae93208756b44715';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_riscv64_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:17:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:17:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:17:42 GMT
CMD ["jshell"]
# Mon, 10 Aug 2026 21:18:04 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 21:18:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 21:18:04 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 21:18:04 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 21:18:04 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 21:18:43 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 21:18:43 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 21:18:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 21:18:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 21:18:47 GMT
USER gradle
# Mon, 10 Aug 2026 21:18:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 21:18:49 GMT
USER root
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6249aa440ee6d8138d9534a391b87ca3761cb5a24b5983eea4f8a3f5b44b3a4`  
		Last Modified: Tue, 04 Aug 2026 01:18:04 GMT  
		Size: 16.3 MB (16266062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37acdf31d9200a05c4d4b6e34a530876effdb2c515bd6a129c7a31f6a03ff199`  
		Last Modified: Tue, 04 Aug 2026 01:18:06 GMT  
		Size: 90.7 MB (90665633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8963250146f4432f41dc4e2c8451a6570c40a8e63055faab3104af786e5fe6c1`  
		Last Modified: Tue, 04 Aug 2026 01:18:04 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befe553f605bb3a0feb33167991a9f37d9322060be871488f52e1dc1b53b7d4e`  
		Last Modified: Mon, 10 Aug 2026 21:19:23 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66fca117937f418dc49001ff653941ea9466de64508cc0566903b607fd1b934c`  
		Last Modified: Mon, 10 Aug 2026 21:19:25 GMT  
		Size: 68.9 MB (68856383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e9a7581f884b92541c20657c260612eeec6b8eed897609ad307dc03ded075bf`  
		Last Modified: Mon, 10 Aug 2026 21:19:27 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa86ba1164c40f6f8c18a9917a52747f224a09ab5165373ea05d75190a12ab44`  
		Last Modified: Mon, 10 Aug 2026 21:19:23 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk26-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:b5c3fb4ce15b252ca2c9f0facbd72ca4b5f5274f31512efeadfbec3d134c6db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7232353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b00a8d1eb2db18302c6c6912931501e8c390cd2d8f304560d52ff07d45b4b67`

```dockerfile
```

-	Layers:
	-	`sha256:a3830273b28b70d2064f3cc4cea502b263253f8c64d33b01ae6aa13b9989dcb5`  
		Last Modified: Mon, 10 Aug 2026 21:19:23 GMT  
		Size: 7.2 MB (7208683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a574e3006418523cfe0ec4cc29d487062bc62b46beb4bb04dece2669e47ac9e`  
		Last Modified: Mon, 10 Aug 2026 21:19:23 GMT  
		Size: 23.7 KB (23670 bytes)  
		MIME: application/vnd.in-toto+json
