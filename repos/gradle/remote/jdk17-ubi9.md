## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:01f6211c0fe388cf91dc2e4d69080f44ed13abdd7f20e22d50174d55790515b2
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

### `gradle:jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:aa560916d42d92d96063f8ae60b9bb056c10cf026430f5b0bad120892bc8352a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392824303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6268997e5a626e04081525c3d563cd63a448912279f206b5ac0a508edc67a1b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:55 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:27:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:27:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:27:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:28 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:39:41 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:39:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:39:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:39:41 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:39:41 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:39:45 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:39:45 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 29 Jul 2026 18:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 29 Jul 2026 18:39:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:39:48 GMT
USER gradle
# Wed, 29 Jul 2026 18:39:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 29 Jul 2026 18:39:48 GMT
USER root
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def36818b7080e634cdadab02f039c172f5555baca067527daabd0eee6fae4aa`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 27.7 MB (27662512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cfc5c2b70721519a547df5b2815b4df9a60c99f76221b9caa0e3c93f05e99c`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 145.9 MB (145915462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d64b064731ae1e12b910421fc805ccd999d744d4b05b764ef5b64d1b63b312`  
		Last Modified: Wed, 29 Jul 2026 18:27:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7b4ea5491aee4580375eb1f87b1314d552b5646a495372b8ea1a53e2c302cc`  
		Last Modified: Wed, 29 Jul 2026 18:27:44 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51fda5964f9bd7a2f3182ba3db627c3d92e7b1fcd1164bc549f36511470e3b7`  
		Last Modified: Wed, 29 Jul 2026 18:40:04 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1528121c909ef6396fa8972d69fd350a1afc26abfa6c080045aebb7ada66d7d`  
		Last Modified: Wed, 29 Jul 2026 18:40:06 GMT  
		Size: 37.9 MB (37919954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0328e02a8d6c7d612953907e388786f44c98e7dcf9195e416e4fc3776da1a8e`  
		Last Modified: Wed, 29 Jul 2026 18:40:08 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad6ef68960d704824fa33a7e97fca28623f61b4fe1208c6dba82e467617934c`  
		Last Modified: Wed, 29 Jul 2026 18:40:04 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:20477216fc7e2463474eb11957725888819bf90d90bb45a2b3be5bb4a112e643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5456226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a02270d30d30641e3783d1da6b4e87b7db26f67018d62d67fac2d1fb195cbb69`

```dockerfile
```

-	Layers:
	-	`sha256:0a76afc4a578daa8a4850f84a6cd18e24d4e4443a0772145964a7f0debace6cc`  
		Last Modified: Wed, 29 Jul 2026 18:40:04 GMT  
		Size: 5.4 MB (5432990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc6ea4634140640412e42d5188aef08fb2c6d250bfeb9bd12ba72943ba535b7b`  
		Last Modified: Wed, 29 Jul 2026 18:40:04 GMT  
		Size: 23.2 KB (23236 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ce166f5046b62a1826ef9c7f60dc4f641f46d967e4de63025d6501925ac9b9a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.5 MB (389513597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988476067204a881b91ae76c909e641adff20819c7f40d1b5cb60a904b050e5a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:43 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:26:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:26:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:26:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:26:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:26:52 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:38:59 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:38:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:38:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:38:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:38:59 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:39:03 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:39:03 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 29 Jul 2026 18:39:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 29 Jul 2026 18:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:39:06 GMT
USER gradle
# Wed, 29 Jul 2026 18:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 29 Jul 2026 18:39:06 GMT
USER root
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bcae5675c066c73188e4644b7f616db0ffa461bde98998497f95ecaeacbbaf`  
		Last Modified: Wed, 29 Jul 2026 18:27:09 GMT  
		Size: 28.1 MB (28105465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe77b49e4367b0b738f790a33d8174b861102806135f786b35b0378ec973d62`  
		Last Modified: Wed, 29 Jul 2026 18:27:11 GMT  
		Size: 144.7 MB (144734783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca25474c6594734761d9425ad2d197947a7782cb559a80a0df0246dac79df86c`  
		Last Modified: Wed, 29 Jul 2026 18:27:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b64e2a4c314c18d3a76367efed0eb87719a9df14f15180fc7aae1e7da9e1ed`  
		Last Modified: Wed, 29 Jul 2026 18:27:08 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91e89fbd45c147211a706aee58c716587f56d626d5d7298dbe340ab3c7e8ac6`  
		Last Modified: Wed, 29 Jul 2026 18:39:22 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5368bbc94b637404b57ab7196b70ab82e89797b1b1da1bb2e48e7e3c0edeb17`  
		Last Modified: Wed, 29 Jul 2026 18:39:24 GMT  
		Size: 37.2 MB (37205751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0598bfc0cc80422bcc2035a3cec864f4c5da3b02a126578254b3a5328bcdc6`  
		Last Modified: Wed, 29 Jul 2026 18:39:26 GMT  
		Size: 140.6 MB (140596021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd26f0a69f8b2330a8a253c6e9e3a5f88a7ea8942d63d9de0d694d64b72f234`  
		Last Modified: Wed, 29 Jul 2026 18:39:22 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:ce0f7fbecafecbda3c2853b29d5c067815dbca55b2df69521d628b98cb05acee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5453975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaf312c9ddf3cfca0033034234927e468080117c7e8176aa58bf1e6ee127fac8`

```dockerfile
```

-	Layers:
	-	`sha256:fcabf2e5aae8db3fe216420a5bb963b6bdb66133676f038315f7fbe90854f632`  
		Last Modified: Wed, 29 Jul 2026 18:39:23 GMT  
		Size: 5.4 MB (5430590 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e454501064cf7a07ea6f7cf89c1261bbf79d7db1277d97c01fe8d3e42dba3bea`  
		Last Modified: Wed, 29 Jul 2026 18:39:22 GMT  
		Size: 23.4 KB (23385 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:46fad2a777d2838dde3e8113a85f980d35c8896adcaec337f78748c53a16a219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.8 MB (400806623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a92e93d734bea9e06ed75185abd2a92a9c8a9a79259ea3c31390e48331bf18`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:52 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:ead6dfd8daa4b9b6629c7f724c3a065a0434fea5b65b40a4701f8bbf68896feb in /      
# Tue, 28 Jul 2026 04:54:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:53 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:f7741ef708ecae2cf1ad4483f82e5acf389a99b77a6b6a9425eb9e5251e43acc in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:f7741ef708ecae2cf1ad4483f82e5acf389a99b77a6b6a9425eb9e5251e43acc in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:37Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:37Z" "architecture"="ppc64le" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:37Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:30:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:30:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:30:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:30:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:30:08 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:53:10 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:53:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:53:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:53:10 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:53:11 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:53:29 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:53:29 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 29 Jul 2026 18:53:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 29 Jul 2026 18:53:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:53:34 GMT
USER gradle
# Wed, 29 Jul 2026 18:53:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 29 Jul 2026 18:53:36 GMT
USER root
```

-	Layers:
	-	`sha256:8e2eeec0dafab99e35933cc122057a2e272a9accfff00ea41c91c8054ae0ac21`  
		Last Modified: Tue, 28 Jul 2026 06:11:54 GMT  
		Size: 45.1 MB (45134930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568347f481894d15447f5d2bcb61e7ae1c30fe1d301ead3a68f31b269f7bce35`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 30.1 MB (30088614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e7c7d91238d646c559985f3291ec73b16ccb9639c0afbf3c81f1450f3fc400`  
		Last Modified: Wed, 29 Jul 2026 18:30:46 GMT  
		Size: 145.8 MB (145788672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecac6bc1bc4916bbbdd971b2f4f636f69e5672fc44ace6df4a1d741fc2ad385`  
		Last Modified: Wed, 29 Jul 2026 18:30:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8cb0ca6b751d44dd64d0a866c9545f446186fa9b67d7ca087159fc7a06687f`  
		Last Modified: Wed, 29 Jul 2026 18:30:43 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c0d8e4b8da634ba00828092af6501067a3de98348b530b234d1a9bd2e2a6fb`  
		Last Modified: Wed, 29 Jul 2026 18:54:12 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c71cecdf2b25ab7bd8339303a2a670486eaa6558bc35fe0d6cf417733161fbf`  
		Last Modified: Wed, 29 Jul 2026 18:54:15 GMT  
		Size: 39.2 MB (39193840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a220ae20797defd0775bca9cc435f35064f0a5bf3dd7c70cd8bd7df5564bbe`  
		Last Modified: Wed, 29 Jul 2026 18:54:17 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3bec4832767ed89913ab2c8112c9a2ba8226b30369aa352139417ecb3e820f`  
		Last Modified: Wed, 29 Jul 2026 18:54:12 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:659d735c0c6c9439328f6eabde10976e5d9bd8095317ed91acc8cd1090607ccb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50468778ee36887c110480ead07140f93a7fcca8b083ed4216295a9496845825`

```dockerfile
```

-	Layers:
	-	`sha256:82cee53c0c688387ab3db6026cadf9fe4d102e4152beae888581bc53da79077c`  
		Last Modified: Wed, 29 Jul 2026 18:54:13 GMT  
		Size: 5.4 MB (5428557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbd469d26f30585d127965c9774c6f38dc7df0e7a450a17ec0d54d4f44af3999`  
		Last Modified: Wed, 29 Jul 2026 18:54:12 GMT  
		Size: 23.3 KB (23284 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:731e2f0e6bd35b02d402f6daac092e747d95cef7bdd8da83579d86a87faf9eb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.5 MB (380480138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09a5914589cda614bc554889e9f27d7761b30afce9168aaa4e475a634492371`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:58:50 GMT
ENV container oci
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:8635b291411015261e7e7d7c3eb67c5088d16ac1d27e1131774fe915d54adfdd in /      
# Tue, 28 Jul 2026 04:58:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:58:51 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:67cce7aa9d1677605a5b3b328cc6cfffa89c6ae79ef74d406ed0528607c612d3 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:67cce7aa9d1677605a5b3b328cc6cfffa89c6ae79ef74d406ed0528607c612d3 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:58:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:58:03Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:58:03Z" "architecture"="s390x" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:58:03Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:27:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:27:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:27:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:27:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:27:13 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:28:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:28:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:28:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:28:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:28:06 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:40:23 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:40:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:40:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:40:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:40:23 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:40:30 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:40:30 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 29 Jul 2026 18:40:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 29 Jul 2026 18:40:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:40:34 GMT
USER gradle
# Wed, 29 Jul 2026 18:40:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 29 Jul 2026 18:40:35 GMT
USER root
```

-	Layers:
	-	`sha256:c066d4e23a6e854f37804aa39b7607aa099c1a3eb2af36c7833277288db4b7cd`  
		Last Modified: Tue, 28 Jul 2026 06:11:46 GMT  
		Size: 38.8 MB (38773394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d83ae868ac5dd12bec0da0befd87a076776bc71d3da3664ec6ddec0b32ba586`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 27.7 MB (27684954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89f600c3c11843880390ead6ddb1962bb689a1209256e12feb0764465f8d962`  
		Last Modified: Wed, 29 Jul 2026 18:28:36 GMT  
		Size: 135.9 MB (135912297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328fe6c490f6011f2ebc0cef075145b4c1098fee2397a6a287fae45825b8b799`  
		Last Modified: Wed, 29 Jul 2026 18:28:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0e1e93b0e48aa16bc5ba66231f7c5a893ab80c2e5593647e88366e405b17f6`  
		Last Modified: Wed, 29 Jul 2026 18:28:33 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d5eaebf00af48a435017824c54f11c960e644abc3a5cd13e436ad4244824f2`  
		Last Modified: Wed, 29 Jul 2026 18:41:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850fb6c502ed72c6c414c93d3c91fc4453b230f81a477f285e73590afc31db08`  
		Last Modified: Wed, 29 Jul 2026 18:41:04 GMT  
		Size: 37.5 MB (37508978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe2aa6f4e9b0cd4f7293f8b59c122e5213023a571da19c95f4198a19dfe5638`  
		Last Modified: Wed, 29 Jul 2026 18:41:05 GMT  
		Size: 140.6 MB (140595972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247cfd5966d91363430a29d8b0d3b3855263a499374e5573b942740629bb685c`  
		Last Modified: Wed, 29 Jul 2026 18:41:02 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:7d655055abfd457fa0898b8a2a82dd50c37d0b6da713d89b2b209dd11e85986b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5441047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf17cf46225915183446437b68dd9112ec7524638ff06e98d6851827a76c1d2`

```dockerfile
```

-	Layers:
	-	`sha256:d584c033f29a820a65d05ad8e8632eca0ef17ff9a118e36897a68cfdae369d28`  
		Last Modified: Wed, 29 Jul 2026 18:41:03 GMT  
		Size: 5.4 MB (5417813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7339b5068561f8778e34bb8daec232928b4aa17f7ede6506c133da249824c574`  
		Last Modified: Wed, 29 Jul 2026 18:41:02 GMT  
		Size: 23.2 KB (23234 bytes)  
		MIME: application/vnd.in-toto+json
