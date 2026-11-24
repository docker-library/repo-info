## `gradle:jdk11-ubi`

```console
$ docker pull gradle@sha256:883b518f5b5d73501016dabbe875c655cfff6cf4c8f18d6962df13e8ec001644
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

### `gradle:jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:48922ba1d7f570539dde16b1541cc5b74ece6cf9446c349ca8ed9836815ff193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.2 MB (388206388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6c389e78bf82666ab82e49895258fca5e65d1e80269c1a7955f8b6c5bd4552`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:07:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:07:31 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:31 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 23 Nov 2026 22:08:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:08:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:04 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:09:51 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:09:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:09:51 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:09:51 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:09:51 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:09:57 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:09:57 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 23:09:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 23:10:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:10:00 GMT
USER gradle
# Mon, 23 Nov 2026 23:10:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:10:00 GMT
USER root
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b048308ac551bb48e9eaff8540107732b808d329e618ba4e1ada5e6b71aaff`  
		Last Modified: Mon, 23 Nov 2026 22:07:47 GMT  
		Size: 27.7 MB (27660102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acdd3676fa007d300c54bb1442306ce5425fa442de56052ed5801820bb30aab`  
		Last Modified: Mon, 23 Nov 2026 22:08:22 GMT  
		Size: 142.4 MB (142377895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840fc67509880f82295959acf5957652f124a73111c1d43e2f0d050e943b63fa`  
		Last Modified: Mon, 23 Nov 2026 22:08:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1484903ac1d3c0d7f14a23e41098eeea18755fce039564331307876be9bf562`  
		Last Modified: Mon, 23 Nov 2026 22:08:11 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2425e7d196e9a1514a7cb0c461a55756813c8abb7f4df473202f6a475985d9e8`  
		Last Modified: Mon, 23 Nov 2026 23:10:16 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562b0be2261d9b5125e2c5544a5d8547ac3ba6a359121510b77764ea0df66311`  
		Last Modified: Mon, 23 Nov 2026 23:10:18 GMT  
		Size: 38.0 MB (37962983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efe4eba2d4f885f9d8c32ef30f2736f7cc74f29805be0421c1e7f19915ee1c8`  
		Last Modified: Mon, 23 Nov 2026 23:10:20 GMT  
		Size: 139.5 MB (139499319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8189e9664229a23d7302fea3c2802c082685753892cc3ad7d311a37c36b1b5`  
		Last Modified: Mon, 23 Nov 2026 23:10:16 GMT  
		Size: 54.9 KB (54896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:48e9cb58b7ab4db327072e41d3c4da8a07fefbf3e4287af485dcad1fa3f8c100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5436033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58d707eca08bd69b04c5dc6bd4c4ec0f298f68b333b1877de22465faa4fe223`

```dockerfile
```

-	Layers:
	-	`sha256:7bca644fcd3b58e9fa989a24c6abf466760028e2922d930ebcd79740ce5614e1`  
		Last Modified: Mon, 23 Nov 2026 23:10:16 GMT  
		Size: 5.4 MB (5411580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5217b7571e8f910d5d140a4ece081e0aba20d7ca35ab7fddebf5217a6ebbd42a`  
		Last Modified: Mon, 23 Nov 2026 23:10:16 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a8be6da320e5ae83a861713ea302a62ee8250baf83413c9bcc329870b087293d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.7 MB (382666910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579dd01e7e9a0f2631b838dcf462022f79d150826578c3948855868e424dd9ab`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:12:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:12:47 GMT
ENV container oci
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:2777349c454497d0bc88142806b0acc7931a2a02082de3b6e563fd8f4b29edfa in /      
# Fri, 20 Nov 2026 18:12:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:12:49 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:12:49 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
COPY dir:d1ad60195b09061439df8466db67c1762e03297f9d39d2253d60653440d2091b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:12:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:12:15Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:12:15Z" "architecture"="aarch64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:12:15Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:07:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:07:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:07:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:07:07 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 23 Nov 2026 22:07:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:07:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:07:15 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:09:22 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:09:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:09:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:09:22 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:09:22 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:09:28 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:09:28 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 23:09:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 23:09:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:09:33 GMT
USER gradle
# Mon, 23 Nov 2026 23:09:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:09:33 GMT
USER root
```

-	Layers:
	-	`sha256:aba77be659b3ca4c2aca19e9a0e50914427b3b809b11dc864d16e2377d40e17a`  
		Last Modified: Fri, 20 Nov 2026 19:55:56 GMT  
		Size: 38.7 MB (38704070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37cc0ef3f27e3674ccd267747535518c1909ee1d6ae60da3a9124d5d4789cab`  
		Last Modified: Mon, 23 Nov 2026 22:07:32 GMT  
		Size: 28.1 MB (28092029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd7ba09a4b34e65144c8c81d1548834f993a04270847312834fec7784b82100`  
		Last Modified: Mon, 23 Nov 2026 22:07:34 GMT  
		Size: 139.1 MB (139080727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0c4526bd71ec9aa2c026d7fcfc2fad1ca5beeac986a1e82e21e807d2407466`  
		Last Modified: Mon, 23 Nov 2026 22:07:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8cad056a6727d984a7123003cd984a2e9f61d164865ad9ce13df7910de9d2f`  
		Last Modified: Mon, 23 Nov 2026 22:07:22 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d6e086ec267af160d05b43906894528aa1a9d7ba5e3c89a66e4d4f05dff21f`  
		Last Modified: Mon, 23 Nov 2026 23:09:50 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0aa706a2cabedd341ec98ec08c38f4cb26edafd126f123a4e2499cc18e42707`  
		Last Modified: Mon, 23 Nov 2026 23:09:51 GMT  
		Size: 37.2 MB (37226902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:951f66113e7d990dbb95aab56a8c551df91cd9c057422aa673d8dce7768a377b`  
		Last Modified: Mon, 23 Nov 2026 23:09:53 GMT  
		Size: 139.5 MB (139499312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d528b3b2c9003b8fd00f70cdbcb902477a435fbccd8b0bc3e4d4d8b63d470b`  
		Last Modified: Mon, 23 Nov 2026 23:09:50 GMT  
		Size: 59.5 KB (59522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:79f63d39b543a445c4d087eac3c3ee9fbad09b09fe013a34276d1ae4a6312e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5434497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c55e6079c9bd3c70e9d0a4c61899ae7c5f7c16ba95895e9017374a214f8fb1`

```dockerfile
```

-	Layers:
	-	`sha256:7dba65341a3c84d0c50896c9f00e711038dc20a9eb6658712b1598f6b73d25df`  
		Last Modified: Mon, 23 Nov 2026 23:09:50 GMT  
		Size: 5.4 MB (5409846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03618b28e02ad3324660a3afdc5e6fa5384a9c8c6c06593665d70ddeb9dd6a27`  
		Last Modified: Mon, 23 Nov 2026 23:09:50 GMT  
		Size: 24.7 KB (24651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:dc97a9c0f2089002d61d304ff054f5d0d8d2c5897301cfd2fc84c950c6bf8ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.6 MB (382635274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd75beae440c4462d3191d98ff928519ce791ac88e30a9a84488132e94f413c1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:21:53 GMT
ENV container oci
# Fri, 20 Nov 2026 18:21:53 GMT
COPY dir:9d42577db2dc9d97b6db090d2d65c35ca6b076e887552712746b7559e7eae01d in /      
# Fri, 20 Nov 2026 18:21:54 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:21:54 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:21:54 GMT
COPY dir:ab6ed5ccaae221eefc015f1cf511e671a90d35c952f4480f0970740c7b1f1a8b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:21:54 GMT
COPY dir:ab6ed5ccaae221eefc015f1cf511e671a90d35c952f4480f0970740c7b1f1a8b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:21:55 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:21:30Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:21:30Z" "architecture"="ppc64le" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:21:30Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 23 Nov 2026 22:08:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:08:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:08:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:08:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:11 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:13:22 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:13:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:13:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:13:22 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:13:22 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:13:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:13:34 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 23:13:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 23:13:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:13:39 GMT
USER gradle
# Mon, 23 Nov 2026 23:13:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:13:41 GMT
USER root
```

-	Layers:
	-	`sha256:c97b9a308c8eb9502e6d4ff0ae8c362b07bd35b8e0a0e3a4e8a1e495976591bc`  
		Last Modified: Sat, 21 Nov 2026 00:18:56 GMT  
		Size: 45.0 MB (45027256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7aacf7537282855b98b7871ddc721a81a0058cc5e019d99c2fb43f04ebb85f4`  
		Last Modified: Mon, 23 Nov 2026 22:06:42 GMT  
		Size: 30.1 MB (30084401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf167fa9dfbbcf67dda4b24cd5519c8b99e2730e951aab863424660df248f1e3`  
		Last Modified: Mon, 23 Nov 2026 22:08:49 GMT  
		Size: 128.8 MB (128773853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070795e8324ee3a096e5d0b05d7339a67ea3dcc1f69ce8f28e81cbf8cea86a53`  
		Last Modified: Mon, 23 Nov 2026 22:08:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66449ae912386c28380bbfda41d0c641c95c802770a664f5a68e615c8be35e70`  
		Last Modified: Mon, 23 Nov 2026 22:08:09 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5dde0b3ef3c64b09bbc3aabb2d98afade6b3e86b1ea7e4b03bfadd5fd496a3`  
		Last Modified: Mon, 23 Nov 2026 23:14:15 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c368fdc955ce24ffc1f0c8c3f233a3312f2529728c2c7d614a459f99ac2516`  
		Last Modified: Mon, 23 Nov 2026 23:14:17 GMT  
		Size: 39.2 MB (39211084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476122a6e7ee9e53566cecc8e5de19ca0ccd291b11d39e9c8e84383cc0582da5`  
		Last Modified: Mon, 23 Nov 2026 23:14:20 GMT  
		Size: 139.5 MB (139499313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b7a11cff60d4f32856098e6998e87ef2bba4d10a409a5ee78992fbf8a6731d`  
		Last Modified: Mon, 23 Nov 2026 23:14:15 GMT  
		Size: 35.0 KB (35010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:29df82f37038819fe4aa2cfd4c59d490273683d5b892a32d6cc5f295a7372b88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5429874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f0bd7e8ae230848d95a43a590828ddcb656e925deed033ff7aef983d12623`

```dockerfile
```

-	Layers:
	-	`sha256:4fbf46ff353d3004634150e9b45cdf23dbca8b823e5a6408407df1eb97e37766`  
		Last Modified: Mon, 23 Nov 2026 23:14:15 GMT  
		Size: 5.4 MB (5405310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3532525b3e5cf048a2cfcc0188e8f29b65d5173428644e19f43c8eb6adf3d2b4`  
		Last Modified: Mon, 23 Nov 2026 23:14:15 GMT  
		Size: 24.6 KB (24564 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:3bb40c434e4d7ecadec7ee70390f129a3a4fa9a88ee01b328929adf2100e512d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.9 MB (365859892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:140b69e6094ef2fbec50c68ae2f4c2c0314e1377cd469b08fe18e97c07d871fc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:47:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:47:49 GMT
ENV container oci
# Fri, 20 Nov 2026 18:47:49 GMT
COPY dir:4860b72aebf06285c055212d0515db541664c99cacb0a5928bddfb8368bad1f4 in /      
# Fri, 20 Nov 2026 18:47:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:47:50 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:47:51 GMT
COPY dir:578ee725f27a0a02192213651b81dddb3f241dbd46fc05097b5828039995de43 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:47:51 GMT
COPY dir:578ee725f27a0a02192213651b81dddb3f241dbd46fc05097b5828039995de43 in /root/buildinfo/      
# Fri, 20 Nov 2026 18:47:51 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:46:44Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:46:44Z" "architecture"="s390x" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:46:44Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:05:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:52 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:52 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 23 Nov 2026 22:11:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:11:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:11:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:11:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:11:33 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:07:55 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:07:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:07:55 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:07:55 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:07:55 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:08:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:08:01 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 23:08:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 23:08:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:08:05 GMT
USER gradle
# Mon, 23 Nov 2026 23:08:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:08:06 GMT
USER root
```

-	Layers:
	-	`sha256:12ee8f9b356a9697783bcbbc91605329f7064346789cdc657774072dc51daf3e`  
		Last Modified: Fri, 20 Nov 2026 19:55:28 GMT  
		Size: 38.7 MB (38653844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765f9b563d70cddd2448b248d5ba9c7bd65465dc4ba0cb88b6e93e9ecc3368e3`  
		Last Modified: Mon, 23 Nov 2026 22:06:15 GMT  
		Size: 27.7 MB (27686489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b9453c2b6c3f441ab033b4509b7d05deea20be590d509579327f67881e614f`  
		Last Modified: Mon, 23 Nov 2026 22:11:56 GMT  
		Size: 122.4 MB (122432505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cf72749a85a85f48b09dd374c8a0e2ccc4104ec0597999d0573424862d427f`  
		Last Modified: Mon, 23 Nov 2026 22:11:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5470a18e7904295144be4679af121d9e3c82d4c6154a58ab55a91fbd0e6f79c7`  
		Last Modified: Mon, 23 Nov 2026 22:11:54 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828c5eb99e643f55c1e444def91b2dae44600b1dea4b9d74d4e4316e91ca640e`  
		Last Modified: Mon, 23 Nov 2026 23:08:31 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9099690184a4f68f98f44cc8934e6763cdba0d7837056b1c42816af66b61847`  
		Last Modified: Mon, 23 Nov 2026 23:08:32 GMT  
		Size: 37.5 MB (37548390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8382707515da6c1b8857eb27d3bf4cdff96fd6c59f87aa2eed1f06de031ff3a`  
		Last Modified: Mon, 23 Nov 2026 23:08:34 GMT  
		Size: 139.5 MB (139499313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc858ca370108fca09592be28e707591c1f579d9edb226c36e7594b3d190d912`  
		Last Modified: Mon, 23 Nov 2026 23:08:30 GMT  
		Size: 35.0 KB (35003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b5873ad68fd1a46a9bbd6745e80d67de01ed8fa488aa5a3044772d68cf2de76b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5419651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee55a57f61fc2f2cb07b08722566087d7ee13c32f209e9ae127fbce2eea389b`

```dockerfile
```

-	Layers:
	-	`sha256:832284e5231b7c7ae8627baa0c35a9b57250009e214750aa8c787ecc4701b5f0`  
		Last Modified: Mon, 23 Nov 2026 23:08:31 GMT  
		Size: 5.4 MB (5395161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da5270f397d1f14dc010de793e171e09dea441e22295476ba066f2d1b16b142f`  
		Last Modified: Mon, 23 Nov 2026 23:08:30 GMT  
		Size: 24.5 KB (24490 bytes)  
		MIME: application/vnd.in-toto+json
