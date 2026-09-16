## `gradle:jdk21-ubi9`

```console
$ docker pull gradle@sha256:0e5bbc648fa336960e68ce65678f11588c061b56ad839309aa428a216b89857f
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
$ docker pull gradle@sha256:4c32f6d93bd094baf6bf2968e9389f5307f8da4a04c784e1db7ccc7fe09c1535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.3 MB (416269308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:715aa36fbb0ddc568e197a00d3704e3e16591c5b4fa8becfe41cd4dccbfbd816`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:53:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:53:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:53:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:53:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:53:20 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Tue, 15 Sep 2026 22:53:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:53:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:53:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:53:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:53:28 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:15:17 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 23:15:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 23:15:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 23:15:17 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 23:15:17 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 23:15:23 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 15 Sep 2026 23:15:23 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 23:15:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 23:15:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 23:15:26 GMT
USER gradle
# Tue, 15 Sep 2026 23:15:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 23:15:26 GMT
USER root
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78534d245b9a58cf1221b5ac37aac30038fed28d6bf40cad71e1e7854885edc7`  
		Last Modified: Tue, 15 Sep 2026 22:53:45 GMT  
		Size: 13.5 MB (13542219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1acc5313bce5a2a4fd219d8eb662ebd9f00a20d7e6782c119b3f013f1c3437`  
		Last Modified: Tue, 15 Sep 2026 22:53:48 GMT  
		Size: 158.1 MB (158126356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e407cdff73f04d38434883b79f60c39a84a2dbf8e85270bee2adea7506fe1e2`  
		Last Modified: Tue, 15 Sep 2026 22:53:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6777b1ab580b9b82db10c2286485bb7b2adaf76a993b6336be7f986c0069d5e`  
		Last Modified: Tue, 15 Sep 2026 22:53:44 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60c1b64a1251813ca4345cfcc3ee62452af130a67189217f679a8a44d14f2a2`  
		Last Modified: Tue, 15 Sep 2026 23:15:44 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5009a9980478ce3e95fbc864fed0be3f67ed3acf8206482f1eab429f747e40`  
		Last Modified: Tue, 15 Sep 2026 23:15:46 GMT  
		Size: 52.4 MB (52422327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177bce1b4c8f1a67a2989a4ce5da9c84063110c99987aa46d6ddd4b95f5d07cc`  
		Last Modified: Tue, 15 Sep 2026 23:15:48 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e51da7e84cf9849172bbb5c68c26157c1678fdc9f1838695886378828a62400`  
		Last Modified: Tue, 15 Sep 2026 23:15:43 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:3d9479f9fcf082365da717695ec62d3c03736c9088ec11780a350982f547349f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5469629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45213f69a06b7b1f60560112107a6c33307d10fc4b1b6d8080531779db4ee00`

```dockerfile
```

-	Layers:
	-	`sha256:747919e8eefb6093e7b01eb91c671894259d2b21a33a3f95f56ef10bdcbbd5bf`  
		Last Modified: Tue, 15 Sep 2026 23:15:44 GMT  
		Size: 5.4 MB (5446103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feb0b411c1d374b6280642dfd8b8d32b0e9c0c29f23e5cdda7e03e004b2ea952`  
		Last Modified: Tue, 15 Sep 2026 23:15:43 GMT  
		Size: 23.5 KB (23526 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bf86e89cdd3f2e6d5db850b23ca26ab21eb999fd72be71ccb4734b5bb082a577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 MB (411890253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e3411f00d2c32878e41f8bdeb93c96b88bcb22e8c9a67ba6db9c586f12c847`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:42:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:42:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:42:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:42:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:42:32 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Tue, 15 Sep 2026 22:42:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 15 Sep 2026 22:42:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:42:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:42:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 22:42:40 GMT
CMD ["jshell"]
# Tue, 15 Sep 2026 23:13:39 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 23:13:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 23:13:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 23:13:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 23:13:39 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 23:13:45 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 15 Sep 2026 23:13:45 GMT
ENV GRADLE_VERSION=9.7.1
# Tue, 15 Sep 2026 23:13:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Tue, 15 Sep 2026 23:13:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 23:13:48 GMT
USER gradle
# Tue, 15 Sep 2026 23:13:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 23:13:48 GMT
USER root
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a70d36eeb7b90c44722e3b43d8722e058263677ee7bdaaaa1caaab5ea7c5362`  
		Last Modified: Tue, 15 Sep 2026 22:42:58 GMT  
		Size: 28.1 MB (28104335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9617fa58304b207496395a723a196a4fa403464f137d7a466c1ea251a07e25`  
		Last Modified: Tue, 15 Sep 2026 22:43:01 GMT  
		Size: 156.4 MB (156405777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043e85409d3802294e204789138f57cf8018fafc2866edb7cca4cf4724a5d457`  
		Last Modified: Tue, 15 Sep 2026 22:42:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cf7b6757bc832c0667db172412f2a213e0413c60ddf6e2d6997113707963c9`  
		Last Modified: Tue, 15 Sep 2026 22:42:57 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be0391e72aa79bc985a20fd44e039219a769ba1779b6f2fb893b5c231fec812`  
		Last Modified: Tue, 15 Sep 2026 23:14:06 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34f6ab2e160b1f903e068fc03b8482663b5c00e61d11346e7fdb965e74e5302`  
		Last Modified: Tue, 15 Sep 2026 23:14:08 GMT  
		Size: 37.2 MB (37193007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a928a20b878718c88f86ac3c8d5525b8216d93be95a1e3a7b2a81c9afa05595`  
		Last Modified: Tue, 15 Sep 2026 23:14:10 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdea09f0ba82659826f8063c0c8b775d032fcd602aa51b24dd0a1b5ad16220e`  
		Last Modified: Tue, 15 Sep 2026 23:14:06 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:e763cbe84563984a829a229c1f41628e19512758fe1834ad94044a624c97e3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f47e73fce06a23f3a6bbf65b30a93c96326b58d0e4a6065e6b680213dfefcb3`

```dockerfile
```

-	Layers:
	-	`sha256:7e064420d4e4bb60a05f909f96cce92b84501044f2599755381e1bee33d358b1`  
		Last Modified: Tue, 15 Sep 2026 23:14:06 GMT  
		Size: 5.4 MB (5441427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b0a8b21085e2fae91898e5ae471ae66818813b07ab81f84a82e7e6670be9548`  
		Last Modified: Tue, 15 Sep 2026 23:14:06 GMT  
		Size: 23.7 KB (23651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:18aab294ef3314a9d143c2235e29e81a34dcb3a77b86200c094870735a7829e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.4 MB (424449497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:762ac46716c84ae3f865b592dd426fc2013357c5edc53e3e3728f897f1362d7c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:31:50 GMT
ENV container oci
# Tue, 15 Sep 2026 08:31:51 GMT
COPY dir:cad970baf6a9fa261147b25f68eb2c5a500697da588678abaf0823b4a5b75b60 in /      
# Tue, 15 Sep 2026 08:31:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:31:51 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:31:51 GMT
COPY dir:ef2f481d7d25052ed8546afbb5be0da6de6ea92c41275fc8d7958f3aedb10e8c in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:31:51 GMT
COPY dir:ef2f481d7d25052ed8546afbb5be0da6de6ea92c41275fc8d7958f3aedb10e8c in /root/buildinfo/      
# Tue, 15 Sep 2026 08:31:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:29Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:29Z" "architecture"="ppc64le" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:29Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Wed, 16 Sep 2026 01:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 01:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 01:51:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 01:51:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 16 Sep 2026 01:51:57 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 16 Sep 2026 01:58:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 16 Sep 2026 01:58:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 01:58:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 01:58:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 01:58:10 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 06:02:11 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 06:02:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 06:02:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 06:02:11 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 06:02:12 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 06:02:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 16 Sep 2026 06:02:33 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 06:02:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 06:02:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 06:02:37 GMT
USER gradle
# Wed, 16 Sep 2026 06:02:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 06:02:39 GMT
USER root
```

-	Layers:
	-	`sha256:b831fe6d9853684ba812bb27d96505c178ad97436632824abc653575dd7c0323`  
		Last Modified: Tue, 15 Sep 2026 12:15:34 GMT  
		Size: 45.1 MB (45083725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10864fa08bbf30cfb262e5b4fe65eace8d03234d29249d0bb54275b49273b004`  
		Last Modified: Wed, 16 Sep 2026 01:52:35 GMT  
		Size: 15.1 MB (15147775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf7defb10bbb44b1f7c834cb78506ecff4fea3ebc95fab006f581b5969d55bb`  
		Last Modified: Wed, 16 Sep 2026 01:58:48 GMT  
		Size: 158.3 MB (158280925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8cdda4c54682f2e559ad0843f96eeb088b47d393e5ecf38db8ca18f5b4afe2`  
		Last Modified: Wed, 16 Sep 2026 01:58:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728237da40f59bef10a454b2e5f809f92ba932ce2b0e86c5bde8456af7854e07`  
		Last Modified: Wed, 16 Sep 2026 01:58:45 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f022e1a8316e359fcc1dd4c05c5f8955bf78f910bb8d18c02ddd53bbe37e2ac`  
		Last Modified: Wed, 16 Sep 2026 06:03:25 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0297f2158165626a0df8f9bb6ff69ad114bcf8ef86ce67343741768c9f611bad`  
		Last Modified: Wed, 16 Sep 2026 06:03:27 GMT  
		Size: 54.6 MB (54578627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df599622ef0a4356cb78444ea2f1ee9bf41fe97e7e7b464054072a1e4d96e781`  
		Last Modified: Wed, 16 Sep 2026 06:03:29 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b8dbab70ed1ccfbdf7b04467dc5828259e3e12ad556a491cd2901decb2b8de`  
		Last Modified: Wed, 16 Sep 2026 06:03:25 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:63812af09082d03900c7f402949017cf187b056b70bdcab835e4d6ea5e139b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d47d6cafabb0a43ae924cdeae53529325cd11f5040b3346131517a9f8228f228`

```dockerfile
```

-	Layers:
	-	`sha256:505a654aefa6898af75a9181621e169f55f078971891d261f2a8912b2b99a06b`  
		Last Modified: Wed, 16 Sep 2026 06:03:25 GMT  
		Size: 5.4 MB (5441676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc64061fe5c35a504bdb8b7e132601d4a70e26b01936f9d5d105c57aa206aa17`  
		Last Modified: Wed, 16 Sep 2026 06:03:24 GMT  
		Size: 23.6 KB (23579 bytes)  
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
