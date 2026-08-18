## `gradle:9-jammy`

```console
$ docker pull gradle@sha256:44fb9ef942cec1b99a31e7a235971699f0c2316b2ba8143966a023f854f8d2dc
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

### `gradle:9-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:b88291a1f1473ee353410cdc706baf98e9c869868a334c2b83849e13f1797d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.6 MB (409618969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0665895463b813c7cd8fda1757c2c1f3af92c56ecf56f1e6adcbda5c6eb4de2b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:13 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 01:15:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 01:15:22 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 02:12:46 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 02:12:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 02:12:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 02:12:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 02:12:46 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 02:13:01 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 02:13:01 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 02:13:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 02:13:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 02:13:04 GMT
USER gradle
# Tue, 18 Aug 2026 02:13:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 02:13:04 GMT
USER root
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebeac2f0d6526fbe79b65271d563cb31e26b3f60d89fb63839d388861d112d0`  
		Last Modified: Tue, 18 Aug 2026 01:15:39 GMT  
		Size: 20.7 MB (20659514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44547e25fc00a62d1a25e569d2526a2a5156e6cce5f848ef50d28996cca9deec`  
		Last Modified: Tue, 18 Aug 2026 01:15:42 GMT  
		Size: 158.2 MB (158171454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3374b24d11f3bfd034b02048547e4002da63fdcf7d0da7f206a7ef57f632d5ea`  
		Last Modified: Tue, 18 Aug 2026 01:15:38 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8aa244d810014a6e8768ebf6bc5357dc1de7eb50ecb681bf1027c008f10ebe`  
		Last Modified: Tue, 18 Aug 2026 01:15:08 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ee598739a093b4a9b76bb489091036d717eddedc5b766a16d9d44b5573327e`  
		Last Modified: Tue, 18 Aug 2026 02:13:24 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e784daabf81b45648f6fbaeb0c8d68f22cc327fc8c1d3de1e0c26c47bbfb64f6`  
		Last Modified: Tue, 18 Aug 2026 02:13:27 GMT  
		Size: 50.8 MB (50790719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351c4579fa63b9382a7f8318d837aa47caf55dfe2c0f642172045b4f1481e318`  
		Last Modified: Tue, 18 Aug 2026 02:13:29 GMT  
		Size: 150.2 MB (150227946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f38f5a25e62815d76584ccdd6faa136cb331781ca0d28ecc135fdadea8f2bc`  
		Last Modified: Tue, 18 Aug 2026 02:13:24 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:411924ff933af516473d3d21e3b72654c731ac94534e5ce20685100046bcf55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7910052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5998db6c4d6a401b5d264240e6bd10fc2765d12cd5a09415a3fdba1d88bea4a5`

```dockerfile
```

-	Layers:
	-	`sha256:66e147ccd4c6c144a7459c567e6b71a1a376dd498476d212b8e117ea4a7ddf56`  
		Last Modified: Tue, 18 Aug 2026 02:13:25 GMT  
		Size: 7.9 MB (7884146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3b2144a3ef3b99ef79fbd9dd909f353036c29758fac32535df1e3ffb7744869`  
		Last Modified: Tue, 18 Aug 2026 02:13:24 GMT  
		Size: 25.9 KB (25906 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:282add8c321a7e5d6ebd33b4c077ea423fd3aa647d9ebaf426814bb5ae1b4a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.8 MB (406819032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886f21e25c917fb0ac80a77436f48ba3e7b5078c3ea722f961f72666374a5950`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:08 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 01:15:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 01:15:19 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 02:12:34 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 02:12:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 02:12:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 02:12:34 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 02:12:34 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 02:12:52 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 02:12:52 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 02:12:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 02:12:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 02:12:54 GMT
USER gradle
# Tue, 18 Aug 2026 02:12:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 02:12:55 GMT
USER root
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07144737c05275fe4f51df50626a2f731c60cc86b05018a9c0bbfcfd10e42a72`  
		Last Modified: Tue, 18 Aug 2026 01:15:37 GMT  
		Size: 22.1 MB (22068363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5190fb33aa65855cddc8ea3edd3035c2764c23a3ef167547d69f674e3039ad5`  
		Last Modified: Tue, 18 Aug 2026 01:15:39 GMT  
		Size: 156.5 MB (156473117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b43b3235b4c4981846628a95c99a931f2e168e38d1ce39a66f44aff5579250d`  
		Last Modified: Tue, 18 Aug 2026 01:15:36 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9326e34eabe49d6c0fb8c7535ef015844485436bc3e349d53a58fb8d6f9e1931`  
		Last Modified: Tue, 18 Aug 2026 01:15:36 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67add1877006828704b09bb8de631cc24600234041971f9a4e45fd862d11c8f`  
		Last Modified: Tue, 18 Aug 2026 02:13:14 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1519df891fd238626097cda86dc0a6c986ed0fb08f0ac9e85663baea4a30a5`  
		Last Modified: Tue, 18 Aug 2026 02:13:16 GMT  
		Size: 50.4 MB (50393031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c823f6a085aef4f32513e8bbf1e797a5ada5e3138845999e349f4f2a8b38e3`  
		Last Modified: Tue, 18 Aug 2026 02:13:18 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726859ee25773f88dc1c6de3edc1661265d07ecc231d9eb8e5f34327e8248974`  
		Last Modified: Tue, 18 Aug 2026 02:13:14 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:dff02ce3ed2d4e0c5344d89aaa595af9cb28fcaf49c6432448c43fe4a880ffc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8012020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a18af4669bd84ef1856ced878a68c366158d81a95b8b7b3d1a56ff2bad7861d`

```dockerfile
```

-	Layers:
	-	`sha256:b2001102ac5ad8e3005022b4a6cca2c1c65b274bc5b5f4eb2cfbd3654654676e`  
		Last Modified: Tue, 18 Aug 2026 02:13:14 GMT  
		Size: 8.0 MB (7985869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967dbd021eca1d7d290e2c4b052c24f79f3988fe9de89997d1baf70d1dbe27ee`  
		Last Modified: Tue, 18 Aug 2026 02:13:14 GMT  
		Size: 26.2 KB (26151 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jammy` - linux; ppc64le

```console
$ docker pull gradle@sha256:e447af874ed3d2864c9fc514c36cf46e98a13278f8e2f3349abc5c733875d23e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420544103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77173fe6510d61ebc184d24fe0a7c8c0e991b514b1990300ce1cc5db8636b458`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:11:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:11:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:11:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:11:48 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 01:12:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:12:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:12:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:12:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 01:12:28 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 02:10:44 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 02:10:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 02:10:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 02:10:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 02:10:45 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 02:11:35 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 02:11:35 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 02:11:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 02:11:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 02:11:41 GMT
USER gradle
# Tue, 18 Aug 2026 02:11:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 02:11:42 GMT
USER root
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938e99eab354439b851c26c47c9e428e589d7dd85f73ea8f0b77f2fa39d0481`  
		Last Modified: Tue, 18 Aug 2026 01:12:48 GMT  
		Size: 22.5 MB (22541724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb60a0c42e731e3f843c43facf888b110b5a24d6ccae5249fa1ee32de5942267`  
		Last Modified: Tue, 18 Aug 2026 01:13:13 GMT  
		Size: 158.3 MB (158345601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8808a86cd727781e0ece9754500d61cc749f891139842c161ae4441d3afc41c3`  
		Last Modified: Tue, 18 Aug 2026 01:13:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb804145936152781c70d1f649bd5e2acbd00aa4e2e1aedf9d5ce4eecb979b0`  
		Last Modified: Tue, 18 Aug 2026 01:13:10 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541b67694cbb955ab0bdc262e5f7d26604328afa301c439da31f8f9eaa0d6e6a`  
		Last Modified: Tue, 18 Aug 2026 02:12:18 GMT  
		Size: 4.3 KB (4313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412a596982e56aaf4a185469b0e52dfb37f3d3bb9cf344f27e102707b21d12be`  
		Last Modified: Tue, 18 Aug 2026 02:12:21 GMT  
		Size: 54.8 MB (54783540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496a4e1eada6f7ec57f4d93684c238a38dab3fb1ff93a88dcf5c0f8a8adb3645`  
		Last Modified: Tue, 18 Aug 2026 02:12:23 GMT  
		Size: 150.2 MB (150227930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ca3bfb083ab306d84dd4aaac8d6157f6659893f9d078ea325a2b7254224e5e`  
		Last Modified: Tue, 18 Aug 2026 02:12:18 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:66f52db1350b0de39324f44cb0b9094fd68dc7d7afed606a94ca9b77aa742986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 MB (7941046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139ce868fdb62f771a5ec97350337aab45de2a0680111470695e3476d758115c`

```dockerfile
```

-	Layers:
	-	`sha256:1ae68c9076fdec45ffd12457506049beed8d61f115c0e4af7bee0967ad84b3dc`  
		Last Modified: Tue, 18 Aug 2026 02:12:19 GMT  
		Size: 7.9 MB (7915044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e8a65023e82ceba13c4f7748295566d0905cfea91cc8a6cf033d15219ac740`  
		Last Modified: Tue, 18 Aug 2026 02:12:18 GMT  
		Size: 26.0 KB (26002 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jammy` - linux; s390x

```console
$ docker pull gradle@sha256:90febbd7aeb32569aed5f4ab66764802c38e4df3862feb4a0b44259fd437d871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.7 MB (396725911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326509d94604952d61180758e30766a3391d655a635ee0a0f9f854c4b4d415bf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:07:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 00:07:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 00:07:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 00:07:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:07:35 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 00:08:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 00:08:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 00:08:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 00:08:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 00:08:52 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 01:09:16 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 01:09:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 01:09:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 01:09:16 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 01:09:16 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 01:09:37 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 01:09:37 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 01:09:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 01:09:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 01:09:43 GMT
USER gradle
# Tue, 18 Aug 2026 01:09:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 01:09:43 GMT
USER root
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93abce05cf0f6eaa7e3ba7ac2f0f35819445302ae98b1bb779ac266e6d61d08d`  
		Last Modified: Tue, 18 Aug 2026 00:08:17 GMT  
		Size: 20.4 MB (20369596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d13814b3753aeeb56a0d363ff1a32e08994848f0791012c39a245f85f8e7070`  
		Last Modified: Tue, 18 Aug 2026 00:09:46 GMT  
		Size: 147.4 MB (147398603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375c50aab09e396ddec995db8200994267fb57a645fa308182a0d179c3c2cd77`  
		Last Modified: Tue, 18 Aug 2026 00:09:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5af19d254b75e1b3cd4589bfca302bf8b09626ab8d92ef4969b755df0185bd`  
		Last Modified: Tue, 18 Aug 2026 00:09:42 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4ac7bf703af3c45e52c698520d782e8f83ef2828146b6b018310df263a80b3`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 4.3 KB (4316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa384dc294ceeedd6f708ab8a007fc9f3f8c6538adb081520d8080359a06b722`  
		Last Modified: Tue, 18 Aug 2026 01:10:26 GMT  
		Size: 50.5 MB (50511770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a8c591dc487577bf97da477b92683b046371668743564019cee57064051cec`  
		Last Modified: Tue, 18 Aug 2026 01:10:26 GMT  
		Size: 150.2 MB (150227878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b55b2b6c3aa5760e955c6f7e950899ae2c6eaae167bf3593f51f404047ea66`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 371.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:b392fd73ddd7c33cd3daebb53cb144f7b5ef6a6ac2fc94cdbbb8f64fed8b3c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7833730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97c66869e7c2db6f557230a3a7f209f04a7adc7075d5acca40f25f337c311ed`

```dockerfile
```

-	Layers:
	-	`sha256:27d2a46da8de6949bdde3f15b3cb7b62d955f5efc74ad6bb67fc609b9f066db1`  
		Last Modified: Tue, 18 Aug 2026 01:10:25 GMT  
		Size: 7.8 MB (7807826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8a7f9c9cfa3bcff3e9e87ab8e162a7a29e5298afa550fd413879c545de27e6b`  
		Last Modified: Tue, 18 Aug 2026 01:10:24 GMT  
		Size: 25.9 KB (25904 bytes)  
		MIME: application/vnd.in-toto+json
