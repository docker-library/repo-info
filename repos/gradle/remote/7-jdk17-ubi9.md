## `gradle:7-jdk17-ubi9`

```console
$ docker pull gradle@sha256:a473866fa4c41f4c4d68e4468cbb0b954fe8c886d7ed7f63b1601ec39980b867
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

### `gradle:7-jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:bd4c50079330a1d05906e156329a71ab983b6777803a2e5d4f690eb1e4eaa0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.6 MB (380644487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cb3832f30f13ec000d56a579482ea95efa8bcbcf360a6eb0136e964613e2fa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:36:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:12 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 22:37:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:37:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:37:53 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:13:00 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:13:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:13:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:13:00 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:13:00 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:13:06 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:13:06 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 23:13:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 23:13:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:13:08 GMT
USER gradle
# Wed, 09 Sep 2026 23:13:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 23:13:09 GMT
USER root
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c630fe63380927d0e7cc6d169975600e02a8cbb0df73fc20e1a5ab4516d7c84c`  
		Last Modified: Wed, 09 Sep 2026 22:36:32 GMT  
		Size: 27.7 MB (27660541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fe65311a391e7248c2120f43efcfcba23acdfa665a7719b54b4f18d4a70a5f`  
		Last Modified: Wed, 09 Sep 2026 22:38:12 GMT  
		Size: 145.8 MB (145828502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e119ae0995d4d332054f541645a328e90bb03670db875554b62547cbece89b16`  
		Last Modified: Wed, 09 Sep 2026 22:38:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f381458a0d4a268ee747d51a63f5e1c744a1f6ae998cea4b084212d5045ff91`  
		Last Modified: Wed, 09 Sep 2026 22:38:08 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e970e16d0a381a882986d8ec630f77bd6156e91ec9ab6e3a38f9c3a16b5293`  
		Last Modified: Wed, 09 Sep 2026 23:13:24 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec67b75554f119728fc2ff15190a2d637e8c8d1b13ae7f62c83b09c013fe502b`  
		Last Modified: Wed, 09 Sep 2026 23:13:26 GMT  
		Size: 37.9 MB (37915048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6c5d009f33c96dc0d38d5adbb84ba48ddb5acd30b525275e2bfd42951dc44e`  
		Last Modified: Wed, 09 Sep 2026 23:13:28 GMT  
		Size: 128.5 MB (128469421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5197ab735e6d77449f6b71a226ec7efeb2ee5ec04261bd5cd44aeb7db09099fe`  
		Last Modified: Wed, 09 Sep 2026 23:13:25 GMT  
		Size: 54.9 KB (54908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:a2e362a7d85e66b4c40d27f798d0398677a11fdada3b34d315abbd9e8c53509f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de86652f3ecffd2d7b90c497a4e135c472f91a36bce3144e287d14e6ed952dc`

```dockerfile
```

-	Layers:
	-	`sha256:70a299e5d525547f703413fd50bb3c6ad8cb0101fb3763ec08e83e5a2f7f04d1`  
		Last Modified: Wed, 09 Sep 2026 23:13:25 GMT  
		Size: 5.3 MB (5318455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e8e871153dccdf977ed3badcf45682831d79b345a71a92dbe6f308dca7e1859`  
		Last Modified: Wed, 09 Sep 2026 23:13:25 GMT  
		Size: 23.5 KB (23543 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:01f301ae2b4a63e89b474a4ce73c108bad32d59cbf19dba24e3b629fd02bca73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377295617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c787da96c1dcfa048832c107fc27c1538e8704437d44943a3afafa0d09b4400e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:33:36 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:36 GMT
COPY dir:bdf3d4ab52392fbb0b0cd322fb5ac95c784eadfe4f93f014ac96c337e0054015 in /      
# Wed, 09 Sep 2026 07:33:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:36 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:33:14Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:33:14Z" "architecture"="aarch64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:33:14Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:36:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:44 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 22:36:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:36:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:36:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:36:53 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:13:05 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:13:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:13:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:13:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:13:05 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:13:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:13:10 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 23:13:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 23:13:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:13:12 GMT
USER gradle
# Wed, 09 Sep 2026 23:13:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 23:13:13 GMT
USER root
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2c3b301f2f11a6e164c3c8569327f23fdc491fa299d8ee37eb7d0e4d747941`  
		Last Modified: Wed, 09 Sep 2026 22:37:11 GMT  
		Size: 28.1 MB (28096735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43cf508f1c3b5fd79e05aa43b75f48487a443c9bc6c3af53627dc07b04d1319b`  
		Last Modified: Wed, 09 Sep 2026 22:37:14 GMT  
		Size: 144.7 MB (144651338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd4ac54e637ec82368f1202817ff11b253c42532e2aba896fa80730971379cb`  
		Last Modified: Wed, 09 Sep 2026 22:37:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e536ffcc448f52de353c3f3b33ea93e090974cfccb448f9e3e3c845fd741107`  
		Last Modified: Wed, 09 Sep 2026 22:37:01 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba0d87eee20690f9eed909b054289f4ee8af5b8c6fb8a7ff0ce4f2d40efff51`  
		Last Modified: Wed, 09 Sep 2026 23:13:29 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4478d779269db26b1022f5239e85a222ba53c454ba0a94929ec392ff1a9446`  
		Last Modified: Wed, 09 Sep 2026 23:13:30 GMT  
		Size: 37.2 MB (37204011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e9aa13bf4cd702f9f4f880821f20675b0fc902ff4021824d7026352f1c8b4c`  
		Last Modified: Wed, 09 Sep 2026 23:13:33 GMT  
		Size: 128.5 MB (128469423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de099f0bd8ac3598ff621aea9ddcab97fc6fbcc554e9960010b592f3fb2f9068`  
		Last Modified: Wed, 09 Sep 2026 23:13:29 GMT  
		Size: 59.5 KB (59531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:12e5c31190a74f8a4c4c61ac8f3a8771f014878c23a6bfc56f5c55f532ae3e95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6583fb413cb0549eac22cdee9aea6afc98d97efc08716a5e4f771eaae2986e51`

```dockerfile
```

-	Layers:
	-	`sha256:fd6ebe795841184deac70886ba447933a9f917a4d086dff825b85788840bdd45`  
		Last Modified: Wed, 09 Sep 2026 23:13:29 GMT  
		Size: 5.3 MB (5316079 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16977270ce40ee8cba9933b84c43d634becbfaed051a8ce0b41b6ae553ed3e77`  
		Last Modified: Wed, 09 Sep 2026 23:13:29 GMT  
		Size: 23.7 KB (23716 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:0e7f21968a61db7a14f57f7a94fe67c75a273b211752a70e9af635aa5825c159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.6 MB (388600220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936df69d4f0a6e5335dc4de051709fc42feab9d4728b74132f763daeed47e720`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:36:05 GMT
ENV container oci
# Wed, 09 Sep 2026 07:36:06 GMT
COPY dir:87006a9d434ed56326e63cb13a95fb965f1009aa286127a16236d2e78bf444bc in /      
# Wed, 09 Sep 2026 07:36:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:36:06 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:36:06 GMT
COPY dir:d2154e92d6d4865d071c2511da49a3e8407e6370ec6d6784b1b0ea294b2886b6 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:36:06 GMT
COPY dir:d2154e92d6d4865d071c2511da49a3e8407e6370ec6d6784b1b0ea294b2886b6 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:36:07 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:35:43Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:35:43Z" "architecture"="ppc64le" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:35:43Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:35:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:35:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:35:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 22:40:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:40:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:40:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:40:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:40:27 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:14:05 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:14:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:14:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:14:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:14:05 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:18:38 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:18:38 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 23:18:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 23:18:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:18:47 GMT
USER gradle
# Wed, 09 Sep 2026 23:18:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 23:18:49 GMT
USER root
```

-	Layers:
	-	`sha256:7312dcda81a30bbeddf774f4b20cf3018eea22ed1ca50d2869baa95676ad2ed2`  
		Last Modified: Wed, 09 Sep 2026 12:16:54 GMT  
		Size: 45.1 MB (45127848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe941d050390e204ef72d63ba762e0dc6f268703984fb62153db0658ee5189a`  
		Last Modified: Wed, 09 Sep 2026 22:36:56 GMT  
		Size: 30.1 MB (30081118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:740318a9d444e99dc40c87afa3a55fd17edf3c8600cb8d2729ac7593e430c303`  
		Last Modified: Wed, 09 Sep 2026 22:41:08 GMT  
		Size: 145.7 MB (145691774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb47223907f07c912e8d410aae3ec0103f7a41c3ed0f0f008a155fa9c4a33fc4`  
		Last Modified: Wed, 09 Sep 2026 22:41:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab6bd194669c14305ec7ecd89cd11d0149600b327169b57010d080d14cc6f99`  
		Last Modified: Wed, 09 Sep 2026 22:41:04 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e7158c23ed2754cc9cbbf1cfc16c5ee8316526df51cbf05f09a114fa4a4797`  
		Last Modified: Wed, 09 Sep 2026 23:15:24 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49a68d886c3b6476247b22731c7c64ca4d95cb4fe526c1e4a450ff7c34c6012`  
		Last Modified: Wed, 09 Sep 2026 23:19:30 GMT  
		Size: 39.2 MB (39190736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0e0c832453eface6b2d10ef5379c48ee1cd1bafc2362e393a1f0f0c7765fbc`  
		Last Modified: Wed, 09 Sep 2026 23:19:31 GMT  
		Size: 128.5 MB (128469426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0aeb2c95664f2e081a8e5b9e8a1dbcdfde6d6d8ee6f18de171d61416a12c994`  
		Last Modified: Wed, 09 Sep 2026 23:19:28 GMT  
		Size: 35.0 KB (35008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c98024efdf849fee0316956aa46fef3cc785e8f2283e5febd0ff30ab21edd49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4d07257779d42a3e4538414e5e8b4fb8743c40677473a69558d4918eccfa8f`

```dockerfile
```

-	Layers:
	-	`sha256:7165a8670f4bf26a2d779c54051c00577262ace9a02520c59e61ed49b9cc53e4`  
		Last Modified: Wed, 09 Sep 2026 23:19:28 GMT  
		Size: 5.3 MB (5314030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5426d5dc4894e6fd5e7de9826b2c4a82522e68221a7459f13e1753b2a913b22b`  
		Last Modified: Wed, 09 Sep 2026 23:19:27 GMT  
		Size: 23.6 KB (23640 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:62c9364c4badc9cf5b9aabb581bc1f6c01003152d4b658d367dcd70a689bba5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.4 MB (368377356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5c8e03b6e2123134c18ad8aaa7bab9e358fd2a498192e71a461df1bb21e757`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:57:56 GMT
ENV container oci
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:297a645d2039f9d861170b120c1e35595311fb8e483281efe2ca89505fd40800 in /      
# Mon, 31 Aug 2026 08:57:57 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:57:57 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:087826d4c6d83860f2036bd66ca8f0f80382cdb8e2cd82a570728bd57e6592b0 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:087826d4c6d83860f2036bd66ca8f0f80382cdb8e2cd82a570728bd57e6592b0 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:57:57 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:57:16Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:57:16Z" "architecture"="s390x" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:57:16Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:02:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:43 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Mon, 31 Aug 2026 19:03:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:03:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:03:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:03:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:03:11 GMT
CMD ["jshell"]
# Mon, 31 Aug 2026 19:53:30 GMT
CMD ["gradle"]
# Mon, 31 Aug 2026 19:53:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 31 Aug 2026 19:53:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 31 Aug 2026 19:53:30 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 31 Aug 2026 19:53:30 GMT
WORKDIR /home/gradle
# Mon, 31 Aug 2026 19:55:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 31 Aug 2026 19:55:33 GMT
ENV GRADLE_VERSION=7.6.6
# Mon, 31 Aug 2026 19:55:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Mon, 31 Aug 2026 19:55:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 31 Aug 2026 19:55:37 GMT
USER gradle
# Mon, 31 Aug 2026 19:55:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Mon, 31 Aug 2026 19:55:38 GMT
USER root
```

-	Layers:
	-	`sha256:165a6faa80bf6d6f276863c223e4056437c02bb8c312f23f942108f889803590`  
		Last Modified: Mon, 31 Aug 2026 12:14:05 GMT  
		Size: 38.8 MB (38787783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b8579b8b5396cf950033a42efa18b67d910cdcf9c4757de03b8d5141eaa288`  
		Last Modified: Mon, 31 Aug 2026 19:03:03 GMT  
		Size: 27.7 MB (27686752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e034a544358d6a7afd418ecd989910ad5ca6d9c8e9c726031008a4091a35b23f`  
		Last Modified: Mon, 31 Aug 2026 19:03:36 GMT  
		Size: 135.9 MB (135876022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236734e177e8b459c6be7b5dd89ffe079e08a9f93f1b980671ce86cdde03c68d`  
		Last Modified: Mon, 31 Aug 2026 19:03:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ae8c85d9fdc7ab956b2962b4bad094e182eaadbc4f398f54aa76bd3b1ddc97`  
		Last Modified: Mon, 31 Aug 2026 19:03:34 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3d04b6fc4be7102fb967021c806dc87521acf826bdeb923eddac5e03a0de05`  
		Last Modified: Mon, 31 Aug 2026 19:54:05 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd41a33df5b6ba45e56caf9d7ee1170ba2c521e35a6f67e1c2cffde7157a5f9a`  
		Last Modified: Mon, 31 Aug 2026 19:56:03 GMT  
		Size: 37.5 MB (37518053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acfe857580192beb5cf3ac0b46818ba365f1b88afada895971d54541633dcb7`  
		Last Modified: Mon, 31 Aug 2026 19:56:04 GMT  
		Size: 128.5 MB (128469425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd079025883d9f601453012c82ff77403e444c2582994491075b42b0d1bf5be2`  
		Last Modified: Mon, 31 Aug 2026 19:56:02 GMT  
		Size: 35.0 KB (35010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:8c84c3c4c29c85aeadf1f32468af9e24a9ba85e195f53cc4296a8c295a77a3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5326845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c015e48346b144f87b617d4d8998c3e288613802e44d89dd9ae0cd782a73b3`

```dockerfile
```

-	Layers:
	-	`sha256:be1e600987dcf8871b990c79a7fb78dad51378095413e86414be01259a96474f`  
		Last Modified: Mon, 31 Aug 2026 19:56:02 GMT  
		Size: 5.3 MB (5303266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad6601cf1e24337945e691000c0ffca0f6d661ecee3407fb4e8dd6a597b93f70`  
		Last Modified: Mon, 31 Aug 2026 19:56:02 GMT  
		Size: 23.6 KB (23579 bytes)  
		MIME: application/vnd.in-toto+json
