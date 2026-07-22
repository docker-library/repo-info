## `gradle:9-jdk21-ubi9`

```console
$ docker pull gradle@sha256:b904995b25371fe218c1ef8a7d2fd2225720f94d5a9925a65824c6612bd73f07
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

### `gradle:9-jdk21-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:a9a51914cb56bf8ab04726de743794dd5ded98429c64018dedfb5986e4968917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405104028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5eb90b8c5f8a92e2daeb6415c5ec761de3e36ccb7a70a105d97f3d19ccd4be`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:28:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:27 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:28:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:35 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:25 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:25 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:25 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:28 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:28 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:01:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:01:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:31 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:31 GMT
USER root
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6920fc3308a28145e0ecf88989e1ac856b04569975983fd82fed946fb012121a`  
		Last Modified: Wed, 22 Jul 2026 18:28:52 GMT  
		Size: 27.7 MB (27661535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2acfcf83fc97291485fbe8d09d19663c08441416ec679448b88247a31563966`  
		Last Modified: Wed, 22 Jul 2026 18:28:55 GMT  
		Size: 158.2 MB (158172644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97c395b686c4c5950c26f98be536254a9a0b716cde6a92a200e65dab005c0b34`  
		Last Modified: Wed, 22 Jul 2026 18:28:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181f4e7ca47023020f137f3e6f5db2ade16d9353fee501d316ce088f708194a9`  
		Last Modified: Wed, 22 Jul 2026 18:28:51 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20effbd556657145b5c0ff3fd56027e83024ac1e30ad8870cb2769e98a0cbfac`  
		Last Modified: Wed, 22 Jul 2026 19:01:49 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b5320212beb5c1143d13ba081188f5849eb3cf2710ccbb1e2dc6b343aed10f`  
		Last Modified: Wed, 22 Jul 2026 19:01:51 GMT  
		Size: 37.9 MB (37921462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31c339f410826487aa20ff23fbf6ce7734184824d759179956fff18d35864c8`  
		Last Modified: Wed, 22 Jul 2026 19:01:53 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e5091bde9d027a52a844d631eacfaa3499ffa2d087e88b9c49d843bec2001c`  
		Last Modified: Wed, 22 Jul 2026 19:01:49 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:74a5908e55b0ffde7e03e4c2c45eb2c28a2ca11d5847492d4b689aaa3f627909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9daf5dddb21c07ad710b9891f7b3d95904846fa36a070c3aa5ee09b092b9cc`

```dockerfile
```

-	Layers:
	-	`sha256:79334e80516b30c4d9e3116a71052bf5299c0c02a4ed9303649ebff27f535372`  
		Last Modified: Wed, 22 Jul 2026 19:01:49 GMT  
		Size: 5.4 MB (5435136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da867e02a60920d75eeaf791dc622dcc6e3da3e1f573c44d3e4d921d4ab3d0b8`  
		Last Modified: Wed, 22 Jul 2026 19:01:48 GMT  
		Size: 23.5 KB (23530 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9b0a99b56246ed77ccf949f4384e04cdd453e50148b0da397db0ca7dd6d60d71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401224350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4207922bd8624c61897fb04895f8e45755c37c4d449677c20209735a39822a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:52:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:52:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:52:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:52:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:52:50 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:53:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:20 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:27 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:27 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:33 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:03:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:03:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:36 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:37 GMT
USER root
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0d6c86c91dfe85d8f0765df127cadf882b22aa775cc68533885312135b7908`  
		Last Modified: Wed, 22 Jul 2026 18:53:05 GMT  
		Size: 28.1 MB (28102872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29625b4f6a85c7e409eb7397862f8720d49399723468888999025b89d22a56b4`  
		Last Modified: Wed, 22 Jul 2026 18:53:40 GMT  
		Size: 156.5 MB (156464380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8096d3cc6d42239b6839ae88cca6c2a21fd2df5620612229ef0706358c37f46e`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad458fa046d6ca2426045b7b8a364f7a663f8eaca99418e031cbbc7b86b427a`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd26304bbee30164909c960c5dacc5b23ded7d77faf54dd0c1cd69b050d947ce`  
		Last Modified: Wed, 22 Jul 2026 19:03:53 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8800b84d3cfba25a1ba9bc77040c87a85df1e9a8514af8cd10e2605008e5da`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 37.2 MB (37203403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aed96fa05f350cb6912a8f5ed70d0f65c21c4239af5cd5a5705fe643781cb6c`  
		Last Modified: Wed, 22 Jul 2026 19:03:58 GMT  
		Size: 140.6 MB (140596011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3007f428b1cd478f6b10a058d35460cfe92504979e79471470cc572c4fb594a3`  
		Last Modified: Wed, 22 Jul 2026 19:03:53 GMT  
		Size: 29.3 KB (29342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:65efd073a28ae7b189b5cd53aaf831451311f2d4227f553239c601a576096d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5456438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f613d407328fd8f229b8d955d74f65ce42b1bd44682e8fc2eb60f48d25f968b2`

```dockerfile
```

-	Layers:
	-	`sha256:fce15d27a273da8f697f190758c506c17520d85c6784434051994ac61e0e17a9`  
		Last Modified: Wed, 22 Jul 2026 19:03:53 GMT  
		Size: 5.4 MB (5432748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11114151019f6eef3901618b4e953213a6c98a574b806c4368fa006b0bc061f0`  
		Last Modified: Wed, 22 Jul 2026 19:03:53 GMT  
		Size: 23.7 KB (23690 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:55bfc60871b4c7ab811d549aed81c03cfbfeb51e395c2145702f962f63386c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.4 MB (413366277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c200831cc71b08566154897a26bb5f8005804250a1efde339c8fedfbdb62923`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:40:05 GMT
ENV container oci
# Wed, 22 Jul 2026 07:40:08 GMT
COPY dir:c8f8871283832381250ef21ab896162ec1758ae55eb11b9cbea9913e273a401a in /      
# Wed, 22 Jul 2026 07:40:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:40:09 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:40:09 GMT
COPY dir:6088fe605826e3170ecfab99272b714167baa9ea41de316da7abbcc2c10ff764 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:40:10 GMT
COPY dir:6088fe605826e3170ecfab99272b714167baa9ea41de316da7abbcc2c10ff764 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:40:11 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:39:12Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:39:12Z" "architecture"="ppc64le" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:39:12Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:44:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:44:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:50:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:50:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:50:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:50:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:50:11 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:29:37 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 21:29:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 21:29:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 21:29:37 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 21:29:38 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 21:29:54 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 21:29:54 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 21:29:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 21:29:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 21:29:58 GMT
USER gradle
# Wed, 22 Jul 2026 21:30:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 21:30:04 GMT
USER root
```

-	Layers:
	-	`sha256:d11d072ba4cd5e97a3d2471dfc12936c2852679f69eb78cd61ff24051fabae00`  
		Last Modified: Wed, 22 Jul 2026 12:11:59 GMT  
		Size: 45.1 MB (45136368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94ae6eb1939b95b8b464207fd65020201742c83c38ca654588914489e8b4842`  
		Last Modified: Wed, 22 Jul 2026 18:45:00 GMT  
		Size: 30.1 MB (30086583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523e1637ff4220a4d66a7195fa1d222aba28228b6e63704ddad076e3ad6cbec7`  
		Last Modified: Wed, 22 Jul 2026 18:50:49 GMT  
		Size: 158.3 MB (158348479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38dfec2b0e94075d0839b8d5ad53f58535b39d884dad2e053e24c3735f8aafe`  
		Last Modified: Wed, 22 Jul 2026 18:50:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a55562fb3db0506b28c764588f857b08044a71152a0cc9618bf2b701f0e96d`  
		Last Modified: Wed, 22 Jul 2026 18:50:46 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34dc47b9c25e638020201d2f6c232fb7f2dec9c5397f27caa1ba72049997e3e`  
		Last Modified: Wed, 22 Jul 2026 21:30:49 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc5191828849c3bddbae293c1c27388011867a57566ce6be29218f187804d1c`  
		Last Modified: Wed, 22 Jul 2026 21:30:51 GMT  
		Size: 39.2 MB (39194271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f68d0c91cc9ae7deb2f47946f61ebafe4f54c4222bafe4204a34e46794d6435`  
		Last Modified: Wed, 22 Jul 2026 21:30:53 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2977158dc2ace50464fdbb130f7e7a209ac919299b588ddd67796687a4f47ef`  
		Last Modified: Wed, 22 Jul 2026 21:30:49 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:33ffbfa2289acfdde8b13b0751a4e97fbd5468ccf584747ca81d5c2f925b7e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5454293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e4447cacc9868222c8f472d1b655f31db618ac728e3d211b87de3aff9bd2bb`

```dockerfile
```

-	Layers:
	-	`sha256:15fcd76b2836efdbf507a6926105468862fb920ac9d307424bff3c00706c06d3`  
		Last Modified: Wed, 22 Jul 2026 21:30:49 GMT  
		Size: 5.4 MB (5430709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17990b9c17d5ce645df5c68d67f40b11ce489a958093a4b2870cdac4d8760843`  
		Last Modified: Wed, 22 Jul 2026 21:30:49 GMT  
		Size: 23.6 KB (23584 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:16059d002f262a33db84bcc293e7edc8d8983414c0dabc869f80379e11cd95fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.9 MB (391928871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffbbeb00b4938015e2c75546a4e5ab863c1c9187d90c30d6b4a6aa6790dd5c2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:46:27 GMT
ENV container oci
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:a03e3bcfd8bf8d44bed42e3e10179421dd7aac0c94ef6408965d38f7edbd7af9 in /      
# Wed, 22 Jul 2026 07:46:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:46:28 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:4d07c15056b36c02f12d33bca36ba79b9f06a60480d9a3171ab30a92fc4d505e in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:4d07c15056b36c02f12d33bca36ba79b9f06a60480d9a3171ab30a92fc4d505e in /root/buildinfo/      
# Wed, 22 Jul 2026 07:46:28 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:45:29Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:45:29Z" "architecture"="s390x" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:45:29Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 19:56:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 19:56:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:56:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 19:56:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:56:34 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 19:58:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 19:58:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 19:58:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:58:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:58:11 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 20:08:57 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 20:08:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 20:08:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 20:08:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 20:08:58 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 20:09:03 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 20:09:03 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 20:09:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 20:09:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 20:09:06 GMT
USER gradle
# Wed, 22 Jul 2026 20:09:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 20:09:07 GMT
USER root
```

-	Layers:
	-	`sha256:c65a219c707e69f4ad99e548e896f9fe710e2c9885f83b540cf024eebcb56999`  
		Last Modified: Wed, 22 Jul 2026 08:43:56 GMT  
		Size: 38.7 MB (38743429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9532b20ed3e6c4fa08101c27ea342a6295e1415cb4c00cc5a622f557a5a90e`  
		Last Modified: Wed, 22 Jul 2026 19:56:56 GMT  
		Size: 27.7 MB (27684869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc3d0f33c5f343f8fb6404cda0c8c16db0846cf048200212a39912b9dda882f`  
		Last Modified: Wed, 22 Jul 2026 19:58:38 GMT  
		Size: 147.4 MB (147390183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d80d6e6bfc948d5e1eb6b2b9985f21caae6c5f3db75a50dd069c9f1dae7c9d`  
		Last Modified: Wed, 22 Jul 2026 19:58:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb0c7d128fc1cb23164f219185ed142178e26b48487ae2c19dbfee146ff124c`  
		Last Modified: Wed, 22 Jul 2026 19:58:34 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc388df353822719b95fe74d0e839c715b4fb5fba798c14d0c1d09a98454716a`  
		Last Modified: Wed, 22 Jul 2026 20:09:35 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffca4a7a2cc2fa65cff32916a33fb8eaa5daf9cb348cb6aa4c08613d74253267`  
		Last Modified: Wed, 22 Jul 2026 20:09:36 GMT  
		Size: 37.5 MB (37509832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9ef0dbcdbc71ca3cd0baedd92adaecf521ecfcfb2c3f6dc77adadcbc616fbb`  
		Last Modified: Wed, 22 Jul 2026 20:09:38 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b841f5d6f39754f0a2b720eefe7f87b7a53a5120e896ad54f6ecbf23b098bc07`  
		Last Modified: Wed, 22 Jul 2026 20:09:35 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c200342d28d1295e45d2b32f41dc512a26796e05706587f7c6767c0f961a150f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f7fd1fe34e18b4abf2f96ba0b7e27fe9326d637f28966822612d54c6c4a480c`

```dockerfile
```

-	Layers:
	-	`sha256:c15a0ec8b84e83b0cef29de9f49e65fab120c2cec3a96ca9466d4e047db4a075`  
		Last Modified: Wed, 22 Jul 2026 20:09:35 GMT  
		Size: 5.4 MB (5419959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a18b4b75014183acc805285fcad2a824ff2ffe4490caa57d0b05ba801ff0b905`  
		Last Modified: Wed, 22 Jul 2026 20:09:35 GMT  
		Size: 23.5 KB (23527 bytes)  
		MIME: application/vnd.in-toto+json
