## `gradle:jdk21-ubi9`

```console
$ docker pull gradle@sha256:370424e78442cb5e83bb282ca16fd552679e97e334e9b7a1d2a5083d8eb4b2a9
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

### `gradle:jdk21-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:e885baa1c8c346a9c82ab99fc04cccfe2c9c0c579492085dd091f5fd2068bbcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.8 MB (415797878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44441e944b42c674bb0cab9171af150cbe59256290f5ea0bab027987c1320e19`
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
# Wed, 09 Sep 2026 22:38:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:38:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:38:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:38:14 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:38:14 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 22:38:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:38:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:38:23 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:12:38 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:12:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:12:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:12:38 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:12:38 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:12:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:12:43 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 23:12:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 23:12:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:12:46 GMT
USER gradle
# Wed, 09 Sep 2026 23:12:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 23:12:46 GMT
USER root
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b7f3fad70921b0aec82da41a4c287abde97e0004ed5df965f9ed0e2a30c038`  
		Last Modified: Wed, 09 Sep 2026 22:38:41 GMT  
		Size: 27.7 MB (27660643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620a1010744ed396ab46f7e148d79a9ccfc16500f7f09a8e9fb6624940c24692`  
		Last Modified: Wed, 09 Sep 2026 22:38:44 GMT  
		Size: 158.1 MB (158126350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0b09f9e65401b75e1bc113362743378252630456290ff38fb28c49b1d8b8de`  
		Last Modified: Wed, 09 Sep 2026 22:38:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab499b34560aac279830de104b3dcdf0324086f12e669282db6d6335b6d5dee`  
		Last Modified: Wed, 09 Sep 2026 22:38:40 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddefe60bffa2daf11112b07c4422c159a2f887c28db6bf7e267895f5d825956c`  
		Last Modified: Wed, 09 Sep 2026 23:13:02 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1905855686e8efef6cbfe1bd828ba1c1e82406480b1cc9b58ff1b56089cbce67`  
		Last Modified: Wed, 09 Sep 2026 23:13:04 GMT  
		Size: 37.9 MB (37915231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98603b7e0d83f0ed9b1e5562486517924dbcfb71cd2248c2319d3d072c6088c6`  
		Last Modified: Wed, 09 Sep 2026 23:13:06 GMT  
		Size: 151.4 MB (151353985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b3a3e82224b7e5e2c9bb4ba3c5276ac176e9fbb1692dc624065970290a7ae1`  
		Last Modified: Wed, 09 Sep 2026 23:13:03 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:3213cf1349a2b412fad77123ae63984acb82897cebd7d78f3a405c3e1e6892ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5467477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161107717b8d86066911fdfe4a1e4600aa7d6ef654d31a06a5da855bd6b6b528`

```dockerfile
```

-	Layers:
	-	`sha256:5c142eaf5f597b4e0f99aec33061c073df8a7787ae6e301a4a7f9f6733b5e16a`  
		Last Modified: Wed, 09 Sep 2026 23:13:03 GMT  
		Size: 5.4 MB (5443987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30aca7accfa02ab93004e450c4c9f956b918d3829f3970eda34f7d60a8e64a49`  
		Last Modified: Wed, 09 Sep 2026 23:13:02 GMT  
		Size: 23.5 KB (23490 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c3822708253f554e000c8bed89aabdc93745130999f1308e2dd8ea4ca98120b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 MB (411904687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc2840d7c1a5cc34f0af17593823e3107da5e3639cfba741b3aecac2342d8dd`
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
# Wed, 09 Sep 2026 22:37:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:37:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:37:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:37:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:37:11 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 22:37:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:37:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:37:20 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:12:10 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:12:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:12:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:12:10 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:12:10 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:12:17 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:12:17 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 23:12:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 23:12:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:12:21 GMT
USER gradle
# Wed, 09 Sep 2026 23:12:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 23:12:21 GMT
USER root
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d115acf69dde18c2bbcbd29c132891719a9fa27be6d96b2bd6e28058812eca69`  
		Last Modified: Wed, 09 Sep 2026 22:37:39 GMT  
		Size: 28.1 MB (28096809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e923b04c5adec8eb7a17fbc7b73c0cae1ba0569e9e13f8cdde1c2ac80706e9c`  
		Last Modified: Wed, 09 Sep 2026 22:37:41 GMT  
		Size: 156.4 MB (156405799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13931818ce98670b4d43306727e83f358795d761b98eac7d7aa9219ad89874e8`  
		Last Modified: Wed, 09 Sep 2026 22:37:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b94e2e9116a649557bd98755a84bf974258e1fb341ac0690647b8639a8baff`  
		Last Modified: Wed, 09 Sep 2026 22:37:38 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d37306d67391b6fde80c65e65580a09d555a188450a8c4d8dfd377be02ea04`  
		Last Modified: Wed, 09 Sep 2026 23:12:39 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428caf4d2c26a6799d4c9af77a61397508bab401967b82aaf3a4657cbb93935e`  
		Last Modified: Wed, 09 Sep 2026 23:12:41 GMT  
		Size: 37.2 MB (37204172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76bf9e822c20b19b6b3df925b44dab609cdecf6903354697d07d0890fdcb62c`  
		Last Modified: Wed, 09 Sep 2026 23:12:44 GMT  
		Size: 151.4 MB (151353984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b092aa684d47dc0ab1a22715216f931f172dfae3e78f4c11cf4b050470f94c2`  
		Last Modified: Wed, 09 Sep 2026 23:12:39 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:3da1e9e5f0e8fe7d22c298e4df38f42bd377482de6b724767a860240ec299e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae0a6b39e4912d4151d053711db5a5b892f832207dc28ee7e4562b1cd6d2728`

```dockerfile
```

-	Layers:
	-	`sha256:9bc2d0b96f0564664c1b8b45bd748681390d64777a50b3afdd350c76f31216f8`  
		Last Modified: Wed, 09 Sep 2026 23:12:39 GMT  
		Size: 5.4 MB (5441599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60ffcb6f9b6449ad03411366338f881ce6afb57b1fb9d39c384c8a7282d32df6`  
		Last Modified: Wed, 09 Sep 2026 23:12:39 GMT  
		Size: 23.7 KB (23651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e681f0c6f0cfa454e08b7700b53fd38234c40f146ea698db43dc9723d3aef1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.0 MB (424039647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae9c1e6207f19f8dd71517d890bfc968b98f1f21c376730af1123aaebf766da`
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
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 22:42:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:43:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:43:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:43:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:43:03 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 23:12:30 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 23:12:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 23:12:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 23:12:30 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 23:12:32 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 23:13:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 09 Sep 2026 23:13:01 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 23:13:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 23:13:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 23:13:10 GMT
USER gradle
# Wed, 09 Sep 2026 23:13:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 23:13:12 GMT
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
	-	`sha256:f8921e1ffd46f0ff5714bb940d268121d6a82b7406723e96d02d25b315961fa1`  
		Last Modified: Wed, 09 Sep 2026 22:43:47 GMT  
		Size: 158.3 MB (158280947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10179220ca0a9f777bb9caed59805de5d1fd6314c73e274867827071f9525371`  
		Last Modified: Wed, 09 Sep 2026 22:43:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0abc099a09150baca2e8e2291a1b1ec72647ee139300c7a0e354f4d8bc719ca`  
		Last Modified: Wed, 09 Sep 2026 22:43:43 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb7a33ed33dfc64a2d18d1247a6db152b5c0f1bb98d08bcc346a769ad83f8404`  
		Last Modified: Wed, 09 Sep 2026 23:13:47 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874b28ba112d6542b0dd57d4397be71bf39aeeaffe6c72644bbe97db2eeec9e1`  
		Last Modified: Wed, 09 Sep 2026 23:13:49 GMT  
		Size: 39.2 MB (39191059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9a4d0881126a6a922aa55aae69c312c43a91e16be1ec7add2d80875c5628d6`  
		Last Modified: Wed, 09 Sep 2026 23:13:51 GMT  
		Size: 151.4 MB (151353986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f466ee37a1bde1be7fd6ceadc962b75cc2024feeb0c613e0cf2bb3a431ae5`  
		Last Modified: Wed, 09 Sep 2026 23:13:47 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:9a99121bac3a737bde0dcf62c0d3df67b511147c7d875af25eef940ee9640479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5463140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f870797ee3451b5be2d15b46a425a457f14475b82e4edbef2eb06a6a7aa704`

```dockerfile
```

-	Layers:
	-	`sha256:4512c109b0a4f6eb3c950e09ca6ac7e5a835735245a071364dcd5990fd8f98ab`  
		Last Modified: Wed, 09 Sep 2026 23:13:47 GMT  
		Size: 5.4 MB (5439560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b45fa6ee1d3356eb1da7f545c7b0c70fd3c27fd6b42d3c488e2d5b4128968921`  
		Last Modified: Wed, 09 Sep 2026 23:13:46 GMT  
		Size: 23.6 KB (23580 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:7423d9032feb80326e20b0d43d43a9a805d7199dda40bb079134283e7b6bd3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.7 MB (402697890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39088a5e111e8017f0f9ab992687d65c494d09bb7edf54a6c24339da229dbaf9`
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
# Mon, 31 Aug 2026 19:02:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:11 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Mon, 31 Aug 2026 19:03:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:03:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:03:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:03:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:03:57 GMT
CMD ["jshell"]
# Mon, 31 Aug 2026 19:52:26 GMT
CMD ["gradle"]
# Mon, 31 Aug 2026 19:52:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 31 Aug 2026 19:52:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 31 Aug 2026 19:52:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 31 Aug 2026 19:52:26 GMT
WORKDIR /home/gradle
# Mon, 31 Aug 2026 19:52:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 31 Aug 2026 19:52:36 GMT
ENV GRADLE_VERSION=9.7.1
# Mon, 31 Aug 2026 19:52:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Mon, 31 Aug 2026 19:52:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 31 Aug 2026 19:52:40 GMT
USER gradle
# Mon, 31 Aug 2026 19:52:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 31 Aug 2026 19:52:41 GMT
USER root
```

-	Layers:
	-	`sha256:165a6faa80bf6d6f276863c223e4056437c02bb8c312f23f942108f889803590`  
		Last Modified: Mon, 31 Aug 2026 12:14:05 GMT  
		Size: 38.8 MB (38787783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ca3277998f5267c2ef7fb0a2eda07c5ffd67db48a0af913b4d5f9df289ad4d`  
		Last Modified: Mon, 31 Aug 2026 19:02:45 GMT  
		Size: 27.7 MB (27686915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88aa90bb1ceb4e256916a2b9f875de5684d0f0192394d67f9e9878fda1159f60`  
		Last Modified: Mon, 31 Aug 2026 19:04:25 GMT  
		Size: 147.3 MB (147346411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427bceff86045f64e2892c6f0cc804d668c9123d49c094821e795567e5532413`  
		Last Modified: Mon, 31 Aug 2026 19:04:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed4c07bec7e1f25e7094653b49919950aa4bfe076730e7c251378f6215b2fbe`  
		Last Modified: Mon, 31 Aug 2026 19:04:21 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22eb2e40a1908130e1bd408f94c5550bd93e6a61c3ae3d09b6a033945de9bd28`  
		Last Modified: Mon, 31 Aug 2026 19:53:09 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9c41198b7917775bb68b662c12c19bb5bfff1572fc6f9d743ca20cfdfaf3bd`  
		Last Modified: Mon, 31 Aug 2026 19:53:10 GMT  
		Size: 37.5 MB (37518074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc277d932922c09829c5c01119d472ecb8aa87f285471b59d34c66c8d314fd17`  
		Last Modified: Mon, 31 Aug 2026 19:53:12 GMT  
		Size: 151.4 MB (151354027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf9be6ca1e194c5540e7323c3b6f9d9c8dd9836636e4cc5029baa5704a1385a`  
		Last Modified: Mon, 31 Aug 2026 19:53:09 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:ec6531c60d32012c0c30676594d2dc5f8c42fa605195192324e83dbc5f4a8a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4912964512346c97a00ea0560f5558f4809bf0d446431ceebe489a4647e85200`

```dockerfile
```

-	Layers:
	-	`sha256:2106d7d72a380cd7ec04812296d80b54a1bd5a76b868118e64fc483b2e447cbc`  
		Last Modified: Mon, 31 Aug 2026 19:53:09 GMT  
		Size: 5.4 MB (5428798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3880a839c50342ec0ede574b93d895995db017d492633b204cd82fc7c240a0`  
		Last Modified: Mon, 31 Aug 2026 19:53:09 GMT  
		Size: 23.5 KB (23524 bytes)  
		MIME: application/vnd.in-toto+json
