## `gradle:9-jdk27-ubi`

```console
$ docker pull gradle@sha256:d1b60aaaee05eb785bf37a1a56fb91eb1b99c2bd4427527d5d9e55e792eae262
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

### `gradle:9-jdk27-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:f7040257a2f0f63a8f49c937140ebb38c8171a08e80de35aa8b5f6dd30d144ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341791100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc658852ba5bfaddb42422115e002a9ff4a77ed82a3574f6035ed1510d50d20f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 11:55:38 GMT
ENV container oci
# Wed, 18 Nov 2026 11:55:39 GMT
COPY dir:7ce26feac2d51d1ee1fc114e73937c7f0ac821da4c3d39f084cd292137c13099 in /      
# Wed, 18 Nov 2026 11:55:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:55:40 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:55:40 GMT
COPY dir:eda951a047e24779df658738c5b99b9ffae05ea3d040a19e34778b61bcbb88b1 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:55:41 GMT
COPY dir:eda951a047e24779df658738c5b99b9ffae05ea3d040a19e34778b61bcbb88b1 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:55:41 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:54:48Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T11:54:48Z" "architecture"="x86_64" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T11:54:48Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Wed, 18 Nov 2026 21:42:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:42:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:42:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:42:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:42:08 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 18 Nov 2026 21:42:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:42:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:42:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:42:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:42:14 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 21:56:08 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:56:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:56:08 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:56:08 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:56:08 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:56:13 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 21:56:13 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:56:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:56:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:56:15 GMT
USER gradle
# Wed, 18 Nov 2026 21:56:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:56:16 GMT
USER root
```

-	Layers:
	-	`sha256:60a754b40933a6ce48185d0c3dedf5536e7c82bf3efc9ffdc12c68dd300f7a2f`  
		Last Modified: Wed, 18 Nov 2026 16:46:51 GMT  
		Size: 35.0 MB (34995270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb5b153120bad890449c548d7576d42cf20214a1ed2eab275dd5eb4db2d808f`  
		Last Modified: Wed, 18 Nov 2026 21:42:35 GMT  
		Size: 38.0 MB (38026883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259f32df636d40e703eb80d5816a530521c625565eed1fa43c7b736a31b2dc3b`  
		Last Modified: Wed, 18 Nov 2026 21:42:36 GMT  
		Size: 93.6 MB (93648558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7fd8f9275dbc9388f24205527880243c7195f825ec7ecdce0f4b1c58370fd4`  
		Last Modified: Wed, 18 Nov 2026 21:42:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423346a7ec7a789559b2252b769dd073073254dadca8489b9f09dac8bc57c1a1`  
		Last Modified: Wed, 18 Nov 2026 21:42:33 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8fa82ea4e37ffa41ab6b2055f29c048b07d465bb99293a12279f9000854bec7`  
		Last Modified: Wed, 18 Nov 2026 21:56:33 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9b5b616cd9f935f7c3843f62ec044b456bc1887f9d986584e0ba3756d0819f`  
		Last Modified: Wed, 18 Nov 2026 21:56:35 GMT  
		Size: 40.3 MB (40269654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9675e15e083cdfc20544f76e04d463ed3fa097a3e22da91dff8e4b6c168c1b5`  
		Last Modified: Wed, 18 Nov 2026 21:56:37 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8e7b266d94d03a5e67c2bb3de02deedae9e29965841adb69e999b8bc6d9966`  
		Last Modified: Wed, 18 Nov 2026 21:56:33 GMT  
		Size: 25.6 KB (25616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:2b63091d98c41dc22e414793d5d0cb0dbe9434d3edd5424da3c3b9a5f8a7f968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7074186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d8de9b480130e25f6c85c2c485de6047f7a2e2e087e3bd527e56db4d665295`

```dockerfile
```

-	Layers:
	-	`sha256:fdae5de90e14811a98023a51ec04958b9d5d99d54a9f39accfae30b31d3b048a`  
		Last Modified: Wed, 18 Nov 2026 21:56:33 GMT  
		Size: 7.0 MB (7049765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:561fc1e26592099f967a26e1b14966552a9a8c3a85639d9ef8023d5a6f82101f`  
		Last Modified: Wed, 18 Nov 2026 21:56:33 GMT  
		Size: 24.4 KB (24421 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6888ba559a5d4eb354f215c5e4ef42ff26c2b5c05a8c0afbd5bb0c52db6a88d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338305586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9d41794e9c242bc7dd743986fc37a14ef2a843649f237e66bf0796ca50aa7b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 11:59:02 GMT
ENV container oci
# Wed, 18 Nov 2026 11:59:03 GMT
COPY dir:cba0a29178cb01f0e8886e995f006d94e84274213d296eea68a1603a610a2bcd in /      
# Wed, 18 Nov 2026 11:59:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:59:04 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:59:04 GMT
COPY dir:b10dbabee6740c846f8fe8b20f789e990069a84b35afd1d7aa4d17552f9deafa in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:59:04 GMT
COPY dir:b10dbabee6740c846f8fe8b20f789e990069a84b35afd1d7aa4d17552f9deafa in /root/buildinfo/      
# Wed, 18 Nov 2026 11:59:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:58:28Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T11:58:28Z" "architecture"="aarch64" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T11:58:28Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Wed, 18 Nov 2026 21:41:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:13 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 18 Nov 2026 21:41:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:41:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:57 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 21:52:57 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:52:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:52:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:52:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:52:57 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:53:01 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 21:53:01 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:53:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:53:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:53:06 GMT
USER gradle
# Wed, 18 Nov 2026 21:53:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:53:07 GMT
USER root
```

-	Layers:
	-	`sha256:6f85c5180a9a251e7d4c9d164a6aa67da866626553b8733b92ea6191f8d7f9f7`  
		Last Modified: Wed, 18 Nov 2026 16:46:54 GMT  
		Size: 33.1 MB (33105939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acf0ab2156b43634ad806003dc4d92153ef23b8e8777336a44fdb8b92bd19a3`  
		Last Modified: Wed, 18 Nov 2026 21:41:40 GMT  
		Size: 38.0 MB (37956256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c615b565b1c457e864091b1dae05977c012fb31239ffdc9d42935e34d73b14`  
		Last Modified: Wed, 18 Nov 2026 21:42:16 GMT  
		Size: 92.7 MB (92660981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2bee594efeb0fe4c2aafcf5e671c9304160d64be67795bc231ee79a150b5ef`  
		Last Modified: Wed, 18 Nov 2026 21:42:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3016fd65d8480b3dd1a6dab48aec095083742e52d90c09c460dfbad2cfdca124`  
		Last Modified: Wed, 18 Nov 2026 21:42:13 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee29acdb19e94249c63a4b6a0b16b1097e5e1b9cb91c080cddd2f5dfd4f1c46`  
		Last Modified: Wed, 18 Nov 2026 21:53:25 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126f0e02bd1a8f38f5975b357b125a51c76e157cde520bd50295515175702b11`  
		Last Modified: Wed, 18 Nov 2026 21:53:27 GMT  
		Size: 39.7 MB (39727944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787421e19ea8bbeb8009f6b3a3b4d7d1d03c9f9ad4dad7a2416d250be1d8210c`  
		Last Modified: Wed, 18 Nov 2026 21:53:29 GMT  
		Size: 134.8 MB (134820905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecb37a36aa7048c11eb9c37a363e8230fde4f9a545b0b71d36b3ff10ce45073`  
		Last Modified: Wed, 18 Nov 2026 21:53:25 GMT  
		Size: 29.3 KB (29345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:82638e723b5f3c7868193d12fa778311d47772a903027e36f2791fc867ea1b92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7072636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b190a2bd6d038bcc125f3da19fd5ffba5bdf12035b66bee6f34546b0da2c0`

```dockerfile
```

-	Layers:
	-	`sha256:1cfce2b1d5ef3e5a3daa5ba5ff59bf4de852a2bcfc6fbb42293aa263cf6f09e5`  
		Last Modified: Wed, 18 Nov 2026 21:53:25 GMT  
		Size: 7.0 MB (7048018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72b7fdc2eaade95e9ce88ecb6185103e189af033da1e939df900e4f45e5e86dc`  
		Last Modified: Wed, 18 Nov 2026 21:53:25 GMT  
		Size: 24.6 KB (24618 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:a29fa1b2b94d577c58bb5ee620f49eeec06be301c3e8711e8585131776a12f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.7 MB (347731276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:959245dac0bf3c3e837eaf89cbeeb43c20d20df62e179c2be48e27d8cd5d9bd3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:58:08 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:58:08 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 11:58:09 GMT
ENV container oci
# Wed, 18 Nov 2026 11:58:10 GMT
COPY dir:f517d67fa956d51b18256b59fc2404506d3032ddd73b8afb6ed6d22bc30fa036 in /      
# Wed, 18 Nov 2026 11:58:10 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:58:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:58:10 GMT
COPY dir:218b55dcbddf2e2c03f473fb1c2c3d42646b187ef2f63b0a13c96c631dde3b94 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:58:11 GMT
COPY dir:218b55dcbddf2e2c03f473fb1c2c3d42646b187ef2f63b0a13c96c631dde3b94 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:58:11 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:57:47Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T11:57:47Z" "architecture"="ppc64le" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T11:57:47Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:12:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:12:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 18 Nov 2026 22:21:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 22:21:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 22:21:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 22:21:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 22:21:35 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 22:42:26 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 22:42:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 22:42:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 22:42:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 22:42:26 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 22:42:47 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 22:42:47 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 22:42:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 22:42:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 22:42:52 GMT
USER gradle
# Wed, 18 Nov 2026 22:42:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 22:42:54 GMT
USER root
```

-	Layers:
	-	`sha256:f904918cf0313089a59a27bf5930acc4143b6ff5ecbcc1cff53fb5bcd94fda2a`  
		Last Modified: Wed, 18 Nov 2026 18:20:27 GMT  
		Size: 39.1 MB (39123752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d027351ac85c2f41ee3134488197fc84214b808c9fb864d377047a7f608964`  
		Last Modified: Wed, 18 Nov 2026 22:13:16 GMT  
		Size: 39.8 MB (39799461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46979b2dfe051f359e985f717ce54936144da9daa24bd9f9dd0488e5f329086d`  
		Last Modified: Wed, 18 Nov 2026 22:22:17 GMT  
		Size: 91.9 MB (91926007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e517af859262ee3560811d5090f5f69c9324e5cafe2dfcde4778d413271b5e0d`  
		Last Modified: Wed, 18 Nov 2026 22:22:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80d2c0826487eb3c23970041172ad4843eab977498dd6b2f26a4a9bfe3062c1`  
		Last Modified: Wed, 18 Nov 2026 22:22:15 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd39884b9763430dab5cacdf3094eb0a9f77cd8cbafbe2d183c1971f60a6f26b`  
		Last Modified: Wed, 18 Nov 2026 22:43:35 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7e651b6d26a618e2d90d1a588c47565db3c501ceac906b6c190bcdec1b6007`  
		Last Modified: Wed, 18 Nov 2026 22:43:37 GMT  
		Size: 42.1 MB (42056553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc276a3451801d9aad39126a9e5dd7f78304f45fcf38026b9bfe0e5c6fb3466`  
		Last Modified: Wed, 18 Nov 2026 22:43:39 GMT  
		Size: 134.8 MB (134820905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ac7a99166f05339bd72b3c41c512cdb3c52c1388cf95dd61b52492375fe8ee`  
		Last Modified: Wed, 18 Nov 2026 22:43:35 GMT  
		Size: 378.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b76507fa90f03d96c8660bac11eb6df1ee75b846df3d0c8d7aeb8624734536a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7047751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6d9b4a1d3292177720f4d89f20d2bb850f09f74c31b5f1d302fc187d21fed2`

```dockerfile
```

-	Layers:
	-	`sha256:5b32e92ee835cd09a467ab2d17c4839a4386db2b5b305096accbad07bf4b1aab`  
		Last Modified: Wed, 18 Nov 2026 22:43:35 GMT  
		Size: 7.0 MB (7023258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a8633caaa9201ca4345c46553bccfec015854afc30efe0635a45e6ea4bdac30`  
		Last Modified: Wed, 18 Nov 2026 22:43:35 GMT  
		Size: 24.5 KB (24493 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:b3f842503b78739b9f46a4b3178ef50d132cb41685b1f87bdbaf9b3e2ad160d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.6 MB (340606331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a85456d735399b542c63b28de8c9c597a47959e0e6aa9eba4f574ec5420e7973`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 12:11:36 GMT
ENV container oci
# Wed, 18 Nov 2026 12:11:37 GMT
COPY dir:d262d5a3b64544367945214badb86c52b69073d0cb80a94f7da73df30f084411 in /      
# Wed, 18 Nov 2026 12:11:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 12:11:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 12:11:38 GMT
COPY dir:8146232ae5a43b0aadadb9473c54a3076874f869cc5690ebdf3d0a26acb55468 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 12:11:38 GMT
COPY dir:8146232ae5a43b0aadadb9473c54a3076874f869cc5690ebdf3d0a26acb55468 in /root/buildinfo/      
# Wed, 18 Nov 2026 12:11:39 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T12:10:23Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T12:10:23Z" "architecture"="s390x" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T12:10:23Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Wed, 18 Nov 2026 22:50:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:50:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:50:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:50:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:50:24 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 18 Nov 2026 22:50:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 22:50:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 22:50:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 22:50:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 22:50:38 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 23:46:18 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 23:46:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 23:46:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 23:46:18 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 23:46:22 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 23:47:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 23:47:43 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 23:47:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 23:47:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 23:47:52 GMT
USER gradle
# Wed, 18 Nov 2026 23:47:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 23:47:55 GMT
USER root
```

-	Layers:
	-	`sha256:471e6d247ece94ad01a550c2a516a9c65a34f8d627869c818f11fced45fe1dcc`  
		Last Modified: Wed, 18 Nov 2026 18:20:18 GMT  
		Size: 34.8 MB (34835957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f38cc0efcca33666b6f54d0dc524b0f5897c40287c5f6e58b01bd5d4e4e9db`  
		Last Modified: Wed, 18 Nov 2026 22:51:25 GMT  
		Size: 38.4 MB (38406778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e39a71af0a3a0b95f8d43165e48ab6e22aa5902735bd96c6f80349e103240d20`  
		Last Modified: Wed, 18 Nov 2026 22:51:30 GMT  
		Size: 90.1 MB (90076805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ee80e51b6cdb805933af1a72de86c11e3c9ef2a84ea59c024c13032c0292b6`  
		Last Modified: Wed, 18 Nov 2026 22:51:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492b2e85a02fef209303e292312c5bcd368b06bfb003ab45a2cb71a72c529790`  
		Last Modified: Wed, 18 Nov 2026 22:51:28 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ca61a116eb12490daa562061db7338f689df93f7c432131d887d6df9cc9662`  
		Last Modified: Wed, 18 Nov 2026 23:49:08 GMT  
		Size: 1.6 KB (1592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794f2a343087f7543f39a20a7c5ef796c71a991ce555dc04d61a547ea83a05f1`  
		Last Modified: Wed, 18 Nov 2026 23:49:21 GMT  
		Size: 42.5 MB (42461277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439b14bced0939a8e68fd6f39950a1af566f8522569835c6fc75088dd5e21e0`  
		Last Modified: Wed, 18 Nov 2026 23:49:31 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5318a65b9a8d30a5fc19edb5c128f0e4718f4dbffbccc740a6ffdc3798afe1`  
		Last Modified: Wed, 18 Nov 2026 23:49:09 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:58eb65f6d8873b0584d3c760f61eff8e0f67e22ca1a3136678c159c22d5ddd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7038155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ec7615292a8402f3d8b73180e171edee61bf75e00677ca1b745bb5ceed455f`

```dockerfile
```

-	Layers:
	-	`sha256:157c881a28df988bfa9d5ce45c6bc7b1904975fea73c4e00ab4e135a03027900`  
		Last Modified: Wed, 18 Nov 2026 23:49:11 GMT  
		Size: 7.0 MB (7013737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f80942ad3d4e49933477178f5ccf56c81fe39d84db8b60b5119687c7b4cfae7`  
		Last Modified: Wed, 18 Nov 2026 23:49:08 GMT  
		Size: 24.4 KB (24418 bytes)  
		MIME: application/vnd.in-toto+json
