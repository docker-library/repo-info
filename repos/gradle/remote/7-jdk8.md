## `gradle:7-jdk8`

```console
$ docker pull gradle@sha256:00e17cfe0faeb93f1306e246121d602d404aedfe5aef01e96ad1680f523e48e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:7-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:5d26da6c437b33451c041a4b09ce8a4edbc7be3112d7adbdc21961573eb30408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282694518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c0826700a9496154ee1f78d2c8398b8d72ca1c3f5b4ef3619667e39260ddbe`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:18:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:18:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:18:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:18:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:18:58 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 02:19:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 02:19:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:19:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:19:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:54:36 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 03:54:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 03:54:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 03:54:36 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 03:54:36 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 03:54:55 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 03:54:55 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 03:54:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 03:54:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 03:54:57 GMT
USER gradle
# Wed, 09 Sep 2026 03:54:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 03:54:58 GMT
USER root
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3244ad44e6697377b8666bb431d1ae7f226f835cb423552d8f161fb9885e1b7`  
		Last Modified: Wed, 09 Sep 2026 02:19:14 GMT  
		Size: 16.1 MB (16112152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e5de2ce24d66e0c442be9ccafca033ee0c9811dd9d949921b7290d8003cc67`  
		Last Modified: Wed, 09 Sep 2026 02:19:15 GMT  
		Size: 55.2 MB (55168701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1e10a0539df2c792a24a88a4b87ea0b397495d2f212eff301ce2fbc0a83010`  
		Last Modified: Wed, 09 Sep 2026 02:19:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbd6db92bbbbd5dc5a743966a87ff1e7bb128562df2769b9d819a3316bdc9cb`  
		Last Modified: Wed, 09 Sep 2026 02:19:13 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c0121c671cb6b7b9f61a387b2ff52548b1e69eaaa77e7b87e1202ecb38b1ce`  
		Last Modified: Wed, 09 Sep 2026 03:55:15 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8347c402894b4bde89b520f9bfb5f79a74a69a712ce427c88b50ac577223cd29`  
		Last Modified: Wed, 09 Sep 2026 03:55:18 GMT  
		Size: 53.1 MB (53132130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6718fd9d68dfff56f2be3b012503e8f28349a4ec7aec032642df86026cd004cd`  
		Last Modified: Wed, 09 Sep 2026 03:55:19 GMT  
		Size: 128.5 MB (128469418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321c2226074fa570ad34861d2b62f653bf3890f384f13bc973b4e91d5a9f256c`  
		Last Modified: Wed, 09 Sep 2026 03:55:15 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8` - unknown; unknown

```console
$ docker pull gradle@sha256:4dba0045bccc089fcb02e2000e8d4ad3ad2d6597f69b6110e2ea68704686dc0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7743901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66a6da0a791ac9f86effea7fafd0a79ff33021134aefe4035b959afa5378105`

```dockerfile
```

-	Layers:
	-	`sha256:9ba2a120e633b12de5dac0375cd532781495472aee0ce62da402c800fee4643b`  
		Last Modified: Wed, 09 Sep 2026 03:55:16 GMT  
		Size: 7.7 MB (7720135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67602bd29363c177bf78e0b109cc2fcd3d46c2be63d7437ac9c4495e6a7208e2`  
		Last Modified: Wed, 09 Sep 2026 03:55:15 GMT  
		Size: 23.8 KB (23766 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8` - linux; arm variant v7

```console
$ docker pull gradle@sha256:bbc4eaed76e393ea41dc4afcd08e2acea5964eb04915ccd6245ab7f018e2bd33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275012395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb522c8994320b3b0511ae07e12a043aeda2ed9b3502bfed8db219a5aedeefdd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:43 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:43 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:43 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:46 GMT
ADD file:28008f9e682e86fcfbf3a0a3e6cf7bc009d54f8a88db924bb6e29b30e688e939 in / 
# Mon, 10 Aug 2026 17:38:47 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:10:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:10:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:10:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:10:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:10:38 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 18 Aug 2026 01:10:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 18 Aug 2026 01:10:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:10:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 02:12:36 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 02:12:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 02:12:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 02:12:36 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 02:12:36 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 02:12:54 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 02:12:54 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 18 Aug 2026 02:12:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 18 Aug 2026 02:12:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 02:12:57 GMT
USER gradle
# Tue, 18 Aug 2026 02:12:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 18 Aug 2026 02:12:57 GMT
USER root
```

-	Layers:
	-	`sha256:deafe6b5876d5dead55957182e61b6fb35f90aab5d6265e0945beaff36062d3a`  
		Last Modified: Mon, 10 Aug 2026 20:08:55 GMT  
		Size: 26.8 MB (26848898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475285f8afe942046204450a1de2e088bc3a70c342594f108ea1555ee55c07e7`  
		Last Modified: Tue, 18 Aug 2026 01:11:03 GMT  
		Size: 15.8 MB (15839513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff8c5886b005a0b53fd011b132baae331d3f561b2a61cbb0d49edd41addab8b`  
		Last Modified: Tue, 18 Aug 2026 01:11:04 GMT  
		Size: 50.5 MB (50547912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623ff4523303d3661e6577d1ab0d9b683b03a5229c3e83dac63d24d70468d57f`  
		Last Modified: Tue, 18 Aug 2026 01:11:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df51744ee7ae1d0a127d6be4f3e035f9b6dc4e7e111debeda513092472491d77`  
		Last Modified: Tue, 18 Aug 2026 01:11:02 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be70a55b09276c052719339cb7808b90f5708226b481a20b2db409526c43717e`  
		Last Modified: Tue, 18 Aug 2026 02:13:15 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eac7ad34c2432495bc40db6d1db0e438c6f7a4c111dbb1de082a1155808a0af`  
		Last Modified: Tue, 18 Aug 2026 02:13:17 GMT  
		Size: 53.3 MB (53268436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b029b871a6b783a4508d038449abe7327d58e79738311e2902dbcbdc830b1b10`  
		Last Modified: Tue, 18 Aug 2026 02:13:19 GMT  
		Size: 128.5 MB (128469408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:174b128689037d4eb13613b245e2ce20f6a7c495a35caf865058705f81dd3bcd`  
		Last Modified: Tue, 18 Aug 2026 02:13:15 GMT  
		Size: 31.3 KB (31289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8` - unknown; unknown

```console
$ docker pull gradle@sha256:5322e3bf9f3e901d281b08be71c9451e5daf2e939009610a7f6c079749dc3bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7745434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54aba9e6c4e9f7c565d2d5b1d34f3e8c4403e8d4d998eaa24140b17709af8b54`

```dockerfile
```

-	Layers:
	-	`sha256:094a89c7047f348b6c8b4e5fa0b26e05a462a1df37cc11bd2b6207f79a63bd7f`  
		Last Modified: Tue, 18 Aug 2026 02:13:15 GMT  
		Size: 7.7 MB (7721533 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cfed323119d494559b6b7f787e5cc2d44fb6f5cf6e05e757cc1ecbd088a9ef9`  
		Last Modified: Tue, 18 Aug 2026 02:13:15 GMT  
		Size: 23.9 KB (23901 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:27a78be5affa5eb465c4ebc9b83503489f544b396538cc7d4c97f739a4b13e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279178010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cee732a90ee41fbced25d5ae1e9316b2b125c8e2fb08c9efb812d2d40b1c4b82`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:31:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:31:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:31:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:31:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:31:08 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 01:31:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 01:31:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:31:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:31:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:22:15 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:22:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:22:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:22:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:22:15 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:22:32 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:22:32 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 02:22:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 02:22:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:22:35 GMT
USER gradle
# Wed, 09 Sep 2026 02:22:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 02:22:35 GMT
USER root
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa36522f876aa0ad5ec8c7053fcdd3f2f984f60a45540cbab777266302fdaf9`  
		Last Modified: Wed, 09 Sep 2026 01:32:08 GMT  
		Size: 16.0 MB (16036371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed46ba8e0b3e37bc973be3ed00b44ad738eb76e11f85f78261e42ad907399ca4`  
		Last Modified: Wed, 09 Sep 2026 01:32:09 GMT  
		Size: 54.3 MB (54269522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03910709adabbb0663e7ca2c2752b4477292e80a97060eea7667154303e1760`  
		Last Modified: Wed, 09 Sep 2026 01:32:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf4ba91cd7ae1cc600652c4d1c9d8c82540c21262876e7d0a0cd59eb38aabb2`  
		Last Modified: Wed, 09 Sep 2026 01:32:07 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7487014d57d16e56bdcacdcf20b4709ffc14ede968855809e929983897e402e3`  
		Last Modified: Wed, 09 Sep 2026 02:22:53 GMT  
		Size: 4.3 KB (4320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce60d62d32af1ace27b22a6b32c51d0a5a0608b58e5e0992abd3b99ae1e4d430`  
		Last Modified: Wed, 09 Sep 2026 02:22:56 GMT  
		Size: 52.7 MB (52653469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4326feaedd55a133972d11a340544121e24a628401ea1c5c90f49e459ac8e3f8`  
		Last Modified: Wed, 09 Sep 2026 02:22:57 GMT  
		Size: 128.5 MB (128469420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e525a9a1614afee7b856f6471a24139d116075ce1de0a04e47900fbffababc52`  
		Last Modified: Wed, 09 Sep 2026 02:22:53 GMT  
		Size: 59.5 KB (59516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8` - unknown; unknown

```console
$ docker pull gradle@sha256:665c2ceafa9cb713bbb110e96d0d473dff4a783b0d62dcf5870a79fbcc689105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7750623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1443f3efd6cef552d09fb9fddbb33b08aa5820d2ee022c94981d62ce3572a3d`

```dockerfile
```

-	Layers:
	-	`sha256:2407672baec204553d31a6ab5b401baa6e47b608fa8522b9f786c39282bbdeb9`  
		Last Modified: Wed, 09 Sep 2026 02:22:54 GMT  
		Size: 7.7 MB (7726684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:782346d0404ac08eecd824fe33a705f71aa648878115661278d08e759e6cbc74`  
		Last Modified: Wed, 09 Sep 2026 02:22:53 GMT  
		Size: 23.9 KB (23939 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:99a1276c817284a7229acc847c8f28696401d901631ba9e03b6f9af7bfb6da14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.7 MB (290710046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027f5425d6b4a12c444053fe6f383ac164dc952b5156e7967e38b682623122f6`
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
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 08:29:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 08:29:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 08:29:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 08:29:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 12:00:18 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 12:00:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 12:00:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 12:00:18 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 12:00:18 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 12:03:29 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 12:03:29 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 12:03:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 12:03:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 12:03:33 GMT
USER gradle
# Wed, 09 Sep 2026 12:03:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 12:03:34 GMT
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
	-	`sha256:0b4a2611ac0a48ff5f1833f490169e62d154c954d203441f3327464e177e9d92`  
		Last Modified: Wed, 09 Sep 2026 08:30:00 GMT  
		Size: 52.7 MB (52675182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151572da75b067f18d3eb907d4d7bb2d32fe01ee9bc135341b6fb27d42d2d865`  
		Last Modified: Wed, 09 Sep 2026 08:29:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5965978bc4995846834c238cdf089a806b3f2fbd740d8d5fc956b282b2a8833`  
		Last Modified: Wed, 09 Sep 2026 08:29:58 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a7279c0e1fb066deee9a7fc485ba0e36354372df9aaebc08cb848a7757e3d8`  
		Last Modified: Wed, 09 Sep 2026 12:02:36 GMT  
		Size: 4.3 KB (4319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915f75c0586df9dacfe834f748a51cca776ff6fead8e1b8288dc8987184a77e2`  
		Last Modified: Wed, 09 Sep 2026 12:04:11 GMT  
		Size: 57.2 MB (57238502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5301bd7e8223bba76ed2a5b766c4fdd7acafdb6783d1a5ffe171e3fd7d13be27`  
		Last Modified: Wed, 09 Sep 2026 12:04:12 GMT  
		Size: 128.5 MB (128469422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0e86eb7b1e6ef9ca0aef2a2b7194a60b758bc1269dd16ed30be8fcd57d8156`  
		Last Modified: Wed, 09 Sep 2026 12:04:08 GMT  
		Size: 35.0 KB (35007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8` - unknown; unknown

```console
$ docker pull gradle@sha256:e749ef5c9c1be69cb9f0219e94d0775b1e40cb894360155b583b365befc0efaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7750030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5431aaad52fd4b67414b7d83d67380e9d0b92bf3a36f8805398fd61aa670c195`

```dockerfile
```

-	Layers:
	-	`sha256:c86d37fe116cf6b779082defe7d0a8071269f320921af342397b61b2ccfeefe3`  
		Last Modified: Wed, 09 Sep 2026 12:04:08 GMT  
		Size: 7.7 MB (7726202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79319e776246c5c58fba5bc976f095b272492cdb998c2b74d2268971b7b1d62`  
		Last Modified: Wed, 09 Sep 2026 12:04:07 GMT  
		Size: 23.8 KB (23828 bytes)  
		MIME: application/vnd.in-toto+json
