## `gradle:9-jdk17-ubi10`

```console
$ docker pull gradle@sha256:2582a71c58b56de3a09e7ef90896420b9b4c91aaccf32ed80a9424ca85f3488f
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

### `gradle:9-jdk17-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:8ecf23368e05ba958fa0fc092e071260257628f8b4d5afe9f950d47121ed6890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.1 MB (399129218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e79c8df1de7d111c195ceb48af6ccf0a15cae7efb7bd6633bc5a100dedbfcf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:26:51 GMT
ENV container oci
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:b8ce0462b23033a189e5c4dd0f5c6ccb96b3cec90716c47359623a67ff89ff8a in /      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:26:52 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:26:32Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:26:32Z" "architecture"="x86_64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:26:32Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:28:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:12 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 18:28:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:19 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:26 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:26 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:30 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:30 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:01:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:01:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:32 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:33 GMT
USER root
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ab6e0ec6d4f455e906209e3296971643e8d0f311e5943794d7ddbfbd9f4379`  
		Last Modified: Wed, 22 Jul 2026 18:28:37 GMT  
		Size: 37.8 MB (37771539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81fdd9618828d4858b8505cf17775f157eb1be4c14a54caa2bb1c584c1e18628`  
		Last Modified: Wed, 22 Jul 2026 18:28:39 GMT  
		Size: 145.9 MB (145915495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c593ceec9882dd3e2514b5c62843d79ca155bb49f6f7a6d20e84d1411354130f`  
		Last Modified: Wed, 22 Jul 2026 18:28:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2dc17bbe9c077812ecb6b14cd3b3d4bad1b5bd1a0ae331b8f70f1167f6dc93`  
		Last Modified: Wed, 22 Jul 2026 18:28:35 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f61081bef95eb457f63fd07a68335bee02fbad9d3205dad13c0f2557ad079a`  
		Last Modified: Wed, 22 Jul 2026 19:01:51 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351b3e18f3d5fe95c220ca3356d53ea768a278b06d5d1ebceebf7044d927249a`  
		Last Modified: Wed, 22 Jul 2026 19:01:53 GMT  
		Size: 39.9 MB (39872759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7ba43f128fe9cf3bbae99e91d1c1ca6a6ec1f75e3e07d188c3bae215e9e648`  
		Last Modified: Wed, 22 Jul 2026 19:01:55 GMT  
		Size: 140.6 MB (140596027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effddd0fc7ecc358036f644574644d0b7afab701755688bd211fbdee6410da1f`  
		Last Modified: Wed, 22 Jul 2026 19:01:51 GMT  
		Size: 25.6 KB (25619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:82c6c5898e31bbe3d5b6ad829e4636c3743d6b28a3f8cb59dc620ebee8dd84c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7113083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ee351a554db9e2eab9f982914741f5df6884a26c4f5ccb7c6015a039fd616f`

```dockerfile
```

-	Layers:
	-	`sha256:e02a6795f1f84f47d70034ce08a8f11223a01e6d49d836ae852051f856113301`  
		Last Modified: Wed, 22 Jul 2026 19:01:52 GMT  
		Size: 7.1 MB (7088628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b305def1e2818374577cf33e131716933ee76733d6f9eb41564868b43eb1518e`  
		Last Modified: Wed, 22 Jul 2026 19:01:51 GMT  
		Size: 24.5 KB (24455 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:598491be799a04e3901f6ae3a27849b05f1ec9830c1c55aed5880a892bfe52ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395449608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859de6203ea3272a830aadebd8642a450b55cce0c4bdd4b39d51f8dfccdb81f9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:30:05 GMT
ENV container oci
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:58c4efe09946efbac1eda4e0aca465b8b6cdac53b3c03d17070e9e7933760782 in /      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:30:06 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:30:07 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:29:44Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:29:44Z" "architecture"="aarch64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:29:44Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:53:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:53:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:53:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:53:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:53:04 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 18:53:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:11 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:29 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:29 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:29 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:33 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:03:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:03:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:35 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:36 GMT
USER root
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdf648d12fa495115691e07affdd255a7709468af46af69eff52fb621a2c551`  
		Last Modified: Wed, 22 Jul 2026 18:53:31 GMT  
		Size: 37.7 MB (37713628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae1e0d13dd1ed9e8a02a5eae4040f32a9e715c30d9c5cc6ff0cd32ac2d12dca`  
		Last Modified: Wed, 22 Jul 2026 18:53:33 GMT  
		Size: 144.7 MB (144734873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976799c834ef7eb7ace1157eba9e55501e719216aafc4d527ecfb98e76b60b34`  
		Last Modified: Wed, 22 Jul 2026 18:53:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be632b6babd8ff49d07afdc5c590eb8b0531a31ea0e917ca932cf62193a3b04`  
		Last Modified: Wed, 22 Jul 2026 18:53:29 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2095960ea7dfc99a5d5d4febfd1843a4c12bd467e9fa1cd43b8c9f74fcef6433`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ae8cee53f89bc9d71aa2e59ce3ac0e98a2e71dbf8027c9adea403fcd3cc2d9`  
		Last Modified: Wed, 22 Jul 2026 19:03:57 GMT  
		Size: 39.3 MB (39318288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc249db38a82036c71247f460b5dc426275585efe34cbd93b456ad268671b101`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 140.6 MB (140596029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e87c63211a17ae600cded42dfc04dcd0e2a061312ac4f82e139a0dce2ada60b`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:eda2c8791ec64bbabbf0980ae5df66b15bbd5ba84706654171d744fbf107f3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7111536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43ec6c5f9d466a4215a7336357768668afcbe89c25387a21a7e7223a241bc01`

```dockerfile
```

-	Layers:
	-	`sha256:d26916f4e8fe863334a0c72e76de2dc5958c85a87162d86392ea09bf9a3aeebc`  
		Last Modified: Wed, 22 Jul 2026 19:03:55 GMT  
		Size: 7.1 MB (7086884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa9fb8dfa0685f64393586ccd588a7fbf76f3a29ea94439705c225eae66413aa`  
		Last Modified: Wed, 22 Jul 2026 19:03:54 GMT  
		Size: 24.7 KB (24652 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:60d91ceb6440363659306f67ec226aa1db8ec30bc4bb8bf8d8ee0fcbe35a7821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.6 MB (406555351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f4be8fd83bfe838d402afd4b1df3062225d39f158af5469e344553f53e54f9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:34:53 GMT
ENV container oci
# Tue, 21 Jul 2026 21:34:55 GMT
COPY dir:2be7a12ce5be4d4799407145cf668d5c439ba83ced58b5070bfcdd5f320f8500 in /      
# Tue, 21 Jul 2026 21:34:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:34:55 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:34:56 GMT
COPY dir:5cd3487f87b37ce48164c2bf021513de7ca3b9cca1b06b6185c3eb1a7d71e341 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:34:56 GMT
COPY dir:5cd3487f87b37ce48164c2bf021513de7ca3b9cca1b06b6185c3eb1a7d71e341 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:34:57 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:34:01Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:34:01Z" "architecture"="ppc64le" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:34:01Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:44:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:44:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 18:48:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:48:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:48:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:48:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:48:25 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:30:17 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 21:30:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 21:30:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 21:30:17 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 21:30:17 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 21:30:32 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 21:30:32 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 21:30:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 21:30:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 21:30:36 GMT
USER gradle
# Wed, 22 Jul 2026 21:30:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 21:30:39 GMT
USER root
```

-	Layers:
	-	`sha256:a7dff45cdbd542ff0d1554cac7bc8766b00b4f2cac3b6de5ffb196a763e728d0`  
		Last Modified: Wed, 22 Jul 2026 00:26:15 GMT  
		Size: 39.0 MB (38992813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea677b487eddcc2724d84a06466dbe287bd24402018e31b7d306276209358525`  
		Last Modified: Wed, 22 Jul 2026 18:45:02 GMT  
		Size: 39.5 MB (39528607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff3ce4d67af7f707fc7ab7d0a6bc7fd69f4679e36f9d149ddfd7babd89d48c7`  
		Last Modified: Wed, 22 Jul 2026 18:49:03 GMT  
		Size: 145.8 MB (145788704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc839782a97ec068fdedbd861acf1ce48a70cb2b0ddbf8ecc4612a48eca7a93`  
		Last Modified: Wed, 22 Jul 2026 18:48:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64309934708375a12ed62238ad9377d2e8b2dc0eaf9e0f9d2267d8c44f22162f`  
		Last Modified: Wed, 22 Jul 2026 18:48:59 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e4954713c08ca9c81483f7fa20ee505e8273204dc4f6573c7a799d647ecf33`  
		Last Modified: Wed, 22 Jul 2026 21:31:20 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f539e78883acdaffc555ad3b880ce13d2b61a6ab4e45e4da1ec393296bac8fc`  
		Last Modified: Wed, 22 Jul 2026 21:31:22 GMT  
		Size: 41.6 MB (41644804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb19ce67838360748a4f950588e0a7ccd8618b2910e0ed70ead0258a082b1468`  
		Last Modified: Wed, 22 Jul 2026 21:31:25 GMT  
		Size: 140.6 MB (140596012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba643bbc79db7b850cacb18b4e1b67f29dd2fa5047f6028c23543889c2c1a3b`  
		Last Modified: Wed, 22 Jul 2026 21:31:21 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:a0444ad8349a5efa46240e004356fd8047729ee5ac082e595c02bc5ca686e5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7104572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692d7f87355d3ce328d2927244962d3ce89e8d9b8b5b84bdf8da15cbf7ecd719`

```dockerfile
```

-	Layers:
	-	`sha256:f224a6884ea21d26927a61743587a15836612202f9a7e576f2b702636a407c6b`  
		Last Modified: Wed, 22 Jul 2026 21:31:21 GMT  
		Size: 7.1 MB (7080046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65992e8b5cac35508432a51cc00a5dc214614c8f651ae2298d6017e12181602a`  
		Last Modified: Wed, 22 Jul 2026 21:31:20 GMT  
		Size: 24.5 KB (24526 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:5100d88207778efd2bc51aa165cd5dcae2429aaf224fd6cf5268936de5244870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391414323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a953a4d91f6441d1151e1e675d8bb719f04cee725bb71d80f170c678065f8549`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:51:09 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:51:09 GMT
ENV container oci
# Tue, 21 Jul 2026 21:51:09 GMT
COPY dir:9eebc05d3ad25e1005067d385daba94753dd3bfa6128dd08f610b26253fb6350 in /      
# Tue, 21 Jul 2026 21:51:09 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:51:09 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:51:09 GMT
COPY dir:13be6a4129a9a53b67e6e64ca1941131443609662eccf183d87e0edf74a5d332 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:51:09 GMT
COPY dir:13be6a4129a9a53b67e6e64ca1941131443609662eccf183d87e0edf74a5d332 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:51:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:50:12Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:50:12Z" "architecture"="s390x" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:50:12Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 19:56:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 19:56:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:56:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 19:56:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:56:33 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 22 Jul 2026 19:57:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 19:57:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 19:57:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:57:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:57:23 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 20:09:04 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 20:09:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 20:09:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 20:09:04 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 20:09:04 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 20:09:07 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 20:09:07 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 20:09:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 20:09:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 20:09:11 GMT
USER gradle
# Wed, 22 Jul 2026 20:09:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 20:09:12 GMT
USER root
```

-	Layers:
	-	`sha256:82442003a9e8ee823cd2cb391091b2b043ed73db6df06f649c004890be849039`  
		Last Modified: Wed, 22 Jul 2026 00:26:06 GMT  
		Size: 34.8 MB (34752287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00caefeda422c90a1621a7afcbd01da717550e5ffcda98aac817f034605390ea`  
		Last Modified: Wed, 22 Jul 2026 19:56:57 GMT  
		Size: 38.2 MB (38152354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d4827ee7e229ce3fbc6eba9d202a75619500720c8f920b14c9501c59c0e2b5`  
		Last Modified: Wed, 22 Jul 2026 19:57:52 GMT  
		Size: 135.9 MB (135912327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2a4544246140b4d757a3c0e540d141e73ce8e8307f59cd020ea0b9c01f1863`  
		Last Modified: Wed, 22 Jul 2026 19:57:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59fcf11bfa31c4ccb992e5690579e14377af4f455b04d9d1fe885ed7e98d83a4`  
		Last Modified: Wed, 22 Jul 2026 19:57:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667a6de0b04d8882a1ff3ce877b3387bb11c722a0ac1ba8519ff371fc3958a7f`  
		Last Modified: Wed, 22 Jul 2026 20:09:42 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa5bbe32c96c598fff873bf080aa35bdd7a443e59cc271c77c26a254cab13e8`  
		Last Modified: Wed, 22 Jul 2026 20:09:43 GMT  
		Size: 42.0 MB (41996918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3359c8df10a0a4d05d2a13faa5f54604e503f8df2f37213f1efa7fe0d94378a4`  
		Last Modified: Wed, 22 Jul 2026 20:09:45 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7dd758e42eb17b8264abe4cb19b2780d31cceb4b4737dd753554610689551d`  
		Last Modified: Wed, 22 Jul 2026 20:09:42 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:73594743481b858b7cd9c65f1b98ce8a21fe98ee9c2d74ef3f182455fef493a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7093728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de02749b0586b5c0c4d53c2cb92a8ff38701c0b3c90026c24886a299cd89c55`

```dockerfile
```

-	Layers:
	-	`sha256:991c95627552a27bafd82db616bc0e5aa958d12d9eab5ca8754ecc7421420e21`  
		Last Modified: Wed, 22 Jul 2026 20:09:42 GMT  
		Size: 7.1 MB (7069275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b39c95f9651b185628511c1b883984a6732d842f2840def317ebc707dc850a0`  
		Last Modified: Wed, 22 Jul 2026 20:09:42 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json
