## `gradle:ubi9`

```console
$ docker pull gradle@sha256:ce4e7478eb310013052cb9be35df4b26c012f680784c122369e9ae88a8d70520
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

### `gradle:ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:42521989d09620c43edc9f99b5f9b7deda4704575dc1b67a6433fb65103a7950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414717496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795fa390514db3eb4c2cf944a64ab97f070398f99e39ed6bcd3f3a88b6f04e68`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:56:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:56:02 GMT
ENV container oci
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:df00d2ddcafd5d3230e4389e976d7b8e34c276ca8e8d50edc2315b0141add52b in /      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:56:03 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
COPY dir:1a5179848530af6cfaa2736badbd86d3fafb52f86a723fc761a88e2b21a91f65 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:56:03 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:55:47Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:55:47Z" "architecture"="x86_64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:55:47Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:50:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:50:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:50:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:50:21 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:50:21 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 11 Aug 2026 17:51:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 17:51:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:51:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:51:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 17:51:03 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 18:10:44 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 18:10:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 18:10:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 18:10:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 18:10:44 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 18:10:48 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 18:10:48 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 18:10:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 18:10:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 18:10:50 GMT
USER gradle
# Tue, 11 Aug 2026 18:10:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 18:10:51 GMT
USER root
```

-	Layers:
	-	`sha256:2b8131e88da7bc7239bd3e4fd72821791bec3c3a93924daef20a3a2e88e4a3d3`  
		Last Modified: Mon, 10 Aug 2026 18:10:48 GMT  
		Size: 40.7 MB (40708738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078ba286cf59d3d670fd93233863303c28f211387323e592950b9f326dade0d3`  
		Last Modified: Tue, 11 Aug 2026 17:50:45 GMT  
		Size: 27.7 MB (27659764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8688e34bc1c8ce1b3145e6d067b9cf9a84b8015fa29a0646f7159a8587820a36`  
		Last Modified: Tue, 11 Aug 2026 17:51:21 GMT  
		Size: 158.2 MB (158172642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43902dbd26ac7edd14ca075dfad5ea3d0fecd5016c62e7cfcace5d9930ee4ef5`  
		Last Modified: Tue, 11 Aug 2026 17:51:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94ecec6f7a692ac363da1d83585c77e406e218aa71cd93d4219f390c71d6539`  
		Last Modified: Tue, 11 Aug 2026 17:51:18 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6851bed45df3e68ccafad91fcef0b2aba9c1aeaf1a90e854a4e15296b733f98`  
		Last Modified: Tue, 11 Aug 2026 18:11:09 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6c30788a8a8de8f2cfe6910944520928f36c23d391f59a2cd800450b95f904`  
		Last Modified: Tue, 11 Aug 2026 18:11:11 GMT  
		Size: 37.9 MB (37918631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9224a0a06ea52e72364d6d922a8454e775225c430c16755bfd8d8df48e036af8`  
		Last Modified: Tue, 11 Aug 2026 18:11:13 GMT  
		Size: 150.2 MB (150227947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e0a238036aa08a90c55535c6fdf553582e28ea6467ed5b46c9d2aaa24f2a04`  
		Last Modified: Tue, 11 Aug 2026 18:11:09 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:4159f964d5fb0315357a60a85546abff6b38f84058639d3b4a96c9e01d263e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5465391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5968337d7217fa9a2eea04b8e2187a41dc386b92b89a2d5a0582fc7d2d3c209b`

```dockerfile
```

-	Layers:
	-	`sha256:538c25cc2b3c3377154cf2ebfa64345cb631c9a4bf6baa79cb11a66806b7095a`  
		Last Modified: Tue, 11 Aug 2026 18:11:09 GMT  
		Size: 5.4 MB (5441897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91133bb216c724771c256ded3d5b7d2ebd184aae220db078fbbbbe6e06c05236`  
		Last Modified: Tue, 11 Aug 2026 18:11:09 GMT  
		Size: 23.5 KB (23494 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c33adc6d9bf0b15f9b0cc97774abbec48fae80b56e9e34858fc3cf09d5d88b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.8 MB (410821027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6ecddfa4222d8573687707029ee55f2a1fa26502c57f59a25c5283ba101a75`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:58:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:58:36 GMT
ENV container oci
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:a29571d1d7f0219756ea4cbeea7cbd2d7c70f920d886563530efb6b5f51db754 in /      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:58:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
COPY dir:affb4b0d326dc89d183bd019c6447bd9c3122f330427c74027adfef3eaf39c3c in /root/buildinfo/      
# Mon, 10 Aug 2026 16:58:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:58:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:58:14Z" "architecture"="aarch64" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:58:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 19:05:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 19:05:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:05:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 19:05:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:05:25 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 11 Aug 2026 19:05:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 19:05:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 19:05:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 19:05:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 19:05:34 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 19:15:02 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 19:15:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 19:15:02 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 19:15:02 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 19:15:02 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 19:15:06 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 19:15:06 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 19:15:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 19:15:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 19:15:10 GMT
USER gradle
# Tue, 11 Aug 2026 19:15:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 19:15:10 GMT
USER root
```

-	Layers:
	-	`sha256:e3f9ee4410f580b6aa25583df525121fb62e969983ca4535073d9018d260fec1`  
		Last Modified: Mon, 10 Aug 2026 18:10:53 GMT  
		Size: 38.8 MB (38791667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c2b224f99e2c143551c5ef2b9cbd8563c055c3e830ef64f4f6830c9df5d75fc`  
		Last Modified: Tue, 11 Aug 2026 19:05:53 GMT  
		Size: 28.1 MB (28102856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d8980e4afbc40268e0f92e5e2e629b5633a28aaf8b0abf0a0561122676a6e5`  
		Last Modified: Tue, 11 Aug 2026 19:05:56 GMT  
		Size: 156.5 MB (156464353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c057964864817773fb3ec291811a155a19a516ab28316891b58a9436a1e95f3`  
		Last Modified: Tue, 11 Aug 2026 19:05:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a5ba928cfcda66c39cf8e5ef5f4908ce719e65655552610c5141614c81afc4`  
		Last Modified: Tue, 11 Aug 2026 19:05:52 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2b7846bb499863ab1f167baf34187dac666acb1a34e1ce495edc7242b6aae6`  
		Last Modified: Tue, 11 Aug 2026 19:15:26 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be67aed4879e0358b62a83ae290d65fc7745c1a67bfeadffa13fc45899789f4`  
		Last Modified: Tue, 11 Aug 2026 19:15:28 GMT  
		Size: 37.2 MB (37200777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca0d403144c042d591b815255d925de3a8ffd7a976192ad6c250732ac3aaa1a`  
		Last Modified: Tue, 11 Aug 2026 19:15:30 GMT  
		Size: 150.2 MB (150227881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c5475469f954389a509ca73d98b1866c536e61012f5b727d555461f02c217d`  
		Last Modified: Tue, 11 Aug 2026 19:15:26 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:18facb2a28c18ed3f9c36bdd47f106f3a1447213ccf78550ef5cb3b4dbb2c61e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5463200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b2bedfc0e8268098182c1753a6ed7235f23cafa52083b27a0678b7e0ff4d9b`

```dockerfile
```

-	Layers:
	-	`sha256:a4ef3abd2832013bee1851f52ec8c2e81cb4d32295bd1767b4c5314e8dd036dc`  
		Last Modified: Tue, 11 Aug 2026 19:15:26 GMT  
		Size: 5.4 MB (5439509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fd6d9a291330a9d2e68834ea80b6333eeb1638f34223d3ad2fd9306923ea1df`  
		Last Modified: Tue, 11 Aug 2026 19:15:26 GMT  
		Size: 23.7 KB (23691 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:8cf3b9d0644d5882211c3d158b018ede4e5f69cb58b89b123d315162902a4fcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.0 MB (422953391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bc565f3a5e5acfcfdb5b9870bb9e137614e46397a88eeadc7eb81031a3e4c14`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:59:29 GMT
ENV container oci
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:85a7cc9a737af83f9f0b55b944a98b9bd0f889ce12a8553376788b64bd64c755 in /      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:59:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:59:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:59:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:59:14Z" "architecture"="ppc64le" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:59:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 11 Aug 2026 20:25:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 20:25:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:25:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:25:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 20:25:24 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 21:11:25 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 21:11:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 21:11:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 21:11:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 21:11:25 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 21:11:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 21:11:46 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 21:11:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 21:11:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 21:11:50 GMT
USER gradle
# Tue, 11 Aug 2026 21:11:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 21:11:51 GMT
USER root
```

-	Layers:
	-	`sha256:fc6b62fae872622053a5ed2104e57f8406d9f00d71c0b557c6ad438326e8b9ce`  
		Last Modified: Mon, 10 Aug 2026 18:11:04 GMT  
		Size: 45.1 MB (45097272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403ea128d36a0913eb6d165e4cfbd91defb2a0eb30721dd4887f65c893225e2b`  
		Last Modified: Tue, 11 Aug 2026 20:20:11 GMT  
		Size: 30.1 MB (30085352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f88521d5e72b3aad66eb8f2da9a13c34eb5c8e156d986cb203f1c2d1a27b551`  
		Last Modified: Tue, 11 Aug 2026 20:26:04 GMT  
		Size: 158.3 MB (158348503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5505e24696c92b87cde0fb29b6d5472860e0759322e4db7dea50afa6b786ccc5`  
		Last Modified: Tue, 11 Aug 2026 20:25:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd873cc20d0cd8e3ea46d7435ab0ff2b97d389624c296ca3ce65b27b456187`  
		Last Modified: Tue, 11 Aug 2026 20:26:00 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97cb21660d8b65adde90237904afbf8b6eeb8e0e0b1cb171cc37bb6e69d543cc`  
		Last Modified: Tue, 11 Aug 2026 21:12:24 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a380d3b5d06b4593d6a638fe54ca47561dc67ce73ce82180f7d15336a5a1f90`  
		Last Modified: Tue, 11 Aug 2026 21:12:26 GMT  
		Size: 39.2 MB (39189771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11918874c6c6f9732fdb6269a47c7484153097cc07b7060f9240a28f5f9cbaee`  
		Last Modified: Tue, 11 Aug 2026 21:12:29 GMT  
		Size: 150.2 MB (150227951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11206d433e74a266e14bc6eda7f4b96bd5a06e1f7b2ac2c71ebd4753351a3a1f`  
		Last Modified: Tue, 11 Aug 2026 21:12:24 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:cbb8af4de277ac1aa3c6b4af3fd310289e0e5b547e7452baeb797d3c0082f0e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88189b07fd74e4a3254d0e7811aa0bd8b3de35a1dfe10704d3b7201bbaff5355`

```dockerfile
```

-	Layers:
	-	`sha256:55dc2ad900c76ed436fc16b220df38cdb08869f110eeb7855a6707998125c37d`  
		Last Modified: Tue, 11 Aug 2026 21:12:25 GMT  
		Size: 5.4 MB (5437470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e42509cbc7c6c1977e0615a7e291be68ef81bee60c3115cfb51b0057156e26e1`  
		Last Modified: Tue, 11 Aug 2026 21:12:24 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:2ebb83c3efce6010daac47239aadcb55c442bf8a3198b77c91491c87d9de8c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.6 MB (401575233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d73c6a6b3a93e69ce9753a366555760b13be568289e268856276d0a7fff958`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 17:17:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 17:17:47 GMT
ENV container oci
# Mon, 10 Aug 2026 17:17:47 GMT
COPY dir:8a660edaa14a265302db24f21a2623345e34e48847b8e3f9a3f0b023bbfa731f in /      
# Mon, 10 Aug 2026 17:17:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 17:17:47 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 17:17:47 GMT
COPY dir:528d8b085204197bd0fe3f329af3d3ea22469dc77cc7ab43d690f26565a2ece6 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 17:17:47 GMT
COPY dir:528d8b085204197bd0fe3f329af3d3ea22469dc77cc7ab43d690f26565a2ece6 in /root/buildinfo/      
# Mon, 10 Aug 2026 17:17:48 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T17:16:58Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T17:16:58Z" "architecture"="s390x" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T17:16:58Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 17:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 17:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:49:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 17:49:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:49:56 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 11 Aug 2026 17:52:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 17:52:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 17:52:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 17:52:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 17:52:21 GMT
CMD ["jshell"]
# Tue, 11 Aug 2026 18:11:12 GMT
CMD ["gradle"]
# Tue, 11 Aug 2026 18:11:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 11 Aug 2026 18:11:12 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 11 Aug 2026 18:11:12 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 11 Aug 2026 18:11:12 GMT
WORKDIR /home/gradle
# Tue, 11 Aug 2026 18:11:23 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 11 Aug 2026 18:11:23 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 11 Aug 2026 18:11:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 11 Aug 2026 18:11:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 11 Aug 2026 18:11:28 GMT
USER gradle
# Tue, 11 Aug 2026 18:11:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 11 Aug 2026 18:11:30 GMT
USER root
```

-	Layers:
	-	`sha256:205cab09cf437434aa479b3fd911b4bde92bf7325ef0b1ef64cb2cb4e030a7eb`  
		Last Modified: Mon, 10 Aug 2026 18:10:58 GMT  
		Size: 38.8 MB (38750807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e554e8d05b8644fc8c3e35f8a73b1e83e4048da42b63525df9380fe0dbd62f62`  
		Last Modified: Tue, 11 Aug 2026 17:50:30 GMT  
		Size: 27.7 MB (27687609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9c6665d8dc768a265e8007235069117e19f0f62d171e3f53dd7d865e8620fe`  
		Last Modified: Tue, 11 Aug 2026 17:53:07 GMT  
		Size: 147.4 MB (147390145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2573a6c58c8265f72a0fe7472df2f80118cecb778acb93925e2e823fe6df7b8e`  
		Last Modified: Tue, 11 Aug 2026 17:53:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d46820623fd2d39b44cede70d7d0c3d18dcdb55ab927d369df25987adfd5164`  
		Last Modified: Tue, 11 Aug 2026 17:53:03 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd58f1255fd355f86efa971ea435f2c5ee5cf06664718bc54ba1458cd2a2edb`  
		Last Modified: Tue, 11 Aug 2026 18:12:09 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a666e76303fda08c0a87c05a5feb8fc538385b90c4adb1a5a42bb6691afc45`  
		Last Modified: Tue, 11 Aug 2026 18:12:12 GMT  
		Size: 37.5 MB (37514216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39427715d7fc7c6d4c7707a2f47e944225ea4401a0e98d16ebbe4d456f875d77`  
		Last Modified: Tue, 11 Aug 2026 18:12:15 GMT  
		Size: 150.2 MB (150227923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d88bb310d664a4dde979d99f33259d4753f5dee320c45581ea18179fa2f378`  
		Last Modified: Tue, 11 Aug 2026 18:12:09 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:9e0069d6252aef0515a68d44621838b2ac3c568419e2ef35bd21d60e5eb575ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5450247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26305f23e4fe29dba925c620b50a37e59994135d266243f954d04b2125ae142b`

```dockerfile
```

-	Layers:
	-	`sha256:4183fa42dd2facf349edf84857f6a7e2219b6aa8954f07831c2daa65d1ad0ce0`  
		Last Modified: Tue, 11 Aug 2026 18:12:10 GMT  
		Size: 5.4 MB (5426720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:169f0c7c3ffa61d55fa45cc9a9238b10ad6c5733b11cae0f4b4840d4fedf1ee0`  
		Last Modified: Tue, 11 Aug 2026 18:12:09 GMT  
		Size: 23.5 KB (23527 bytes)  
		MIME: application/vnd.in-toto+json
