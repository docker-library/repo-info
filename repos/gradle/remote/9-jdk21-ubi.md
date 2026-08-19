## `gradle:9-jdk21-ubi`

```console
$ docker pull gradle@sha256:198e36f713dc41d245bbf2dd730087447ec3cf8713500f0a9900547008a14658
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

### `gradle:9-jdk21-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:4b4a143bf925af7d5ab084fadea1bbd64675e785f8ed92938c1a59f6aa5b8762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.2 MB (422159189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f093ab4525b99181d57a291ef20ea4536c111eff040fec5dc6a113215536cf14`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:00:29 GMT
ENV container oci
# Mon, 17 Aug 2026 10:00:29 GMT
COPY dir:e1c00668e831c6f7c1c82890c3ff2aa86777926f6fcef54ed840b79618da399c in /      
# Mon, 17 Aug 2026 10:00:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:00:30 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:00:30 GMT
COPY dir:711c35f0e0f5b6c4acb3cbb42fc5687dfbbb2a5043ce701198a3131e25785504 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:00:30 GMT
COPY dir:711c35f0e0f5b6c4acb3cbb42fc5687dfbbb2a5043ce701198a3131e25785504 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:00:30 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T09:59:37Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T09:59:37Z" "architecture"="x86_64" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T09:59:37Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:38:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:38:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:38:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:02 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:38:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:38:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:38:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:38:10 GMT
CMD ["jshell"]
# Wed, 19 Aug 2026 17:39:44 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:39:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:39:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:39:44 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:39:44 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:39:49 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 19 Aug 2026 17:39:49 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:39:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:39:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:39:52 GMT
USER gradle
# Wed, 19 Aug 2026 17:39:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:39:52 GMT
USER root
```

-	Layers:
	-	`sha256:872a2aed985e0b2daad07dd2009dbba2c5d87b2369582eb5b179f081ac4ea0e9`  
		Last Modified: Mon, 17 Aug 2026 10:54:15 GMT  
		Size: 34.9 MB (34914306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9069c226ab9c140cc1cf68d3047651ec152f1b46465664577b7657b0a468a7`  
		Last Modified: Mon, 17 Aug 2026 22:38:30 GMT  
		Size: 37.8 MB (37794926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde35d6dbd842aaf2ac5f76f0e3ee3d9b0c6a140fba4fbfb73d9d7dc901683da`  
		Last Modified: Mon, 17 Aug 2026 22:38:32 GMT  
		Size: 158.2 MB (158172670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84437cb4f544a047c03023fe78da261f0a7319938f18f4002607d57369e5a784`  
		Last Modified: Mon, 17 Aug 2026 22:38:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31454372ce8ad7a70232f69a96fb98ec15633f27c78dffeff8049b9e39fb8b6`  
		Last Modified: Mon, 17 Aug 2026 22:38:28 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599b049fd083f7da3f71d42741c2572440705204f49329cbaab9d0f42202d22b`  
		Last Modified: Wed, 19 Aug 2026 17:40:11 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b605e74f87fa3f3605e1947a9535dca1e2f70b1d18092a8dd862063c60f4efc`  
		Last Modified: Wed, 19 Aug 2026 17:40:15 GMT  
		Size: 39.9 MB (39893617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b5d9fe3fe8a1a09549b6815f714ac8cdcae82b1311e61d63c4c1ade425bde3`  
		Last Modified: Wed, 19 Aug 2026 17:40:19 GMT  
		Size: 151.4 MB (151354019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75039cd8142d69a696acdb16c8af20e1e45f134f687a7c4c814b8978c6675595`  
		Last Modified: Wed, 19 Aug 2026 17:40:11 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:3204b441e62b50359f967c272e0b5c113c38ce552ddaf1161509bc0da89fd695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7123127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c913dfbed1ae8569fdd1405ffe1784b63569f2c2bcf9028285ff9fb6d1992166`

```dockerfile
```

-	Layers:
	-	`sha256:bb321e4a4d00785132f16dcbd694fbe57dfcc5e636beeec2ad83cff3f6cb9334`  
		Last Modified: Wed, 19 Aug 2026 17:40:11 GMT  
		Size: 7.1 MB (7098672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc1f55fbb9664b58ac69e6a3a019d2e57b8357b4355d1daa538c72c315853e00`  
		Last Modified: Wed, 19 Aug 2026 17:40:11 GMT  
		Size: 24.5 KB (24455 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c13d727ebddbcf2f381e9e55a31745465b16e4f0166561dfb35c465d061f0518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.0 MB (418024338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cbfeed71a815ad738c6267837c3c6f5a6f044073fcdf3c8b93f8d08f9d5ae7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:02:26 GMT
ENV container oci
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:793eca9839ba6ad23829ed8a657d8667ee4d15a851784f37c997c048e9870781 in /      
# Mon, 17 Aug 2026 10:02:27 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:02:27 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:55140f70ed2ba8822276b175ee837493eab52c96586720bf3979289e5dccba53 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:55140f70ed2ba8822276b175ee837493eab52c96586720bf3979289e5dccba53 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:02:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:02:05Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:02:05Z" "architecture"="aarch64" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:02:05Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:36:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:36:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:36:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:36:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:36:18 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:37:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:18 GMT
CMD ["jshell"]
# Wed, 19 Aug 2026 17:40:09 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:40:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:40:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:40:09 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:40:10 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:40:15 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 19 Aug 2026 17:40:15 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:40:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:40:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:40:18 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:18 GMT
USER root
```

-	Layers:
	-	`sha256:ff4356eadc8eb39aa229f22a6bde46a2c9a62afe867477b6cf66b5ce54cfb5d4`  
		Last Modified: Mon, 17 Aug 2026 10:54:11 GMT  
		Size: 33.1 MB (33101866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43deaad581e8a0754377c633b3c094ddf38c8e7c0f8a94a68ac995b406ad850c`  
		Last Modified: Mon, 17 Aug 2026 22:36:40 GMT  
		Size: 37.7 MB (37724487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aefa41289e095693524ba1c17415e3d9187f64bd24df5070bfe558bd3bf3686`  
		Last Modified: Mon, 17 Aug 2026 22:37:40 GMT  
		Size: 156.5 MB (156464359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3357d44e3b60043ceb163af9ac5807101c4264b545f2d198fce040ec6f907234`  
		Last Modified: Mon, 17 Aug 2026 22:37:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d18f084832018d223e9137171d552a7f888418d8b8f56a081a01c9938de9b5`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0e327f92b1ac51b1cf09bbbc32a36b058d0367d15e7c2df42023e3c0840b8a`  
		Last Modified: Wed, 19 Aug 2026 17:40:38 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ea576821eeedd95203d059397becc5de8d2cb25f402e75eb175f020da5ac45`  
		Last Modified: Wed, 19 Aug 2026 17:40:40 GMT  
		Size: 39.3 MB (39346233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808f81843fc4f9484f6d3ef09885ad052cbfc736dd86a9acb8ab00f1d3c9e02`  
		Last Modified: Wed, 19 Aug 2026 17:40:42 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e81e902fe34ac57cbfdf04ff96c332a1ccc2113710e2249ce9cae05224ccad9`  
		Last Modified: Wed, 19 Aug 2026 17:40:38 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:a166daf7381028c94d331172dbdc186ad7788218484b9408e421269db4d27624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7121580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c076624ae6f4ae69f7ccc37f36cfdd0ae9edc3ff5a1f231fc0c1be575c438f1`

```dockerfile
```

-	Layers:
	-	`sha256:b120d3342d9b9e08c44e8f9f42ffd946b8edd95bc475e3a9c18ae38182c660b1`  
		Last Modified: Wed, 19 Aug 2026 17:40:38 GMT  
		Size: 7.1 MB (7096928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4de1d52702862889328923bfaea08ce986669a2fc4dbf6ab97f54d1f42d96df`  
		Last Modified: Wed, 19 Aug 2026 17:40:38 GMT  
		Size: 24.7 KB (24652 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:db21e6b85f2fba1cd80b290a416644c6727d2a0a92e2ce63726800e8c7c877ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.9 MB (428859366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32e09f6b92b7eb6fa8e51eed5009ba3784e4e27309ed1bfed8de7682ef03409`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:03:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:03:49 GMT
ENV container oci
# Mon, 17 Aug 2026 10:03:50 GMT
COPY dir:191310e6819456763791bc6c4e350e983e2c2ece70382b2919b5ba9a569a22b7 in /      
# Mon, 17 Aug 2026 10:03:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:03:50 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:03:50 GMT
COPY dir:e82b530ea693b16cd4c8b870284cdb0f4a2af3565438911629ec1ba13ecbc4c4 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:03:50 GMT
COPY dir:e82b530ea693b16cd4c8b870284cdb0f4a2af3565438911629ec1ba13ecbc4c4 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:03:50 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:03:32Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:03:32Z" "architecture"="ppc64le" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:03:32Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 23:23:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 23:23:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 23:23:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 23:23:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 23:23:44 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 23:29:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 23:29:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 23:29:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 23:29:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 23:29:20 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 00:06:35 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 00:06:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 00:06:35 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 00:06:35 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 00:06:35 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 00:06:52 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 18 Aug 2026 00:06:52 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 00:06:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 00:06:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 00:06:58 GMT
USER gradle
# Tue, 18 Aug 2026 00:07:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 00:07:00 GMT
USER root
```

-	Layers:
	-	`sha256:b47e83667df621a3a3a3dd649d67af68e3b28a9124e58b1e5b79a552c9ab780e`  
		Last Modified: Mon, 17 Aug 2026 11:33:26 GMT  
		Size: 39.1 MB (39053766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9653afc06c5ffe749de3db83247d3a5ed5be22b219ae3703806228f1f52d3ae4`  
		Last Modified: Mon, 17 Aug 2026 23:24:24 GMT  
		Size: 39.6 MB (39555357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ce0ca709b88e8ce1858bdc99bfea83a436403633141b917d3a8c53b6de742f`  
		Last Modified: Mon, 17 Aug 2026 23:30:00 GMT  
		Size: 158.3 MB (158348508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926093a741c1b34acdafabeb682e7f6288fbe29f158c0a46d4399102e0663623`  
		Last Modified: Mon, 17 Aug 2026 23:29:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9711a0896909bafdca125020200376fdf99d6be9d965dfbc17a6a2bb8f8bf9c`  
		Last Modified: Mon, 17 Aug 2026 23:29:57 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c16f2106f697f1b8ebd9dac0647e2d51a2a6db39674604b889fb7540c4f087a`  
		Last Modified: Tue, 18 Aug 2026 00:07:52 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11cae10e21c9527099c324ca32a8cfd6f5769ddcf96dbd791bc65dbd8a9685e1`  
		Last Modified: Tue, 18 Aug 2026 00:07:54 GMT  
		Size: 41.7 MB (41669430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4c0f0e5f421fe0097931c33acd14be60c88c777b59156e841efe5d03c59ffc`  
		Last Modified: Tue, 18 Aug 2026 00:07:57 GMT  
		Size: 150.2 MB (150227886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15dd9fee16f7c3e7eca492e635b2d3f794de45fb5194420e2dcf9aedb9341fc3`  
		Last Modified: Tue, 18 Aug 2026 00:07:52 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5084c3f19ce03e089c311e6fa8be036916f77c638147c5ecd733f72748e9e8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7113202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7497d7be8aa029dbbbc987c485f57f9ddb03c773e5d15c96ac1823d644d42c1b`

```dockerfile
```

-	Layers:
	-	`sha256:9f7a8683c41cd22283abfa202e4221b3235b63988c87983a582ffa7002fdbd2e`  
		Last Modified: Tue, 18 Aug 2026 00:07:53 GMT  
		Size: 7.1 MB (7088675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d194c37b75755b0370d14bb8ec717eb3e1370597338e05b760043af30610abcc`  
		Last Modified: Tue, 18 Aug 2026 00:07:52 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:cd0f98a9a81cb0092e91aac54b5f0f0a0ae412b874023eaeb291909a6834600f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.8 MB (413761499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43d19315e686d4f380a89d882bb8558e0b905e0f0b699815a02140616ebefe5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:17:18 GMT
ENV container oci
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:db8c552773640bcf67a97fcba29870289b1428b16d5ec8d65c572309418e9fd3 in /      
# Mon, 17 Aug 2026 10:17:19 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:17:19 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:7d13de7d05c45bf79021a229b19a0a25e9cf990735122c09853b8d2c0611408e in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:7d13de7d05c45bf79021a229b19a0a25e9cf990735122c09853b8d2c0611408e in /root/buildinfo/      
# Mon, 17 Aug 2026 10:17:19 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:15:57Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:15:57Z" "architecture"="s390x" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:15:57Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:35:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:36:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:00 GMT
CMD ["jshell"]
# Mon, 17 Aug 2026 23:09:01 GMT
CMD ["gradle"]
# Mon, 17 Aug 2026 23:09:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Aug 2026 23:09:01 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 17 Aug 2026 23:09:01 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Aug 2026 23:09:01 GMT
WORKDIR /home/gradle
# Mon, 17 Aug 2026 23:09:07 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 17 Aug 2026 23:09:07 GMT
ENV GRADLE_VERSION=9.7.1
# Mon, 17 Aug 2026 23:09:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:40:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:40:06 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:16 GMT
USER root
```

-	Layers:
	-	`sha256:12ecfd32ac8bb40ba4889411d71319e37dea47907db2b9306af99b658953469c`  
		Last Modified: Mon, 17 Aug 2026 11:32:31 GMT  
		Size: 34.8 MB (34815441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb2e1229ed031edd8ad8cd675a2fc89246c29704423ccaa73fcdc1aeba7db8a`  
		Last Modified: Mon, 17 Aug 2026 22:36:01 GMT  
		Size: 38.2 MB (38171368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445eb3169821d428d5b1417a30b77fcfd351508504f7c71e2a0c615fa9aa7ea3`  
		Last Modified: Mon, 17 Aug 2026 22:37:27 GMT  
		Size: 147.4 MB (147390223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d3a0f61bf7735d63e98587bdc9e63bd7f0d4d59aa8b10a659fdbcf4d53b4db`  
		Last Modified: Mon, 17 Aug 2026 22:37:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62871f0b97fc3172300ee758f260e6c5cedc0cde8374cbdec2c95eb443f7b5e6`  
		Last Modified: Mon, 17 Aug 2026 22:37:24 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d483ee5b1c6d187dc006a5edd815278d0f37811dc806adf46685953034ed9d`  
		Last Modified: Mon, 17 Aug 2026 23:09:43 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d703ef9e8e3377d83c36fecdbc4ebd24fb56b95f088f995c210842e73b905472`  
		Last Modified: Mon, 17 Aug 2026 23:09:44 GMT  
		Size: 42.0 MB (42026014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cca6946248044f103d5376d58a4417a1bfc756c74c5da863722f6226f82c30`  
		Last Modified: Wed, 19 Aug 2026 17:42:59 GMT  
		Size: 151.4 MB (151354024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a302c2d1581d9ca28bcaa888636d0ea0ea407b0f3cf5298f801e3e2cebb886`  
		Last Modified: Wed, 19 Aug 2026 17:42:52 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:db8fdc78ad01141cabc6cabf61f254293c7e675a0d5f730c974e604ff1fef7e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7103771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2757f78ebdba0b6bb4a513168ecf44acf27e1582f78e678b2968ae37322227f`

```dockerfile
```

-	Layers:
	-	`sha256:ae418b08c224f29f7150e87fddaf07d2ae1f847f4b9ed5d5537fb7bd4b1a57e7`  
		Last Modified: Wed, 19 Aug 2026 17:42:53 GMT  
		Size: 7.1 MB (7079319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:121869a6b2918436c743a4037371ebfdd43e1e89d09c08b688e973426b3bd068`  
		Last Modified: Wed, 19 Aug 2026 17:42:52 GMT  
		Size: 24.5 KB (24452 bytes)  
		MIME: application/vnd.in-toto+json
